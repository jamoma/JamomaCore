/* 
 * jcom.dbapBformat
 * External for Jamoma: DBAP - Distance Based Amplitude Panning
 * By Trond Lossius, Copyright 2011
 * 
 * License: This code is licensed under the terms of the "New BSD License"
 * http://creativecommons.org/licenses/BSD/
 */

#include "hull2D.h"

// This seems to be the current restrictions of matrix~
const long MAX_NUM_SOURCES = 250;
const long MAX_NUM_DESTINATIONS = 500;

const long MAX_NUM_WEIGHTED_SOURCES = 64;
const long MAX_NUM_WEIGHTED_DESTINATIONS = 32;

const long MAX_SIZE_VIEW_X = 80;
const long MAX_SIZE_VIEW_Y = 60;

t_symbol		*psRollOff,
				*psDimensions,
				*psNumberOfSources,
				*psNumberOfDestinations,
				*psDestinationPosition,
				*psSourcePosition,
				*psSourceGain,
				*psSourceMute,
				*psSourceBlur;

/** Data structure for storing a 1,2 or 3 dimensional space data */
typedef struct _xyz{
	float		x;												///< x position
	float		y;												///< y position
	float		z;												///< z position
} t_xyz;														///< Cartesian coordinate of a point

/** Data structure for 1 dimensional convex hull */
typedef struct _hullInOneDimension{
	float		min;											///< minimum x value
	float		max;											///< maximum x value
} t_hullInOneDimension;											///< Convex hull in 1 dimension

/** Data structure for 2 dimensional convex hull */
typedef struct _hullInTwoDimensions{
	long		num_dst;										///< number dst in the convex hull
	long		destinationIndex[MAX_NUM_DESTINATIONS];			///< index of dst in destinationPosition[]
	float		dst2next[MAX_NUM_DESTINATIONS];					///< squared length of each border of the hull
} t_hullInTwoDimensions;										///< Convex hull in 1 dimension
	
typedef struct _dbapBformat{									///< Data structure for this object
	// Max stuff
	t_object	ob;												///< Must always be the first field; used by Max
	void		*outlet[2];										////< Pointer to outlets. Need one for each outlet

	// Sources
	long		attrNumberOfSources;							///< number of active sources
	t_xyz		sourcePosition[MAX_NUM_SOURCES];				///< Positions of the virtual source
	float		blur[MAX_NUM_SOURCES];							///< Spatial bluriness ratio in percents for each source
	float		sourceGain[MAX_NUM_SOURCES];					///< Linear gain for each source, not yet used
	float		sourceWeight[MAX_NUM_WEIGHTED_SOURCES][MAX_NUM_WEIGHTED_DESTINATIONS];///< Weight for each source for each destination 
	float		sourceNotMuted[MAX_NUM_SOURCES];				///< Mute and unmute sources
		
	// Destinations
	long		attrNumberOfDestinations;						///< number of active destinations
	t_xyz		destinationPosition[MAX_NUM_DESTINATIONS];		///< Array of speaker positions
	t_xyz		meanDestinationPosition;						///< Mean position of the field of destination points
	
	// Globals
	float		masterGain;										///< Mater gain for all of the algorithm
	float		variance;										///< Bias-corrected variance of distance from destination points to mean destination point	
	long		attrDimensions;									///< Number of dimensions of the speaker and source system	
	float		attrRollOff;									///< Set rolloff with distance in dB
	float		a;												///< Constant: Exponent controlling amplitude dependance on distance. Depends on attrRollOff
	
	// Convex hull
	bool		hullActive;										///< On/off calculation of distances to hull
	t_hullInOneDimension	hullInOneDimension;					///< Convex hull in 1 dimension
	t_hullInTwoDimensions	hullInTwoDimensions;				///< Convex hull in 2 dimensions
	
	// Ambisonics decoding
	float		attrOrderWeightOmni;							///< Weight for the zero order (omni) component of the B-format signal
	float		attrOrderWeightFirst;							///< Weight for the first order component of the B-format signal
	
	// Viewing DBAP properties as a Jitter matrix
	unsigned char viewMatrix[MAX_SIZE_VIEW_X][MAX_SIZE_VIEW_Y]; ///< handle to the hitmap view matrix
	long		attrViewMatrixSize[2];							///< size of the hitmap view window (pixel,pixel)
	t_xyz		attrViewMatrixStart;							///< coordinate of the start point of the view
	t_xyz		attrViewMatrixEnd;								///< coordinate of the end point of the view
	bool		attrViewMatrixUpdate;							///< IO the view updating
	t_atom		lastView[2];									///< memorize the last view [dst src]
	} t_dbapBformat;

// Prototypes for methods: need a method for each incoming message

void *dbapBformatNew(t_symbol *msg, long argc, t_atom *argv);
t_max_err dbapBformat_setstep(t_dbapBformat *x, void *attr, long argc, t_atom *argv);

/** Set spatial blur for nth source. */
void dbapBformatBlur(t_dbapBformat *x, t_symbol *msg, long argc, t_atom *argv);

/** Set spatial blur for all sources. */
void dbapBformatBlurAll(t_dbapBformat *x, double f);

/** Set the position of the nth virtual source. */
void dbapBformatSource(t_dbapBformat *x, void *msg, long argc, t_atom *argv);

