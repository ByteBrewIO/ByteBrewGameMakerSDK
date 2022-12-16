//
//  ByteBrewGameMakeriOSLibrary.h
//  ByteBrewGameMakeriOSLibrary
//
//  Created by Cameron Hozouri on 5/9/21.
//

#import <Foundation/Foundation.h>

@interface ByteBrewGameMakeriOSPlugin : NSObject
+(void)InitializeByteBrew:(NSString*) gameID SecretKey:(NSString*) secretKey EngineVersion:(NSString*) engineV BuildVersion:(NSString*) buildV;
+(void)StartPushNotification;
+(void) AddNewCustomEvent:(NSString*) eventName;
+(void) AddNewCustomEventWithNumericValue:(NSString *)eventName Value:(double) value;
+(void) AddNewCustomEventWithStringValue:(NSString *)eventName Value:(NSString*) value;
+(void) AddCustomDataAttributeWithStringValue:(NSString *)key Value:(NSString *)value;
+(void) AddCustomDataAttributeWithDoubleValue:(NSString *)key Value:(double)value;
+(void) AddCustomDataAttributeWithIntegerValue:(NSString *)key Value:(int)value;
+(void) AddCustomDataAttributeWithBooleanValue:(NSString *)key Value:(BOOL)value;
+(void) AddProgressionEvent:(NSString*) progressionStatus Environment:(NSString*) environment Stage:(NSString*) stage;
+(void) AddProgressionEventWithNumericValue:(NSString*) progressionStatus Environment:(NSString*) environment Stage:(NSString*) stage Value:(double) value;
+(void) AddProgressionEventWithStringValue:(NSString*) progressionStatus Environment:(NSString*) environment Stage:(NSString*) stage Value:(NSString*) value;
+(void) NewTrackedAdEvent:(NSString*) placementType AdLocation:(NSString*) adLoaction;
+(void) NewTrackedAdEvent:(NSString*) placementType AdLocation:(NSString*) adLocation AdID:(NSString*) adID;
+(void) NewTrackedAdEvent:(NSString*) placementType AdLocation:(NSString*) adLocation AdID:(NSString*) adID AdProvider:(NSString*) adProvider;
+(void) AddTrackedInAppPurchaseEvent:(NSString*) store Currency:(NSString*) currency Amount:(double) amount ItemID:(NSString*) itemID Category:(NSString*) category;
+(void) TrackInAppPurchaseEventAndValidate:(NSString*) store Currency:(NSString*) currency Amount:(double) amount ItemID:(NSString*) itemID Category:(NSString*) category Receipt:(NSString*) receipt Signature:(NSString*) signature;
typedef void (^FinishedValidation)(NSMutableDictionary* purchaseResult);
+(void) ValidateiOSInAppPurchaseEvent:(NSString*) store Currency:(NSString*) currency Amount:(Float64) amount ItemID:(NSString*) itemID Category:(NSString*) category Receipt:(NSString*) receipt finishedValidationResult:(FinishedValidation) validationResult;
+(BOOL) HasRemoteConfigs;
+(void) LoadRemoteConfigs;
+(NSString *) RetrieveRemoteConfigs:(NSString*) key DefaultValue:(NSString*) defaultValue;
+(NSString*) GetUserID;
+(void) RestartTracking;
+(void) StopTracking;
@end
