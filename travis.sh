#!/bin/bash

set -e

echo
echo
echo "Runing test suite"
./gradlew test

if [ "${TRAVIS_PULL_REQUEST}" = "false" ]; then

	echo
	echo
	echo "Deploying debug artifacts"
	./gradlew assembleDebug crashlyticsUploadDistributionDebug

	echo
	echo
	echo "Artifacts uploaded successfully"
fi
