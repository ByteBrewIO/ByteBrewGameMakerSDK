{
  "resourceType": "GMExtension",
  "resourceVersion": "1.2",
  "name": "ByteBrewExtension",
  "androidactivityinject": "",
  "androidclassname": "ByteBrewCaller",
  "androidcodeinjection": "<YYAndroidGradleDependencies>\nimplementation 'com.google.android.gms:play-services-ads-identifier:17.0.0'\nimplementation 'com.google.firebase:firebase-messaging:21.0.0'\nimplementation 'com.android.installreferrer:installreferrer:2.2'\ncompile fileTree(dir: \"libs-aar\", include: [\"*.jar\", \"*.aar\" ])\n</YYAndroidGradleDependencies>\n\n",
  "androidinject": "",
  "androidmanifestinject": "",
  "androidPermissions": [
    "android.permission.WAKE_LOCK",
    "com.google.android.c2dm.permission.RECEIVE",
    "android.permission.ACCESS_NETWORK_STATE",
    "android.permission.INTERNET",
    "com.google.android.gms.permission.AD_ID",
  ],
  "androidProps": true,
  "androidsourcedir": "",
  "author": "",
  "classname": "ByteBrewCaller",
  "copyToTargets": 12,
  "date": "2021-05-09T15:29:44.511692-07:00",
  "description": "",
  "exportToGame": true,
  "extensionVersion": "0.1.5",
  "files": [
    {"resourceType":"GMExtensionFile","resourceVersion":"1.0","name":"","constants":[],"copyToTargets":12,"filename":"ByteBrewExtension.ext","final":"","functions":[
        {"resourceType":"GMExtensionFunction","resourceVersion":"1.0","name":"ByteBrewExtension_Initialize","argCount":0,"args":[
            1,
            1,
            1,
            1,
          ],"documentation":"","externalName":"InitializeByteBrew","help":"To initialize the ByteBrew SDK, following order of parameters must be done: GameID, GameKey, Engine Version, Game Build Version, Package Name","hidden":false,"kind":4,"returnType":2,},
        {"resourceType":"GMExtensionFunction","resourceVersion":"1.0","name":"ByteBrewExtension_AddCustomEvent","argCount":0,"args":[
            1,
          ],"documentation":"","externalName":"AddNewCustomEvent","help":"Add a custom event. Parameters: Event Name","hidden":false,"kind":4,"returnType":2,},
        {"resourceType":"GMExtensionFunction","resourceVersion":"1.0","name":"ByteBrewExtension_AddCustomEventWithStringValue","argCount":0,"args":[
            1,
            1,
          ],"documentation":"","externalName":"AddNewCustomEventWithStringValue","help":"Add custom event with a string value. Parameters: Event Name, String Value","hidden":false,"kind":4,"returnType":2,},
        {"resourceType":"GMExtensionFunction","resourceVersion":"1.0","name":"ByteBrewExtension_AddCustomEventWithDoubleValue","argCount":0,"args":[
            1,
            2,
          ],"documentation":"","externalName":"AddNewCustomEventWithNumericValue","help":"Add a custom event with a float value. Parameters: Event Name, Double based Value","hidden":false,"kind":4,"returnType":2,},
        {"resourceType":"GMExtensionFunction","resourceVersion":"1.0","name":"ByteBrewExtension_AddProgressionEvent","argCount":0,"args":[
            1,
            1,
            1,
          ],"documentation":"","externalName":"AddProgressionEvent","help":"Add a progression event. Parameters: Progression Type, Environment, Stage","hidden":false,"kind":4,"returnType":2,},
        {"resourceType":"GMExtensionFunction","resourceVersion":"1.0","name":"ByteBrewExtension_AddProgressionEventWithStringValue","argCount":0,"args":[
            1,
            1,
            1,
            1,
          ],"documentation":"","externalName":"AddProgressionEventWithStringValue","help":"Add a progression event with a string value. Parameters: Status, Environment, Stage, String Value","hidden":false,"kind":4,"returnType":2,},
        {"resourceType":"GMExtensionFunction","resourceVersion":"1.0","name":"ByteBrewExtension_AddProgressionEventWithDoubleValue","argCount":0,"args":[
            1,
            1,
            1,
            2,
          ],"documentation":"","externalName":"AddProgressionEventWithNumericValue","help":"Add a progression with a float value. Parameters: Status, Environment, Stage, Double Value","hidden":false,"kind":4,"returnType":2,},
        {"resourceType":"GMExtensionFunction","resourceVersion":"1.0","name":"ByteBrewExtension_AddTrackedAdEvent","argCount":0,"args":[
            1,
            1,
          ],"documentation":"","externalName":"NewTrackedAdEvent","help":"Add a tracked ad event. Parametes: PlacementType, AdLocation","hidden":false,"kind":4,"returnType":2,},
        {"resourceType":"GMExtensionFunction","resourceVersion":"1.0","name":"ByteBrewExtension_AddTrackedAdEventWithAdID","argCount":0,"args":[
            1,
            1,
            1,
          ],"documentation":"","externalName":"NewTrackedAdEventWithAdID","help":"Add a tracked ad event, Parameters: PlacementType, AdLocation, AdID","hidden":false,"kind":4,"returnType":2,},
        {"resourceType":"GMExtensionFunction","resourceVersion":"1.0","name":"ByteBrewExtension_AddTrackedAdEventWithAllOptions","argCount":0,"args":[
            1,
            1,
            1,
            1,
          ],"documentation":"","externalName":"NewTrackedAdEventWithAllOptions","help":"Add a tracked ad event. Parameters: PlacementType, AdLocation, AdID, AdProvider","hidden":false,"kind":4,"returnType":2,},
        {"resourceType":"GMExtensionFunction","resourceVersion":"1.0","name":"ByteBrewExtension_TrackInAppPurchaseEvent","argCount":0,"args":[
            1,
            1,
            2,
            1,
            1,
          ],"documentation":"","externalName":"TrackInAppPurchaseEvent","help":"Track a in app purchase without receipt validation","hidden":false,"kind":4,"returnType":2,},
        {"resourceType":"GMExtensionFunction","resourceVersion":"1.0","name":"ByteBrewExtension_TrackInAppPurchaseEventWithValidation","argCount":0,"args":[
            1,
            1,
            2,
            1,
            1,
            1,
            1,
          ],"documentation":"","externalName":"TrackInAppPurchaseEventAndValidate","help":"Use this method to track as well validate the in app purchase, if you are using this for iOS leave the last argument a blank string, else fill it with the releavant ANDROID signature.","hidden":false,"kind":4,"returnType":1,},
        {"resourceType":"GMExtensionFunction","resourceVersion":"1.0","name":"ByteBrewExtension_LoadRemoteConfig","argCount":0,"args":[],"documentation":"","externalName":"LoadRemoteConfigs","help":"Load Remote Configs to get or refresh configs","hidden":false,"kind":4,"returnType":2,},
        {"resourceType":"GMExtensionFunction","resourceVersion":"1.0","name":"ByteBrewExtension_RetrieveRemoteConfig","argCount":0,"args":[
            1,
            1,
          ],"documentation":"","externalName":"RetrieveRemoteConfigValue","help":"Retrieve Remote Configs. Parameters: Key, Default Value","hidden":false,"kind":4,"returnType":1,},
        {"resourceType":"GMExtensionFunction","resourceVersion":"1.0","name":"ByteBrewExtension_RestartTracking","argCount":0,"args":[],"documentation":"","externalName":"RestartTracking","help":"Restart tracking if previouslty hasnt","hidden":false,"kind":4,"returnType":2,},
        {"resourceType":"GMExtensionFunction","resourceVersion":"1.0","name":"ByteBrewExtension_StopTracking","argCount":0,"args":[],"documentation":"","externalName":"StopTracking","help":"Stop tracking the current user and never start again","hidden":false,"kind":4,"returnType":2,},
        {"resourceType":"GMExtensionFunction","resourceVersion":"1.0","name":"ByteBrewExtension_StartPushNotifications","argCount":0,"args":[],"documentation":"","externalName":"StartPushNotifications","help":"Use ByteBrew to enable Push Notifications. Make sure to call Initialize before this function","hidden":false,"kind":4,"returnType":2,},
        {"resourceType":"GMExtensionFunction","resourceVersion":"1.0","name":"ByteBrewExtension_GetUserID","argCount":0,"args":[],"documentation":"","externalName":"GetUserID","help":"Get the current ByteBrew User ID, use this for identifying users for push notifications.","hidden":false,"kind":4,"returnType":1,},
        {"resourceType":"GMExtensionFunction","resourceVersion":"1.0","name":"ByteBrewExtension_HasRemoteConfigsBeenSet","argCount":0,"args":[],"documentation":"","externalName":"HasRemoteConfigsBeenSet","help":"Check whether Remote Configs have been set, returns string \"true\" or \"false\".","hidden":false,"kind":4,"returnType":1,},
        {"resourceType":"GMExtensionFunction","resourceVersion":"1.0","name":"ByteBrewExtension_SetCustomUserDataWithString","argCount":0,"args":[
            1,
            1,
          ],"documentation":"","externalName":"SetCustomUserDataAttributeWithString","help":"Set a custom key-value pair to your user, use for segmentation purposes.","hidden":false,"kind":4,"returnType":2,},
        {"resourceType":"GMExtensionFunction","resourceVersion":"1.0","name":"ByteBrewExtension_SetCustomUserDataWithDouble","argCount":0,"args":[
            1,
            2,
          ],"documentation":"","externalName":"SetCustomUserDataAttributeWithNumeric","help":"Set a custom key-value pair to your user, use for segmentation purposes.","hidden":false,"kind":4,"returnType":2,},
        {"resourceType":"GMExtensionFunction","resourceVersion":"1.0","name":"ByteBrewExtension_SetCustomUserDataWithBoolean","argCount":0,"args":[
            1,
            1,
          ],"documentation":"","externalName":"SetCustomUserDataAttributeWithBool","help":"Set a custom key-value pair to your user, use for segmentation purposes. Set argument1 as a string version of a bool.","hidden":false,"kind":4,"returnType":2,},
        {"resourceType":"GMExtensionFunction","resourceVersion":"1.0","name":"ByteBrewExtension_SetCustomUserDataWithInteger","argCount":0,"args":[
            1,
            1,
          ],"documentation":"","externalName":"SetCustomUserDataAttributeWithInt","help":"Set a custom key-value pair to your user, use for segmentation purposes. Set argument1 as a string version of a int.","hidden":false,"kind":4,"returnType":2,},
        {"resourceType":"GMExtensionFunction","resourceVersion":"1.0","name":"ByteBrewExtension_ValidateAndReturnInAppPurchaseEvent","argCount":0,"args":[
            1,
            1,
            2,
            1,
            1,
            1,
            1,
          ],"documentation":"","externalName":"ValidateAndReturnInAppPurchaseEvent","help":"Use this method to validate and return asynchronously if the in app purchase was faked or rea, this will also track the purchasel, if you are using this for iOS leave the last argument \"Signature\" as a blank string, else fill it with the releavant ANDROID signature.","hidden":false,"kind":4,"returnType":1,},
        {"resourceType":"GMExtensionFunction","resourceVersion":"1.0","name":"ByteBrewExtension_AddTrackedAdEventWithRevenue","argCount":0,"args":[
            1,
            1,
            1,
            2,
          ],"documentation":"","externalName":"NewTrackedAdEventWithRevenue","help":"Add a tracked ad event. Parameters: PlacementType, AdProvider, AdUnitName, Revenue","hidden":false,"kind":4,"returnType":2,},
        {"resourceType":"GMExtensionFunction","resourceVersion":"1.0","name":"ByteBrewExtension_AddTrackedAdEventWithAdLocationRevenue","argCount":0,"args":[
            1,
            1,
            1,
            1,
            2,
          ],"documentation":"","externalName":"NewTrackedAdEventWithAdLocationRevenue","help":"Add a tracked ad event. Parameters: PlacementType, AdProvider, AdUnitName, AdLocation, Revenue","hidden":false,"kind":4,"returnType":2,},
      ],"init":"","kind":4,"order":[
        {"name":"ByteBrewExtension_Initialize","path":"extensions/ByteBrewExtension/ByteBrewExtension.yy",},
        {"name":"ByteBrewExtension_AddCustomEvent","path":"extensions/ByteBrewExtension/ByteBrewExtension.yy",},
        {"name":"ByteBrewExtension_AddCustomEventWithStringValue","path":"extensions/ByteBrewExtension/ByteBrewExtension.yy",},
        {"name":"ByteBrewExtension_AddCustomEventWithDoubleValue","path":"extensions/ByteBrewExtension/ByteBrewExtension.yy",},
        {"name":"ByteBrewExtension_AddProgressionEvent","path":"extensions/ByteBrewExtension/ByteBrewExtension.yy",},
        {"name":"ByteBrewExtension_AddProgressionEventWithStringValue","path":"extensions/ByteBrewExtension/ByteBrewExtension.yy",},
        {"name":"ByteBrewExtension_AddProgressionEventWithDoubleValue","path":"extensions/ByteBrewExtension/ByteBrewExtension.yy",},
        {"name":"ByteBrewExtension_AddTrackedAdEvent","path":"extensions/ByteBrewExtension/ByteBrewExtension.yy",},
        {"name":"ByteBrewExtension_AddTrackedAdEventWithAdID","path":"extensions/ByteBrewExtension/ByteBrewExtension.yy",},
        {"name":"ByteBrewExtension_AddTrackedAdEventWithAllOptions","path":"extensions/ByteBrewExtension/ByteBrewExtension.yy",},
        {"name":"ByteBrewExtension_TrackInAppPurchaseEvent","path":"extensions/ByteBrewExtension/ByteBrewExtension.yy",},
        {"name":"ByteBrewExtension_TrackInAppPurchaseEventWithValidation","path":"extensions/ByteBrewExtension/ByteBrewExtension.yy",},
        {"name":"ByteBrewExtension_LoadRemoteConfig","path":"extensions/ByteBrewExtension/ByteBrewExtension.yy",},
        {"name":"ByteBrewExtension_RetrieveRemoteConfig","path":"extensions/ByteBrewExtension/ByteBrewExtension.yy",},
        {"name":"ByteBrewExtension_RestartTracking","path":"extensions/ByteBrewExtension/ByteBrewExtension.yy",},
        {"name":"ByteBrewExtension_StopTracking","path":"extensions/ByteBrewExtension/ByteBrewExtension.yy",},
        {"name":"ByteBrewExtension_StartPushNotifications","path":"extensions/ByteBrewExtension/ByteBrewExtension.yy",},
        {"name":"ByteBrewExtension_GetUserID","path":"extensions/ByteBrewExtension/ByteBrewExtension.yy",},
        {"name":"ByteBrewExtension_HasRemoteConfigsBeenSet","path":"extensions/ByteBrewExtension/ByteBrewExtension.yy",},
        {"name":"ByteBrewExtension_SetCustomUserDataWithString","path":"extensions/ByteBrewExtension/ByteBrewExtension.yy",},
        {"name":"ByteBrewExtension_SetCustomUserDataWithDouble","path":"extensions/ByteBrewExtension/ByteBrewExtension.yy",},
        {"name":"ByteBrewExtension_SetCustomUserDataWithBoolean","path":"extensions/ByteBrewExtension/ByteBrewExtension.yy",},
        {"name":"ByteBrewExtension_SetCustomUserDataWithInteger","path":"extensions/ByteBrewExtension/ByteBrewExtension.yy",},
        {"name":"ByteBrewExtension_ValidateAndReturnInAppPurchaseEvent","path":"extensions/ByteBrewExtension/ByteBrewExtension.yy",},
      ],"origname":"","ProxyFiles":[],"uncompress":false,"usesRunnerInterface":false,},
  ],
  "gradleinject": "\nimplementation 'com.google.android.gms:play-services-ads-identifier:17.0.0'\nimplementation 'com.google.firebase:firebase-messaging:21.0.0'\nimplementation 'com.android.installreferrer:installreferrer:2.2'\ncompile fileTree(dir: \"libs-aar\", include: [\"*.jar\", \"*.aar\" ])\n",
  "hasConvertedCodeInjection": true,
  "helpfile": "",
  "HTML5CodeInjection": "",
  "html5Props": false,
  "IncludedResources": [],
  "installdir": "",
  "iosCocoaPodDependencies": "",
  "iosCocoaPods": "",
  "ioscodeinjection": "",
  "iosdelegatename": "",
  "iosplistinject": "",
  "iosProps": true,
  "iosSystemFrameworkEntries": [
    {"resourceType":"GMExtensionFrameworkEntry","resourceVersion":"1.0","name":"Security.framework","embed":0,"weakReference":true,},
    {"resourceType":"GMExtensionFrameworkEntry","resourceVersion":"1.0","name":"AdSupport.framework","embed":0,"weakReference":true,},
    {"resourceType":"GMExtensionFrameworkEntry","resourceVersion":"1.0","name":"AdServices.framework","embed":0,"weakReference":true,},
    {"resourceType":"GMExtensionFrameworkEntry","resourceVersion":"1.0","name":"UserNotifications.framework","embed":0,"weakReference":true,},
  ],
  "iosThirdPartyFrameworkEntries": [],
  "license": "",
  "maccompilerflags": "",
  "maclinkerflags": "",
  "macsourcedir": "",
  "options": [],
  "optionsFile": "options.json",
  "packageId": "",
  "parent": {
    "name": "Extensions",
    "path": "folders/Extensions.yy",
  },
  "productId": "",
  "sourcedir": "",
  "supportedTargets": -1,
  "tvosclassname": null,
  "tvosCocoaPodDependencies": "",
  "tvosCocoaPods": "",
  "tvoscodeinjection": "",
  "tvosdelegatename": null,
  "tvosmaccompilerflags": "",
  "tvosmaclinkerflags": "",
  "tvosplistinject": "",
  "tvosProps": false,
  "tvosSystemFrameworkEntries": [],
  "tvosThirdPartyFrameworkEntries": [],
}