/** Set the position of the nth speaker. */
void dbapBformatDestination(t_dbapBformat *x, void *msg, long argc, t_atom *argv);

/** Set input gain for nth source. */
void dbapBformatSourceGain(t_dbapBformat *x, void *msg, long argc, t_atom *argv);

/** Set master gain for all values passed from the object to matrix~. */
void dbapBformatMasterGain(t_dbapBformat *x, double f);

/** Set weight for nth source by passing a list to balance each destination. */
void dbapBformatSourceWeight(t_dbapBformat *x, t_symbol *msg, long argc, t_atom *argv);

/** Mute and unmute sources */
void dbapBformatSourceMute(t_dbapBformat *x, void *msg, long argc, t_atom *argv);

/** Turn on/off the calculation of distance to hull */
void dbapBformatHull(t_dbapBformat *x, long f);

/** Display a hitmap view of the dbapBformat for a destination and a source weight config or all (on the info outlet ?) */
void dbapBformatView(t_dbapBformat *x, void *msg, long argc, t_atom *argv);

/** Turn on/off the auto view updating */
void dbapBformatViewUpdate(t_dbapBformat *x, long io);

/** Set the size of hitmap view window */
void dbapBformatViewMatrixSize(t_dbapBformat *x, long sizeX, long sizeY);

/** Set the start point of the hitmap view window */
void dbapBformatViewStart(t_dbapBformat *x, void *msg, long argc, t_atom *argv);

/** Set the end point of the hitmap view window */
void dbapBformatViewEnd(t_dbapBformat *x, void *msg, long argc, t_atom *argv);

/** Get info on destination setup ++ */
void dbapBformatInfo(t_dbapBformat *x);

/** Display assist strings while patching. */
void dbapBformatAssist(t_dbapBformat *x, void *b, long msg, long arg, char *dst);

/** Set number of dimensions of the system. */
t_max_err dbapBformatAttrSetDimensions(t_dbapBformat *x, void *attr, long argc, t_atom *argv);

/** Set the number of sources of the system. */
t_max_err dbapBformatAttrSetNumberOfSources(t_dbapBformat *x, void *attr, long argc, t_atom *argv);

/** Set the number of destinations of the system. */
t_max_err dbapBformatAttrSetNumberOfDestinations(t_dbapBformat *x, void *attr, long argc, t_atom *argv);

/** Set spatial blur coefficient */
t_max_err dbapBformatAttrSetBlur(t_dbapBformat *x, void *attr, long argc, t_atom *argv);

/** Set rolloff in dB */
t_max_err dbapBformatAttrSetRollOff(t_dbapBformat *x, void *attr, long argc, t_atom *argv);

/** Set zero order (omni) weight for B-format decoding */
t_max_err dbabBformatAttrSetOmniOrder(t_dbapBformat *x, void *attr, long argc, t_atom *argv);

/** Set first order weight for B-format decoding */
t_max_err dbapBformatAttrSetFirstOrder(t_dbapBformat *x, void *attr, long argc, t_atom *argv);

/** Calculation of exponent coefficient based on rolloff */
void dbapBformatCalculateA(t_dbapBformat *x);

/** General method for calculation of matrix coefficient for nth source. */
void dbapBformatCalculate(t_dbapBformat *x, long n);

/** Calculate matrix coefficients for nth source: 1D space. */
void dbapBformatCalculate1D(t_dbapBformat *x, long n);

/** Calculate matrix coefficients for nth source: 2D space. */
void dbapBformatCalculate2D(t_dbapBformat *x, long n);

/** Calculate matrix coefficients for nth source: 3D space. */
void dbapBformatCalculate3D(t_dbapBformat *x, long n);

/** Calculate mean position of the destination points. */
void dbapBformatCalculateMeanDestinationPosition(t_dbapBformat *x);

/** Calculate bias-corrected variance of distance from destination points to mean destination point. */
void dbapBformatCalculateVariance(t_dbapBformat *x);

/** Calculate convex hull of space spanned by destination points. */ 
void dbapBformatCalculateHull(t_dbapBformat *x, long n);

/** Calculate convex hull of space spanned by destination points: 1D */
void dbapBformatCalculateHullInOneDimensionD(t_dbapBformat *x, long n);

/** Calculate convex hull of space spanned by destination points: 2D */
void dbapBformatCalculateHullInTwoDimensionsD(t_dbapBformat *x, long n);

void dbapBformatHullInTwoDimensions_postpoint(t_dbapBformat *x, t_H2D h2); // debug

/** Calculate convex hull of space spanned by destination points: 3D */
void dbapBformatCalculateHull3D(t_dbapBformat *x, long n);

/** Calculate the view (2D-matrix) */
void dbapBformatCalculateView(t_dbapBformat *x, long dst, long src);

/** If the attrViewMatrixUpdate is true : calculate the last view */
void dbapBformatUpdateView(t_dbapBformat *x);

/** Calculate the view (2D-matrix) : 1D */
void dbapBformatCalculateView1D(t_dbapBformat *x, long dst, long src);

/** Calculate the view (2D-matrix) : 2D */
void dbapBformatCalculateView2D(t_dbapBformat *x, long dst, long src);

/** Calculate the view (2D-matrix) : 3D */
void dbapBformatCalculateView3D(t_dbapBformat *x, long dst, long src);

/** Output the calculated view */
void dbapBformatOutputView(t_dbapBformat *x);