--variable REMOTE_URL:http://localhost:4723/wd/hub #This is the path to the appium server on your machine
--variable DEVICE_NAME: #the device name. If run in simulator eg. iPhone 8
--variable APK_FILENAME: #Path to the app
--variable PLATFORM_NAME:iOS
--variable PLATFORM_VERSION: #Version number for platform eg. 12.2
--variable BUNDLE_ID: #Bundle ID (ask from developer)

--variable XCODESIGNIN: #This is the signing username for iOS developer
--variable XCODEORGID: #Organisation ID for the development team

--include iOS
--outputdir ./testCases/robotlogs/
./testCases/POC.robot