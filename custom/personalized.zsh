#!/bin/sh -x

export PATH="$HOME/.jenv/bin:$PATH"
eval "$(jenv init -)"

alias mvnInstallNoTest="mvn clean install -Dmaven.test.skip=true"

alias notes="cd ~/Documents/notes"

function workon() {
	source ~/virtualenv/$1/bin/activate
}

function runSoapImage() {
	case "$1" in
		local*) 
			GAME_VERSION='1.0.311'  GAME_CODE='BGS_HEART_OF_RA' ENV='soapui' docker-compose up
			;;
		gocd*) 
			GAME_VERSION='1.0.311' GAME_CODE='BGS_HEART_OF_RA' ENV='soapui' PROJECT_DIR='/Users/francisco.lopez/Documents/Projects/aggregator' docker-compose up
			;;
	esac
}
