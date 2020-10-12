# OPPWAMobile with SPM

# Arichtectures

## List architectures

```
lipo -info OPPWAMobile.framework/OPPWAMobile
````

## 1. Remove architectures

remove x86_64 and i386

```
 lipo -remove i386  OPPWAMobile.framework/OPPWAMobile -o OPPWAMobile.framework/OPPWAMobile
 lipo -remove x86_64  OPPWAMobile.framework/OPPWAMobile -o OPPWAMobile.framework/OPPWAMobile
 lipo -remove armv7  OPPWAMobile.framework/OPPWAMobile -o OPPWAMobile.framework/OPPWAMobile
 lipo -remove arm64  OPPWAMobile.framework/OPPWAMobile -o OPPWAMobile.framework/OPPWAMobile
````

## 2. Add module.modulemap

Add module.modulemap at `OPPWAMobile.framework/Modules/module.modulemap`

```
framework module OPPWAMobile {
    umbrella header "OPPWAMobile.h"
    export *
}
```

# Prepare for SPM

## 3. Build XCFramework

```
xcodebuild -create-xcframework -framework x86_64/OPPWAMobile.framework -framework arm64/OPPWAMobile.framework -output OPPWAMobile.xcframework
```

## 4. Compress XCFramework

create a compressed version of XCFramework `OPPWAMobile.xcframework.zip`

## 5. Generate SPM checksum

```
swift package compute-checksum OPPWAMobile.xcframework.zip
```

