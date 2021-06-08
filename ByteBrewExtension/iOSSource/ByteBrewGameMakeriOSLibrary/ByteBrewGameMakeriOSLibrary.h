//
//  ByteBrewGameMakeriOSLibrary.h
//  ByteBrewGameMakeriOSLibrary
//
//  Created by Cameron Hozouri on 5/9/21.
//

#import <Foundation/Foundation.h>

@interface ByteBrewNativeiOSPlugin : NSObject
+(void)InitializeByteBrew:(NSString*) gameID SecretKey:(NSString*) secretKey EngineVersion:(NSString*) engineV BuildVersion:(NSString*) buildV;
+(void) AddNewCustomEvent:(NSString*) eventName;
+(void) AddNewCustomEventWithNumericValue:(NSString *)eventName Value:(double) value;
+(void) AddNewCustomEventWithStringValue:(NSString *)eventName Value:(NSString*) value;
+(void) AddProgressionEvent:(NSString*) progressionStatus Environment:(NSString*) environment Stage:(NSString*) stage;
+(void) AddProgressionEventWithNumericValue:(NSString*) progressionStatus Environment:(NSString*) environment Stage:(NSString*) stage Value:(double) value;
+(void) AddProgressionEventWithStringValue:(NSString*) progressionStatus Environment:(NSString*) environment Stage:(NSString*) stage Value:(NSString*) value;
+(void) NewTrackedAdEvent:(NSString*) placementType AdLocation:(NSString*) adLoaction;
+(void) NewTrackedAdEvent:(NSString*) placementType AdLocation:(NSString*) adLocation AdID:(NSString*) adID;
+(void) NewTrackedAdEvent:(NSString*) placementType AdLocation:(NSString*) adLocation AdID:(NSString*) adID AdProvider:(NSString*) adProvider;
+(void) AddTrackedInAppPurchaseEvent:(NSString*) store Currency:(NSString*) currency Amount:(double) amount ItemID:(NSString*) itemID Category:(NSString*) category;
+(void) TrackInAppPurchaseEventAndValidate:(NSString*) store Currency:(NSString*) currency Amount:(double) amount ItemID:(NSString*) itemID Category:(NSString*) category Receipt:(NSString*) receipt Signature:(NSString*) signature;
+(void) LoadRemoteConfigs;
+(NSString *) RetrieveRemoteConfigs:(NSString*) key DefaultValue:(NSString*) defaultValue;
+(void) RestartTracking;
+(void) StopTracking;
@end
