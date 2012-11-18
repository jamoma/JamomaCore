/** 
 	@page chapter_unittesting 06. Unit testing

	@author Jamoma, Timothy Place

	@section chapter_unittesting_runningtests Running Tests in Ruby

	To run a unit test, the easiest way to do it is in ruby.  In the DSP/Tests folder, there is a simple example (<tt>gain.test.rb</tt>) which looks like this:

	@code{.rb}
	#!/usr/bin/ruby

	require 'Jamoma'

	o = TTObject.new "gain"
	o.send "test"
	@endcode

	The <tt>require</tt> statement loads the Jamoma Foundation.  The following line instantiates the TTGain class.  Once we have an instance, we send it the test message to run the test.  You can run this ruby script in the terminal by typing <tt>'ruby gain.test.rb'</tt> and it will quickly return the results to you.

	@section chapter_unittesting_writingtests Writing Tests in C++

	Any object inheriting from TTAudioObject or TTDataObject will inherit a 'test' message.  Object inheriting directly from TTObject or other base classes may need to add this message binding manually in the constructor with a line like this:

	@code{.cpp}
	addMessageWithArgument(test);
	@endcode

	TTObject defines a virtual default test method.  This test will be run unless you specify your own test method.  The default test method simply reports a failure because you haven't written a custom test.  To define your test method, you can use the following prototype (which is the same as for any message with an argument in Jamoma):

	@code{.cpp}
	virtual TTErr test(TTValue& returnedTestInfo);
	@endcode

	You can then implement a test with code such as the block that follows.
	A test may make 'assertions' that certain conditions be true.
	If any of these conditions are not true, then they are logged to the console and test will fail.

	@code{.cpp}
	TTErr TTGain::test(TTValue& returnedTestInfo)
	{	
		int	errorCount = 0;
		int testAssertionCount = 0;
	
		TTTestLog("Testing Parameter value conversions");
	
		// N test assertions
	
		// Test 1: trival value conversion
		this->setAttributeValue("midiGain", 100);
		TTTestAssertion("midi gain of 100 == linear gain of 1.", 
						TTTestFloatEquivalence(this->mGain, 1.0), 
						testAssertionCount, 
						errorCount);
	
		// Test 2: trival value conversion
		this->setAttributeValue("midiGain", 99);
		TTTestAssertion("midi gain of 99 != linear gain of 1.", 
						TTTestFloatEquivalence(this->mGain, 1.0), 
						testAssertionCount, 
						errorCount);
	
		// Test 3: audio test (set the input signals 1, apply -6 dB gain, check that the samples are properly scaled)
		{
			TTAudioSignalPtr input = NULL;
			TTAudioSignalPtr output = NULL;
			int vectorsize = 64;

			// create 1 channel audio signal objects
			TTObjectInstantiate(kTTSym_audiosignal, &input, 1);
			TTObjectInstantiate(kTTSym_audiosignal, &output, 1);

			input->allocWithVectorSize(vectorsize);
			output->allocWithVectorSize(vectorsize);

			for (int i=0; i<vectorsize; i++)
				input->mSampleVectors[0][i] = 1.0;

			this->setAttributeValue("gain", -6.0);
			this->process(input, output);

			TTSampleValuePtr samples = output->mSampleVectors[0];
			int badSampleCount = 0;

			for (int i=0; i<vectorsize; i++) {
				badSampleCount += TTTestFloatEquivalence(0.501187, samples[i]);
			}
			TTTestAssertion("accumulated audio error at gain = -6 dB", 
							badSampleCount == 0, 
							testAssertionCount, 
							errorCount);
			TTTestLog("badSampleCount is %i", badSampleCount);

			TTObjectRelease(&input);
			TTObjectRelease(&output);
		}

		// Wrap up the test results to pass back to whoever called this test
		return TTTestFinish(testAssertionCount, errorCount, returnedTestInfo);
	}
	@endcode

*/
