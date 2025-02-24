BlueStack Mediation Adapter for iOS platform for Unity Level Play

# BlueStackLevelPlayMediationAdapter

Using BlueStackLevelPlayMediationAdapter you will be able to show BlueStack ads through Unity Level Play SDK. 

## Supported ad formats
- Banner
- Interstitial
- Rewarded

## Requirements
- Xcode 14.0
- iOS: 12.2

## Integrate BlueStackLevelPlayMediationAdapter in your application project

### Using Cocoapods
In the `Podfile` of your application project add `BlueStackLevelPlayMediationAdapter` dependency

```shell
pod 'BlueStackLevelPlayMediationAdapter'
```
and run `pod install --repo-update` in you terminal.

### Using Swift Package Manager (SPM)

- Go to the project settings and select `Package Dependencies`
- Search for https://github.com/azerion/BlueStack-LevelPlay-Mediation.git and add `BlueStackLevelPlayMediationAdapter` to your target.

**Note:** Add `-ObjC` to you `Other Linker Flags` of target build settings. 

### Documentation

Please visit https://developers.bluestack.app/ios/mediation/secondary/unity-levelplay