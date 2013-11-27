/* 
 * Jamoma N-Dimensional Matrix Data Class
 * Copyright © 2011, Timothy Place
 * 
 * License: This code is licensed under the terms of the "New BSD License"
 * http://creativecommons.org/licenses/BSD/
 */

#include "TTMatrix.h"
#include "TTUnitTest.h"
//#include "TTLimits.h"


TTErr TTMatrix::test(TTValue& returnedTestInfo)
{
	int	errorCount = 0;
	int testAssertionCount = 0;
	

	
    {
        // an attempt to re-write without using TTObjectBaseInstantiate
        TTTestLog("\n");
		TTTestLog("Testing new TTMatrix Instantiation...");
        
        TTMatrixPtr testingNewInstantiation = NULL;
        
        try {
            
            // first instantiate the matrix as a TTObject
            testingNewInstantiation = new TTMatrix(kTTSymEmpty);
            // second point the TTMatrixPtr at it
            //testingNewInstantiation = (TTMatrixPtr)(TTPtr(willThisWork));
            
            TTTestLog("matrix instantiates successfully");
            
            TTTestLog("Setting to a 1D, float64, matrix with a length of 16 for complex numbers (2 elements per value)");
            testingNewInstantiation->setAttributeValue("dimensions", 16);
            testingNewInstantiation->setAttributeValue("type", "float64");
            testingNewInstantiation->setAttributeValue("elementCount", 2);
            TTTestLog("If you see this message, it probably worked.");
            
        } catch (...) {
            TTTestLog("matrix did NOT instantiate");
            return kTTErrInstantiateFailed;
        }
        
        
        
    }
    
	
	{


		TTTestLog("\n");
		TTTestLog("Testing TTMatrix Basics...");
		
		TTErr err;
		
        // instantiate a matrix for testing
        TTMatrixPtr matrix = NULL;
		try {
            matrix = new TTMatrix(kTTSymEmpty);
            TTTestLog("TTMatrix matrix instantiates successfully");
            
        } catch (...) {
            TTTestLog("TTMatrix matrix did NOT instantiate");
            return kTTErrInstantiateFailed;
        }
		
		// a clear series of tests to ensure type switching via TTDataInfo::matchSymbolToDataType() method works
		TTTestAssertion("default datatype is uint8", 
						matrix->getTypeAsDataType() == 4, 
						testAssertionCount,
						errorCount);
		matrix->setAttributeValue("type", "float32");
		TTTestAssertion("changed datatype to float32", 
						matrix->getTypeAsDataType() == 1, 
						testAssertionCount,
						errorCount);
		matrix->setAttributeValue("type", "float64");
		TTTestAssertion("changed datatype to float64", 
						matrix->getTypeAsDataType() == 2, 
						testAssertionCount,
						errorCount);
		matrix->setAttributeValue("type", "int8");
		TTTestAssertion("changed datatype to int8", 
						matrix->getTypeAsDataType() == 3, 
						testAssertionCount,
						errorCount);
		matrix->setAttributeValue("type", "uint8");
		TTTestAssertion("changed datatype to uint8", 
						matrix->getTypeAsDataType() == 4, 
						testAssertionCount,
						errorCount);
		matrix->setAttributeValue("type", "int16");
		TTTestAssertion("changed datatype to int16", 
						matrix->getTypeAsDataType() == 5, 
						testAssertionCount,
						errorCount);
		matrix->setAttributeValue("type", "uint16");
		TTTestAssertion("changed datatype to uint16", 
						matrix->getTypeAsDataType() == 6, 
						testAssertionCount,
						errorCount);
		matrix->setAttributeValue("type", "int32");
		TTTestAssertion("changed datatype to int32", 
						matrix->getTypeAsDataType() == 7, 
						testAssertionCount,
						errorCount);
		matrix->setAttributeValue("type", "uint32");
		TTTestAssertion("changed datatype to uint32", 
						matrix->getTypeAsDataType() == 8, 
						testAssertionCount,
						errorCount);
		matrix->setAttributeValue("type", "int64");
		TTTestAssertion("changed datatype to int64", 
						matrix->getTypeAsDataType() == 9, 
						testAssertionCount,
						errorCount);
		matrix->setAttributeValue("type", "uint64");
		TTTestAssertion("changed datatype to uint64", 
						matrix->getTypeAsDataType() == 10, 
						testAssertionCount,
						errorCount);
		
		
		TTTestLog("Setting to a 1D, float64, matrix with a length of 16 for complex numbers (2 elements per value)");
		matrix->setAttributeValue("dimensions", 16);
		matrix->setAttributeValue("type", "float64");
		matrix->setAttributeValue("elementCount", 2);
    
		TTTestAssertion("correct amount of data storage calculated", 
						matrix->mDataSize == sizeof(TTFloat64) * 16 * 2, 
						testAssertionCount,
						errorCount);
		TTTestAssertion("correct byte-stride between values calculated", 
						matrix->mComponentStride == sizeof(TTFloat64) * 2, 
						testAssertionCount,
						errorCount);
		
        // Test the fill message with 2-item sized TTValue
        TTValue fv = 6.26;
        fv.append(19.99);
        TTValue fr;
        matrix->sendMessage("fill", fv, fr);
        
        int fillTestCount = 0;
		for (unsigned int i=0; i < matrix->mDataSize; i += matrix->mComponentStride) {
			if (*((TTFloat64*)(matrix->mData+i)) != 6.26)
				fillTestCount++;
            if (*((TTFloat64*)(matrix->mData+i+matrix->mTypeSizeInBytes)) != 19.99)
				fillTestCount++;
		}
        
        TTTestAssertion("fill message correctly sets all elements to proper values",
						fillTestCount == 0,
						testAssertionCount,
						errorCount);
		
		// Test the clear message
		// first fill with arbitrary values
		for (unsigned int i=0; i < matrix->mDataSize; i += matrix->mComponentStride) {
			*((TTFloat64*)(matrix->mData+i)) = i*0.1;							// real
			*((TTFloat64*)(matrix->mData+i+matrix->mTypeSizeInBytes)) = i*0.2;	// imaginary
		}
		// For debugging, post the contents
		//for (uint i=0; i < matrix->mDataSize; i += matrix->mValueStride) {
		//	cout << "[" << *((TTFloat64*)(matrix->mData+i)) << "+";
		//	cout <<        *((TTFloat64*)(matrix->mData+i+matrix->mTypeSizeInBytes)) << "i] ";
		//}
		//cout << endl;
		
		matrix->sendMessage(kTTSym_clear);
		int count = 0;
		for (unsigned int i=0; i < matrix->mDataSize; i += matrix->mTypeSizeInBytes) {
			if (*((TTFloat64*)(matrix->mData+i)) != 0.0)
				count++;
		}
		TTTestAssertion("clear message correctly zeroes all elements of all values", 
						count == 0, 
						testAssertionCount,
						errorCount);

		TTValue v(0, 1);// specify the index and real, but forgot the imaginary
		TTValue r;
		err = matrix->sendMessage("set", v, r);
		TTTestAssertion("set message -- error returned when not enough data provided to completely set value", 
						err != 0, 
						testAssertionCount,
						errorCount);
		
		// the following use of set() does not work because it will interpret first two values as coordinates
		// that is the source of FAIL that the test produces
		v.resize(4);
		v[0] = 15;	// index x
		v[1] = 0;	// index y
		v[2] = 3.14;	// real (no imaginary)
		v[3] = -2;	// real (no imaginary)
		err = matrix->sendMessage("set", v, r);
		TTTestAssertion("set message -- enough data provided to completely set value", 
						err == kTTErrNone, 
						testAssertionCount,
						errorCount);
		//TTTestLog("Expected a value of %i, but returned value was %i", kTTErrNone, err);
		v[0] = 10;	// index y
		v[2] = 4;	// real
		v[3] = 1.2;	// imaginary
		err = matrix->sendMessage("set", v, r);
		TTTestAssertion("set message -- enough data provided to completely set value", 
						err == kTTErrNone, 
						testAssertionCount,
						errorCount);
		//TTTestLog("Expected a value of %i, but returned value was %i", kTTErrNone, err);
		TTComplex z(14, 0.92);
		matrix->set2d(0, 9, z);
		
		/*
		cout << "		";
		for (unsigned int i=0; i < matrix->mDataSize; i += matrix->mComponentStride) {
			cout << "[" << *((TTFloat64*)(matrix->mData+i));
			TTFloat64 imag = *((TTFloat64*)(matrix->mData+i+matrix->mTypeSizeInBytes));
			if (imag >= 0.0)
				cout << "+";
			cout <<        *((TTFloat64*)(matrix->mData+i+matrix->mTypeSizeInBytes)) << "i] ";
		}
		cout << endl;
		*/
		
		// TODO: would be nice to have a method to compare two matrices!
		int index = 0;
		for (unsigned int i=0; i < matrix->mDataSize; i += matrix->mComponentStride) {
			if (index == 9) {
				if (!TTTestFloatEquivalence(*((TTFloat64*)(matrix->mData+i)), 14.0))
					count++;
				if (!TTTestFloatEquivalence(*((TTFloat64*)(matrix->mData+i+matrix->mTypeSizeInBytes)), 0.92))
					count++;
			}
			else if (index == 10) {
				if (!TTTestFloatEquivalence(*((TTFloat64*)(matrix->mData+i)), 4.0))
					count++;
				if (!TTTestFloatEquivalence(*((TTFloat64*)(matrix->mData+i+matrix->mTypeSizeInBytes)), 1.2))
					count++;
			}
			else if (index == 15) {
				matrix->get2d(0, 15, z);
				
				if (!TTTestFloatEquivalence(real(z), 3.14))
					count++;
				if (!TTTestFloatEquivalence(imag(z), -2))
					count++;
			}
			else {
				if (*((TTFloat64*)(matrix->mData+i)) != 0.0)
					count++;
				if (*((TTFloat64*)(matrix->mData+i+matrix->mTypeSizeInBytes)) != 0.0)
					count++;
			}
			//TTTestLog("count: %ld   @  %ld", count, i);
			index++;
		}
		TTTestAssertion("set message correctly sets compound values in 1D matrix (rowCount = 0)", 
						count == 0, 
						testAssertionCount,
						errorCount);
		
		
		
		
		TTTestLog("");
		TTTestLog("Setting to a 2D image matrix (8-bit int, 4 elements per value for rgba color) with a size of 160 x 120");
		TTValue dims(160, 120);
		matrix->setAttributeValue("dimensions", dims);
		matrix->setAttributeValue("type", "uint8");
		matrix->setAttributeValue("elementCount", 4);
		
		TTTestAssertion("correct amount of data storage calculated", 
						matrix->mDataSize == sizeof(TTUInt8) * 160 * 120 * 4, 
						testAssertionCount,
						errorCount);
		TTTestAssertion("correct byte-stride between values calculated", 
						matrix->mComponentStride == sizeof(TTUInt8) * 4, 
						testAssertionCount,
						errorCount);
		
		// test values with makeInBounds functions
		TTInt32 i_prebounds = -3;
		TTInt32 j_prebounds = 123;
        TTInt32 i = i_prebounds;
        TTInt32 j = j_prebounds;
        
		TTTestAssertion("reports row ID is out of bounds", 
						matrix->makeRowIDInBounds(i) == 1,
						testAssertionCount,
						errorCount);
        TTTestAssertion("< 0 i value was wrapped by out of bounds operation",
						i == 157, // 160 should be max, so it will be 160 - 3
						testAssertionCount,
						errorCount);
		TTTestAssertion("reports column ID is out of bounds", 
						matrix->makeColumnIDInBounds(j) == 1,
						testAssertionCount,
						errorCount);
		TTTestAssertion("> max j value was wrapped by out of bounds operation",
						j == 3, // 120 should be max, so it will be 123 - 120
						testAssertionCount,
						errorCount);
		
		// reset and try clipping function
		i = i_prebounds; 
		j = j_prebounds;
		matrix->makeRowIDInBounds(i,outOfBoundsClip); 
		matrix->makeColumnIDInBounds(j,outOfBoundsClip); 
		TTTestAssertion("< 0 i value was clipped by out of bounds operation",
						i == 0,
						testAssertionCount,
						errorCount);
		TTTestAssertion("> max j value was clipped by out of bounds operation",
						j == 119,
						testAssertionCount,
						errorCount);
						
		// reset and try folding function
		i = i_prebounds; 
		j = j_prebounds;
		matrix->makeRowIDInBounds(i,outOfBoundsFold); 
		matrix->makeColumnIDInBounds(j,outOfBoundsFold); 
		TTTestAssertion("< 0 i value was folded by out of bounds operation",
						i == 3, // 0 is min, so it will be 0 - (-3)
						testAssertionCount,
						errorCount);
		TTTestAssertion("> max j value was folded by out of bounds operation",
						j == 117, // 120 should be max, so it will be 120 - (123 - 120)
						testAssertionCount,
						errorCount);
		
        delete matrix;
		
	}	
	
	
	
	
		
	{
		TTTestLog("\n");
		TTTestLog("Testing TTMatrix Math...");
		
		TTMatrixPtr	A = NULL;
		TTMatrixPtr	B = NULL;
		TTMatrixPtr	C = NULL;
        
        try {
            A = new TTMatrix(kTTSymEmpty);
            B = new TTMatrix(kTTSymEmpty);
            TTTestLog("TTMatrix matrix instantiates successfully");
            
        } catch (...) {
            TTTestLog("TTMatrix matrix did NOT instantiate");
            return kTTErrInstantiateFailed;
        }
        
		//TTErr		err;    // unused with new instantiation syntax
		TTBoolean	match;
		TTValue		dims, dims_mismatch;
		
		dims.resize(2);
		dims[0] = 3;	// 3 rows
		dims[1] = 4;	// 4 columns
		
		dims_mismatch.resize(2);
		dims_mismatch[0] = 4;	// 4 rows
		dims_mismatch[1] = 3;	// 3 columns
		
		A->setAttributeValue("dimensions", dims);
		A->setAttributeValue("type", "int32");
		A->setAttributeValue("elementCount", 1);
		
		B->setAttributeValue("dimensions", dims_mismatch);
		B->setAttributeValue("type", "int32");
		B->setAttributeValue("elementCount", 1);
		
		match = A->allAttributesMatch(B);
		
		TTTestAssertion("reports false when there is attribute mismatch between 2 matrices", 
						match == false, 
						testAssertionCount,
						errorCount);
		
		B->setAttributeValue("dimensions", dims);
		
		match = A->allAttributesMatch(B);
		
		TTTestAssertion("reports true when all attributes match between 2 matrices", 
						match == true, 
						testAssertionCount,
						errorCount);

		A->set2d(0, 0, 101);	A->set2d(0, 1, 102);	A->set2d(0, 2, 103);	A->set2d(0, 3, 104);
		A->set2d(1, 0, 201);	A->set2d(1, 1, 202);	A->set2d(1, 2, 203);	A->set2d(1, 3, 204);
		A->set2d(2, 0, 301);	A->set2d(2, 1, 302);	A->set2d(2, 2, 303);	A->set2d(2, 3, 304);
		
		B->set2d(0, 0, 11);		B->set2d(0, 1, 12);		B->set2d(0, 2, 13);		B->set2d(0, 3, 14);
		B->set2d(1, 0, 21);		B->set2d(1, 1, 22);		B->set2d(1, 2, 23);		B->set2d(1, 3, 24);
		B->set2d(2, 0, 31);		B->set2d(2, 1, 32);		B->set2d(2, 2, 33);		B->set2d(2, 3, 34);
		
		C = (*A)+(*B);
		
		TTInt32	componentValue;
		int		wrongComponentCount = 0;
		
		C->get2d(0, 0, componentValue);		if (componentValue != 112) wrongComponentCount++;
		C->get2d(0, 1, componentValue);		if (componentValue != 114) wrongComponentCount++;
		C->get2d(0, 2, componentValue);		if (componentValue != 116) wrongComponentCount++;
		C->get2d(0, 3, componentValue);		if (componentValue != 118) wrongComponentCount++;
				 
		C->get2d(1, 0, componentValue);		if (componentValue != 222) wrongComponentCount++;
		C->get2d(1, 1, componentValue);		if (componentValue != 224) wrongComponentCount++;
		C->get2d(1, 2, componentValue);		if (componentValue != 226) wrongComponentCount++;
		C->get2d(1, 3, componentValue);		if (componentValue != 228) wrongComponentCount++;

		C->get2d(2, 0, componentValue);		if (componentValue != 332) wrongComponentCount++;
		C->get2d(2, 1, componentValue);		if (componentValue != 334) wrongComponentCount++;
		C->get2d(2, 2, componentValue);		if (componentValue != 336) wrongComponentCount++;
		C->get2d(2, 3, componentValue);		if (componentValue != 338) wrongComponentCount++;

		TTTestAssertion("correct result for matrix addition on 3x4 matrix of simple ints", 
						wrongComponentCount == 0, 
						testAssertionCount,
						errorCount);
		
		delete C;
		
		
		C = (*A)-(*B);

		C->get2d(0, 0, componentValue);		if (componentValue != 90) wrongComponentCount++;
		C->get2d(0, 1, componentValue);		if (componentValue != 90) wrongComponentCount++;
		C->get2d(0, 2, componentValue);		if (componentValue != 90) wrongComponentCount++;
		C->get2d(0, 3, componentValue);		if (componentValue != 90) wrongComponentCount++;
		
		C->get2d(1, 0, componentValue);		if (componentValue != 180) wrongComponentCount++;
		C->get2d(1, 1, componentValue);		if (componentValue != 180) wrongComponentCount++;
		C->get2d(1, 2, componentValue);		if (componentValue != 180) wrongComponentCount++;
		C->get2d(1, 3, componentValue);		if (componentValue != 180) wrongComponentCount++;
		
		C->get2d(2, 0, componentValue);		if (componentValue != 270) wrongComponentCount++;
		C->get2d(2, 1, componentValue);		if (componentValue != 270) wrongComponentCount++;
		C->get2d(2, 2, componentValue);		if (componentValue != 270) wrongComponentCount++;
		C->get2d(2, 3, componentValue);		if (componentValue != 270) wrongComponentCount++;
		
		TTTestAssertion("correct result for matrix subtraction on 3x4 matrix of simple ints", 
						wrongComponentCount == 0, 
						testAssertionCount,
						errorCount);
		
		delete C;
        
        delete A;
        delete B;
		
	}

	
		
	


	
	
	
	return TTTestFinish(testAssertionCount, errorCount, returnedTestInfo);
}
