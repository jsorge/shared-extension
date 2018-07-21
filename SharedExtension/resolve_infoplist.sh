#! /bin/sh

APPEX_DIR=$BUILT_PRODUCTS_DIR/SharedExtension.appex
INFO_PLIST=$APPEX_DIR/Info.plist
suffix=sharedextension

if [ "$IS_EMPLOYEE" = YES ] ; then
bundleID=io.taphouse.EmployeeApp.$suffix
shortVersion=$VERSION_EMPLOYEE
version=$VERSION_EMPLOYEE.$BUILD_NUMBER_EMPLOYEE
else
bundleID=io.taphouse.CustomerApp.$suffix
shortVersion=$VERSION_CUSTOMER
version=$VERSION_CUSTOMER.$BUILD_NUMBER_CUSTOMER
fi

plutil -replace CFBundleIdentifier -string "$bundleID" $INFO_PLIST
plutil -replace CFBundleShortVersionString -string "$shortVersion" $INFO_PLIST
plutil -replace CFBundleVersion -string "$version" $INFO_PLIST
