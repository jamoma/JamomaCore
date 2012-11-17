class BasicsController < ApplicationController


  def initialize
    @master_gain = -96.0
    @waveform = "sine"
    @frequency = "440.0"
    @amplitude = "1.0"
  end


 
  def ui
     # This is the action that will show our interface
     # We aren't providing it with anything because it is statically generated
  end
  
  
  
  # Actions for controlling the Oscillator
  
  def oscil_frequency
    frequency = params[:frequency_value]
    puts "my oscil frequency #{frequency}"
    $tt_oscil.set "frequency", frequency.to_f
  end
  
  def oscil_amplitude
    amplitude = params[:amplitude_value]
    puts "my oscil amplitude #{amplitude}"
    $tt_oscil.set "linearGain", amplitude.to_f
  end
  
  def oscil_waveform
    waveform = params[:value]
    puts "my oscil waveform #{waveform}"
    $tt_oscil.set "mode", waveform
  end
  
  
  
  # Actions for controlling the Gain

  def slider_value
    slider_value = params[:slider_value]
    
    # UDP
    #@sender.send(slider_value, 0, @@ADDRESS, @@PORT)
    puts "my slider value: #{slider_value}" 
    
    # TCP
    # @sender.puts slider_value.to_i
    
    render :text => slider_value
    
    $tt_gain.set "gain", slider_value.to_f
    
  end


  # Actions for controlling the DAC
  
  def dac_start
     puts "START!"
     $tt_dac.send "start"
  end

  def dac_stop
    puts "STOP!"
    $tt_dac.send "stop"
  end

end
