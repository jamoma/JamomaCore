class BasicsController < ApplicationController
  require "TTRuby"

  # build the multicore graph here
  # TODO: need to clear all of this up when we are done!
  def initialize
    @master_gain = -96.0
	  @waveform = "sine"
	  @frequency = "220.0"
	  @amplitude = "1.0"
	  
    @dac = TTAudio.new "multicore.output"
    @gain = TTAudio.new "gain"
    @op = TTAudio.new "operator"
    @oscil = TTAudio.new "wavetable"
    @op.connect_audio @oscil
    @gain.connect_audio @op
    @dac.connect_audio @gain
  end



  # GET /basics
  # GET /basics.xml
  def index
    #@basics = Basic.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @basics }
    end
  end

  # GET /basics/1
  # GET /basics/1.xml
  def show
    @basic = Basic.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @basic }
    end
  end

  # GET /basics/new
  # GET /basics/new.xml
  def new
    @basic = Basic.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @basic }
    end
  end
  

  
  def ui
    # hi
  end
  
  def oscil_frequency
    frequency = params[:frequency_value]
    puts "my oscil frequency #{frequency}"
    @oscil.set "frequency", frequency
  end
  
  def oscil_amplitude
    amplitude = params[:amplitude_value]
    puts "my oscil amplitude #{amplitude}"
    @oscil.set "linearGain", amplitude
  end
  
  def oscil_waveform
    waveform = params[:value]
    puts "my oscil waveform #{waveform}"
    @oscil.set "mode", waveform
  end
  
  
  
  
  def dac_start
     puts "START!"
     @dac.send "start"
  end
  def dac_stop
    puts "STOP!"
    @dac.send "stop"
  end
  

  
  
  def slider_value
    slider_value = params[:slider_value]
    
    # UDP
    #@sender.send(slider_value, 0, @@ADDRESS, @@PORT)
    puts "my slider value: #{slider_value}" 
    
    # TCP
    # @sender.puts slider_value.to_i
    
    render :text => slider_value
    
    @gain.set "Gain", slider_value
    
  end





# NOTE: Just ignoring the CRUD for now because we are operating as a stateless app...




  # GET /basics/1/edit
  def edit
    @basic = Basic.find(params[:id])
  end

  # POST /basics
  # POST /basics.xml
  def create
    @basic = Basic.new(params[:basic])

    respond_to do |format|
      if @basic.save
        flash[:notice] = 'Basic was successfully created.'
        format.html { redirect_to(@basic) }
        format.xml  { render :xml => @basic, :status => :created, :location => @basic }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @basic.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /basics/1
  # PUT /basics/1.xml
  def update
    @basic = Basic.find(params[:id])

    respond_to do |format|
      if @basic.update_attributes(params[:basic])
        flash[:notice] = 'Basic was successfully updated.'
        format.html { redirect_to(@basic) }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @basic.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /basics/1
  # DELETE /basics/1.xml
  def destroy
    @basic = Basic.find(params[:id])
    @basic.destroy

    respond_to do |format|
      format.html { redirect_to(basics_url) }
      format.xml  { head :ok }
    end
  end
end
