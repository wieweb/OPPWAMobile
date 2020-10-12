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
````

# Prepare for SPM

## Build XCFramework

```
xcodebuild -create-xcframework -framework OPPWAMobile.framework -output xcOPP.xcframework
```

## Create SPM checksum


