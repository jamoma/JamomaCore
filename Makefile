
debug:
	cd Foundation; ruby build.rb Development
	cd DSP; ruby build.rb Development
	cd Graph; ruby build.rb Development
	cd AudioGraph; ruby build.rb Development
	cd Plugtastic; ruby build.rb Development
	cd Ruby; ruby build.rb Development

cleandebug:
	cd Foundation; ruby build.rb Development clean
	cd DSP; ruby build.rb Development        clean
	cd Graph; ruby build.rb Development      clean
	cd AudioGraph; ruby build.rb Development clean
	cd Plugtastic; ruby build.rb Development clean
	cd Ruby; ruby build.rb Development       clean

release:
	cd Foundation; ruby build.rb Deployment
	cd DSP; ruby build.rb Deployment
	cd Graph; ruby build.rb Deployment
	cd AudioGraph; ruby build.rb Deployment
	cd Plugtastic; ruby build.rb Deployment
	cd Ruby; ruby build.rb Deployment

cleanrelease:
	cd Foundation; ruby build.rb Deployment clean
	cd DSP; ruby build.rb Deployment        clean
	cd Graph; ruby build.rb Deployment      clean
	cd AudioGraph; ruby build.rb Deployment clean
	cd Plugtastic; ruby build.rb Deployment clean
	cd Ruby; ruby build.rb Deployment       clean
