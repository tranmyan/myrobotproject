--variable REMOTE_URL:http://localhost:4723/wd/hub
--variable PLATFORM_NAME:Android
--variable PLATFORM_VERSION:10
--variable DEVICE_NAME:emulator-5554
--variable APK_FILENAME:./Mobiletesting/APK file/androidfile.apk

--variable APP_PACKAGE:com...android
--variable APP_ACTIVITY:com.._mobile.MainActivity

--include MOBILE
--outputdir ./Mobiletesting/robotlogs/
./Mobiletesting/testsuites/login.robot
