require 'Jamoma'

#def CreateAudioGraph
    # build the audio graph here
     # TODO: need to clear all of this up when we are done!
  # def initialize

   	  puts "creating objects"
       $tt_dac = TTAudio.new "dac"
       $tt_gain = TTAudio.new "gain"
       $tt_op = TTAudio.new "operator"
       $tt_oscil = TTAudio.new "wavetable"
       $tt_op.connect_audio $tt_oscil
       $tt_gain.connect_audio $tt_op
       $tt_dac.connect_audio $tt_gain
  # end
#end
