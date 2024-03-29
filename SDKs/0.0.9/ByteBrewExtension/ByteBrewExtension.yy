{
  "optionsFile": "options.json",
  "options": [],
  "exportToGame": true,
  "supportedTargets": -1,
  "extensionVersion": "0.1.1",
  "packageId": "",
  "productId": "",
  "author": "",
  "date": "2021-05-09T15:29:44.511692-07:00",
  "license": "",
  "description": "",
  "helpfile": "",
  "iosProps": true,
  "tvosProps": false,
  "androidProps": true,
  "installdir": "",
  "files": [
    {"filename":"ByteBrewExtension.ext","origname":"","init":"","final":"","kind":4,"uncompress":false,"functions":[
        {"externalName":"InitializeByteBrew","kind":4,"help":"To initialize the ByteBrew SDK, following order of parameters must be done: GameID, GameKey, Engine Version, Game Build Version, Package Name","hidden":false,"returnType":2,"argCount":0,"args":[
            1,
            1,
            1,
            1,
          ],"resourceVersion":"1.0","name":"ByteBrewExtension_Initialize","tags":[],"resourceType":"GMExtensionFunction",},
        {"externalName":"AddNewCustomEvent","kind":4,"help":"Add a custom event. Parameters: Event Name","hidden":false,"returnType":2,"argCount":0,"args":[
            1,
          ],"resourceVersion":"1.0","name":"ByteBrewExtension_AddCustomEvent","tags":[],"resourceType":"GMExtensionFunction",},
        {"externalName":"AddNewCustomEventWithStringValue","kind":4,"help":"Add custom event with a string value. Parameters: Event Name, String Value","hidden":false,"returnType":2,"argCount":0,"args":[
            1,
            1,
          ],"resourceVersion":"1.0","name":"ByteBrewExtension_AddCustomEventWithStringValue","tags":[],"resourceType":"GMExtensionFunction",},
        {"externalName":"AddNewCustomEventWithNumericValue","kind":4,"help":"Add a custom event with a float value. Parameters: Event Name, Double based Value","hidden":false,"returnType":2,"argCount":0,"args":[
            1,
            2,
          ],"resourceVersion":"1.0","name":"ByteBrewExtension_AddCustomEventWithDoubleValue","tags":[],"resourceType":"GMExtensionFunction",},
        {"externalName":"AddProgressionEvent","kind":4,"help":"Add a progression event. Parameters: Progression Type, Environment, Stage","hidden":false,"returnType":2,"argCount":0,"args":[
            1,
            1,
            1,
          ],"resourceVersion":"1.0","name":"ByteBrewExtension_AddProgressionEvent","tags":[],"resourceType":"GMExtensionFunction",},
        {"externalName":"AddProgressionEventWithStringValue","kind":4,"help":"Add a progression event with a string value. Parameters: Status, Environment, Stage, String Value","hidden":false,"returnType":2,"argCount":0,"args":[
            1,
            1,
            1,
            1,
          ],"resourceVersion":"1.0","name":"ByteBrewExtension_AddProgressionEventWithStringValue","tags":[],"resourceType":"GMExtensionFunction",},
        {"externalName":"AddProgressionEventWithNumericValue","kind":4,"help":"Add a progression with a float value. Parameters: Status, Environment, Stage, Double Value","hidden":false,"returnType":2,"argCount":0,"args":[
            1,
            1,
            1,
            2,
          ],"resourceVersion":"1.0","name":"ByteBrewExtension_AddProgressionEventWithDoubleValue","tags":[],"resourceType":"GMExtensionFunction",},
        {"externalName":"NewTrackedAdEvent","kind":4,"help":"Add a tracked ad event. Parametes: PlacementType, AdLocation","hidden":false,"returnType":2,"argCount":0,"args":[
            1,
            1,
          ],"resourceVersion":"1.0","name":"ByteBrewExtension_AddTrackedAdEvent","tags":[],"resourceType":"GMExtensionFunction",},
        {"externalName":"NewTrackedAdEventWithAdID","kind":4,"help":"Add a tracked ad event, Parameters: PlacementType, AdLocation, AdID","hidden":false,"returnType":2,"argCount":0,"args":[
            1,
            1,
            1,
          ],"resourceVersion":"1.0","name":"ByteBrewExtension_AddTrackedAdEventWithAdID","tags":[],"resourceType":"GMExtensionFunction",},
        {"externalName":"NewTrackedAdEventWithAllOptions","kind":4,"help":"Add a tracked ad event. Parameters: PlacementType, AdLocation, AdID, AdProvider","hidden":false,"returnType":2,"argCount":0,"args":[
            1,
            1,
            1,
            1,
          ],"resourceVersion":"1.0","name":"ByteBrewExtension_AddTrackedAdEventWithAllOptions","tags":[],"resourceType":"GMExtensionFunction",},
        {"externalName":"TrackInAppPurchaseEvent","kind":4,"help":"Track a in app purchase without receipt validation","hidden":false,"returnType":2,"argCount":0,"args":[
            1,
            1,
            2,
            1,
            1,
          ],"resourceVersion":"1.0","name":"ByteBrewExtension_TrackInAppPurchaseEvent","tags":[],"resourceType":"GMExtensionFunction",},
        {"externalName":"TrackInAppPurchaseEventAndValidate","kind":4,"help":"Use this method to track as well validate the in app purchase, if you are using this for iOS leave the last argument a blank string, else fill it with the releavant ANDROID signature.","hidden":false,"returnType":1,"argCount":0,"args":[
            1,
            1,
            2,
            1,
            1,
            1,
            1,
          ],"resourceVersion":"1.0","name":"ByteBrewExtension_TrackInAppPurchaseEventWithValidation","tags":[],"resourceType":"GMExtensionFunction",},
        {"externalName":"LoadRemoteConfigs","kind":4,"help":"Load Remote Configs to get or refresh configs","hidden":false,"returnType":2,"argCount":0,"args":[],"resourceVersion":"1.0","name":"ByteBrewExtension_LoadRemoteConfig","tags":[],"resourceType":"GMExtensionFunction",},
        {"externalName":"RetrieveRemoteConfigValue","kind":4,"help":"Retrieve Remote Configs. Parameters: Key, Default Value","hidden":false,"returnType":1,"argCount":0,"args":[
            1,
            1,
          ],"resourceVersion":"1.0","name":"ByteBrewExtension_RetrieveRemoteConfig","tags":[],"resourceType":"GMExtensionFunction",},
        {"externalName":"RestartTracking","kind":4,"help":"Restart tracking if previouslty hasnt","hidden":false,"returnType":2,"argCount":0,"args":[],"resourceVersion":"1.0","name":"ByteBrewExtension_RestartTracking","tags":[],"resourceType":"GMExtensionFunction",},
        {"externalName":"StopTracking","kind":4,"help":"Stop tracking the current user and never start again","hidden":false,"returnType":2,"argCount":0,"args":[],"resourceVersion":"1.0","name":"ByteBrewExtension_StopTracking","tags":[],"resourceType":"GMExtensionFunction",},
        {"externalName":"StartPushNotifications","kind":4,"help":"Use ByteBrew to enable Push Notifications. Make sure to call Initialize before this function","hidden":false,"returnType":2,"argCount":0,"args":[],"resourceVersion":"1.0","name":"ByteBrewExtension_StartPushNotifications","tags":[],"resourceType":"GMExtensionFunction",},
        {"externalName":"GetUserID","kind":4,"help":"Get the current ByteBrew User ID, use this for identifying users for push notifications.","hidden":false,"returnType":1,"argCount":0,"args":[],"resourceVersion":"1.0","name":"ByteBrewExtension_GetUserID","tags":[],"resourceType":"GMExtensionFunction",},
        {"externalName":"HasRemoteConfigsBeenSet","kind":4,"help":"Check whether Remote Configs have been set, returns string \"true\" or \"false\".","hidden":false,"returnType":1,"argCount":0,"args":[],"resourceVersion":"1.0","name":"ByteBrewExtension_HasRemoteConfigsBeenSet","tags":[],"resourceType":"GMExtensionFunction",},
        {"externalName":"SetCustomUserDataAttributeWithString","kind":4,"help":"Set a custom key-value pair to your user, use for segmentation purposes.","hidden":false,"returnType":2,"argCount":0,"args":[
            1,
            1,
          ],"resourceVersion":"1.0","name":"ByteBrewExtension_SetCustomUserDataWithString","tags":[],"resourceType":"GMExtensionFunction",},
        {"externalName":"SetCustomUserDataAttributeWithNumeric","kind":4,"help":"Set a custom key-value pair to your user, use for segmentation purposes.","hidden":false,"returnType":2,"argCount":0,"args":[
            1,
            2,
          ],"resourceVersion":"1.0","name":"ByteBrewExtension_SetCustomUserDataWithDouble","tags":[],"resourceType":"GMExtensionFunction",},
        {"externalName":"SetCustomUserDataAttributeWithBool","kind":4,"help":"Set a custom key-value pair to your user, use for segmentation purposes. Set argument1 as a string version of a bool.","hidden":false,"returnType":2,"argCount":0,"args":[
            1,
            1,
          ],"resourceVersion":"1.0","name":"ByteBrewExtension_SetCustomUserDataWithBoolean","tags":[],"resourceType":"GMExtensionFunction",},
        {"externalName":"SetCustomUserDataAttributeWithInt","kind":4,"help":"Set a custom key-value pair to your user, use for segmentation purposes. Set argument1 as a string version of a int.","hidden":false,"returnType":2,"argCount":0,"args":[
            1,
            1,
          ],"resourceVersion":"1.0","name":"ByteBrewExtension_SetCustomUserDataWithInteger","tags":[],"resourceType":"GMExtensionFunction",},
        {"externalName":"ValidateAndReturnInAppPurchaseEvent","kind":4,"help":"Use this method to validate and return asynchronously if the in app purchase was faked or rea, this will also track the purchasel, if you are using this for iOS leave the last argument \"Signature\" as a blank string, else fill it with the releavant ANDROID signature.","hidden":false,"returnType":1,"argCount":0,"args":[
            1,
            1,
            2,
            1,
            1,
            1,
            1,
          ],"resourceVersion":"1.0","name":"ByteBrewExtension_ValidateAndReturnInAppPurchaseEvent","tags":[],"resourceType":"GMExtensionFunction",},
      ],"constants":[],"ProxyFiles":[],"copyToTargets":12,"order":[
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
      ],"resourceVersion":"1.0","name":"","tags":[],"resourceType":"GMExtensionFile",},
  ],
  "classname": "ByteBrewCaller",
  "tvosclassname": null,
  "tvosdelegatename": null,
  "iosdelegatename": "",
  "androidclassname": "ByteBrewCaller",
  "sourcedir": "",
  "androidsourcedir": "",
  "macsourcedir": "",
  "maccompilerflags": "",
  "tvosmaccompilerflags": "",
  "maclinkerflags": "",
  "tvosmaclinkerflags": "",
  "iosplistinject": "",
  "tvosplistinject": "",
  "androidinject": "",
  "androidmanifestinject": "",
  "androidactivityinject": "",
  "gradleinject": "\nimplementation 'com.google.android.gms:play-services-ads-identifier:17.0.0'\nimplementation 'com.google.firebase:firebase-messaging:21.0.0'\ncompile fileTree(dir: \"libs-aar\", include: [\"*.jar\", \"*.aar\" ])\n",
  "androidcodeinjection": "<YYAndroidGradleDependencies>\nimplementation 'com.google.android.gms:play-services-ads-identifier:17.0.0'\nimplementation 'com.google.firebase:firebase-messaging:21.0.0'\ncompile fileTree(dir: \"libs-aar\", include: [\"*.jar\", \"*.aar\" ])\n</YYAndroidGradleDependencies>\n\n",
  "hasConvertedCodeInjection": true,
  "ioscodeinjection": "",
  "tvoscodeinjection": "",
  "iosSystemFrameworkEntries": [
    {"weakReference":true,"resourceVersion":"1.0","name":"Security.framework","tags":[],"resourceType":"GMExtensionFrameworkEntry",},
    {"weakReference":true,"resourceVersion":"1.0","name":"AdSupport.framework","tags":[],"resourceType":"GMExtensionFrameworkEntry",},
    {"weakReference":true,"resourceVersion":"1.0","name":"iAd.framework","tags":[],"resourceType":"GMExtensionFrameworkEntry",},
    {"weakReference":true,"resourceVersion":"1.0","name":"UserNotifications.framework","tags":[],"resourceType":"GMExtensionFrameworkEntry",},
  ],
  "tvosSystemFrameworkEntries": [],
  "iosThirdPartyFrameworkEntries": [],
  "tvosThirdPartyFrameworkEntries": [],
  "IncludedResources": [],
  "androidPermissions": [
    "android.permission.WAKE_LOCK",
    "com.google.android.c2dm.permission.RECEIVE",
    "android.permission.ACCESS_NETWORK_STATE",
    "android.permission.INTERNET",
    "com.google.android.gms.permission.AD_ID",
  ],
  "copyToTargets": 12,
  "iosCocoaPods": "",
  "tvosCocoaPods": "",
  "iosCocoaPodDependencies": "",
  "tvosCocoaPodDependencies": "",
  "parent": {
    "name": "Extensions",
    "path": "folders/Extensions.yy",
  },
  "resourceVersion": "1.2",
  "name": "ByteBrewExtension",
  "tags": [],
  "resourceType": "GMExtension",
}