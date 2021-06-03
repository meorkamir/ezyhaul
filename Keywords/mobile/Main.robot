*** Setting ***
Documentation       main file for setup browser and libraries
Library         AppiumLibrary

*** Variables ***
${TIMEOUT}      10s

# mobile
${ANDROID_AUTOMATION_NAME}    UIAutomator2
${ANDROID_PLATFORM_NAME}      Android
${ANDROID_DEVICE_NAME}      Pixel_XL_API_S
${ANDROID_DEVICE_READY_TIMEOUT}      300
${ANDROID_LAUNCH_TIMEOUT}    30000000
${ANDROID_COMMAND_TIMEOUT}      3000
${ANDROID_ADB_EXEC_TIMEOUT}      30000000
${ANDROID_DEVICE_READY_TIMEOUT}      300
${ANDROID_APP_PACKAGE}      com.facebook.lite
${ANDROID_APP_ACTIVITY}      com.facebook.lite.MainActivity

*** Keyword ***
Launch emulator
  Open Application  http://127.0.0.1:4723/wd/hub  automationName=${ANDROID_AUTOMATION_NAME}
  ...  platformName=${ANDROID_PLATFORM_NAME}  deviceName=${ANDROID_DEVICE_NAME}
  ...  appPackage=${ANDROID_APP_PACKAGE}  appActivity=${ANDROID_APP_ACTIVITY}
  ...  deviceReadyTimeout=${ANDROID_DEVICE_READY_TIMEOUT}  avdLaunchTimeout=${ANDROID_LAUNCH_TIMEOUT}
  ...  newCommandTimeout=${ANDROID_COMMAND_TIMEOUT}  adbExecTimeout=${ANDROID_ADB_EXEC_TIMEOUT}
