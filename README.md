# OPPWAMobile with SPM

# Arichtectures

## List architectures

```
lipo -info OPPWAMobile.framework/OPPWAMobile
````

## Remove architectures

remove x86_64 and i386

```
 lipo -remove i386  OPPWAMobile.framework/OPPWAMobile -o OPPWAMobile.framework/OPPWAMobile
 lipo -remove x86_64  OPPWAMobile.framework/OPPWAMobile -o OPPWAMobile.framework/OPPWAMobile
 lipo -remove armv7  OPPWAMobile.framework/OPPWAMobile -o OPPWAMobile.framework/OPPWAMobile
 lipo -remove arm64  OPPWAMobile.framework/OPPWAMobile -o OPPWAMobile.framework/OPPWAMobile
````

# Prepare for SPM

## Build XCFramework

```
xcodebuild -create-xcframework -framework x86_64/OPPWAMobile.framework -framework arm64/OPPWAMobile.framework -output OPPWAMobile.xcframework
```

## Create SPM checksum

swift package compute-checksum OPPWAMobile.xcframework.zip