/* 
 * Jamoma N-Dimensional Matrix Data Class
 * Copyright © 2011, Timothy Place
 * 
 * License: This code is licensed under the terms of the "New BSD License"
 * http://creativecommons.org/licenses/BSD/
 */

#include "TTMatrix.h"
#include "TTUnitTest.h"


TTErr TTMatrix::test(TTValue& returnedTestInfo)
{
	int	errorCount = 0;
	int testAssertionCount = 0;
	

	
	
	{


		TTTestLog("\n");
		TTTestLog("Testing TTMatrix Basics...");
		
		TTMatrixPtr matrix = NULL;
		TTErr err;
		
		err = TTObjectInstantiate("matrix", (TTObjectPtr*)&matrix, kTTValNONE);
		TTTestAssertion("instantiates successfully", 
						err == kTTErrNone, 
						testAssertionCount,
						errorCount);
		
		
		
		
		TTTestLog("Setting to a 1D, float64, matrix with a length of 16 for complex numbers (2 elements per value)");
		matrix->setAttributeValue("dimensions", 16);
		matrix->setAttributeValue("type", "float64");
		matrix->setAttributeValue("elementCount", 2);
/*		
		TTTestAssertion("correct amount of data storage calculated", 
						matrix->mDataSize == sizeof(TTFloat64) * 16 * 2, 
						testAssertionCount,
						errorCount);
		TTTestAssertion("correct byte-stride between values calculated", 
						matrix->mComponentStride == sizeof(TTFloat64) * 2, 
						testAssertionCount,
						errorCount);
*/		
		// inbounds tests
        TTInt32 i = -1;
        TTInt32 j = 0;
        
		TTTestAssertion("value is out of bounds", 
						matrix->makeInBounds(i,j) == 1,
						testAssertionCount,
						errorCount);
        TTTestAssertion("value was changed by out of bounds operation",
						i == 0,
						testAssertionCount,
						errorCount);
		
		TTSymbol temp_symbol;
		matrix->getAttributeValue("type", temp_symbol);
		
		TTTestLog(temp_symbol);
		TTTestLog("\n");
		TTTestLog(temp_symbol.string());
		TTTestLog("\n");
		TTTestLog(temp_symbol.c_str());
		TTTestLog("\n");
						
		/*				
		// inbounds tests				
		TTTestAssertion("value -1 is out of bounds", 
						matrix->makeInBounds(-1,0) == 0, 
						testAssertionCount,
						errorCount);
		TTTestAssertion("value 0 is in bounds", 
						matrix->inBounds(0) == 1, 
						testAssertionCount,
						errorCount);
		TTTestAssertion("value 1 is in bounds", 
						matrix->inBounds(1) == 1, 
						testAssertionCount,
						errorCount);
		TTTestAssertion("value dataCount is out of bounds", 
						matrix->inBounds(matrix->mDataCount) == 0, 
						testAssertionCount,
						errorCount);
		TTTestAssertion("value dataCount + 1 is out of bounds", 
						matrix->inBounds(matrix->mDataCount + 1) == 0, 
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
		err = matrix->sendMessage("set", v, kTTValNONE);
		TTTestAssertion("set message -- error returned when not enough data provided to completely set value", 
						err, 
						testAssertionCount,
						errorCount);
		
		// the following use of set() does not work because it will interpret first two values as coordinates
		// that is the source of FAIL that the test produces
		v.setSize(4);		
		v.set(0, 0);	// index x
		v.set(1, 15);	// index y
		v.set(2, 3.14);	// real (no imaginary)
		v.set(3, -2);	// real (no imaginary)
		err = matrix->sendMessage("set", v, kTTValNONE);
		TTTestAssertion("set message -- enough data provided to completely set value", 
						err == kTTErrNone, 
						testAssertionCount,
						errorCount);
		v.set(1, 10);	// index y
		v.set(2, 4);	// real
		v.set(3, 1.2);	// imaginary
		err = matrix->sendMessage("set", v, kTTValNONE);
		TTTestAssertion("set message -- enough data provided to completely set value", 
						err == kTTErrNone, 
						testAssertionCount,
						errorCount);
		
		TTComplex z(14, 0.92);
		matrix->set2d(0, 9, z);
		
		cout << "		";
		for (unsigned int i=0; i < matrix->mDataSize; i += matrix->mComponentStride) {
			cout << "[" << *((TTFloat64*)(matrix->mData+i));
			TTFloat64 imag = *((TTFloat64*)(matrix->mData+i+matrix->mTypeSizeInBytes));
			if (imag >= 0.0)
				cout << "+";
			cout <<        *((TTFloat64*)(matrix->mData+i+matrix->mTypeSizeInBytes)) << "i] ";
		}
		cout << endl;
		
		// TODO: would be nice to have a method to compare two matrices!
		int index = 1;
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
			//TTTestLog("count: %ld   @  %ld", count, index);
			index++;
		}
		TTTestAssertion("set message correctly sets compound values in a vector (1D matrix)", 
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

		// inbounds tests				
		TTTestAssertion("value -1 is out of bounds", 
						matrix->inBounds(-1) == 0, 
						testAssertionCount,
						errorCount);
		TTTestAssertion("value 0 is in bounds", 
						matrix->inBounds(0) == 1, 
						testAssertionCount,
						errorCount);
		TTTestAssertion("value 1 is in bounds", 
						matrix->inBounds(1) == 1, 
						testAssertionCount,
						errorCount);
		TTTestAssertion("value dataCount is out of bounds", 
						matrix->inBounds(matrix->mDataCount) == 0, 
						testAssertionCount,
						errorCount);
		TTTestAssertion("value dataCount + 1 is out of bounds", 
						matrix->inBounds(matrix->mDataCount + 1) == 0, 
						testAssertionCount,
						errorCount);
				
		
		err = TTObjectRelease((TTObjectPtr*)&matrix);
		TTTestAssertion("frees successfully", 
						err == kTTErrNone, 
						testAssertionCount,
						errorCount);
		
	}	
	
	
	
	
		
	{
		TTTestLog("\n");
		TTTestLog("Testing TTMatrix Math...");
		
		TTMatrixPtr	A = NULL;
		TTMatrixPtr	B = NULL;
		TTMatrixPtr	C = NULL;
		TTErr		err;
		TTBoolean	match;
		TTValue		dims, dims_mismatch;
		
		err = TTObjectInstantiate("matrix", (TTObjectPtr*)&A, kTTValNONE);
		err = TTObjectInstantiate("matrix", (TTObjectPtr*)&B, kTTValNONE);
		
		dims.setSize(2);
		dims.set(0, 3);	// 3 rows
		dims.set(1, 4);	// 4 columns
		
		dims_mismatch.setSize(2);
		dims_mismatch.set(0, 4);	// 4 rows
		dims_mismatch.set(1, 3);	// 3 columns
		
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
		
		TTObjectRelease((TTObjectPtr*)&C);
		
		
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
		
		TTObjectRelease((TTObjectPtr*)&C);
		
		
		
		TTObjectRelease((TTObjectPtr*)&A);
		TTObjectRelease((TTObjectPtr*)&B);
		*/
	}

	
		
	


	
	
	
	return TTTestFinish(testAssertionCount, errorCount, returnedTestInfo);
}
