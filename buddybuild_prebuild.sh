#!/usr/bin/env bash

# Add our Adjust keys to the build depending on the scheme
if [ "$BUDDYBUILD_SCHEME" == FirefoxBeta ]; then
  echo "Setting Adjust environment to SANDBOX for $BUDDYBUILD_SCHEME"
  /usr/libexec/PlistBuddy -c "Set AdjustAppToken $ADJUST_KEY_SANDBOX" "Client/Info.plist"
  /usr/libexec/PlistBuddy -c "Set AdjustEnvironment sandbox" "Client/Info.plist"
elif [ "$BUDDYBUILD_SCHEME" == Firefox ]; then
  echo "Setting Adjust environment to PRODUCTION for $BUDDYBUILD_SCHEME"
  /usr/libexec/PlistBuddy -c "Set AdjustAppToken String $ADJUST_KEY_PRODUCTION" "Client/Info.plist"
  /usr/libexec/PlistBuddy -c "Set AdjustEnvironment String production" "Client/Info.plist"
fi

# Set the build number to match the Buddybuild number
avgtool new-version -all $BUDDYBUILD_BUILD_NUMBER