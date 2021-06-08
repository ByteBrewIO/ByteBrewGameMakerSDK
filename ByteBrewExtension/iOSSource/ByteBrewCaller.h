//
//  ByteBrewGameMakeriOSLibrary.h
//  ByteBrewGameMakeriOSLibrary
//
//  Created by Cameron Hozouri on 5/9/21.
//

@interface ByteBrewCaller : NSObject
{
}

-(void)InitializeByteBrew:(char *) gameID SecretKey:(char*) secretKey EngineVersion:(char*) engineV BuildVersion:(char*) buildV;
-(void) AddNewCustomEvent:(char*) eventName;
-(void) AddNewCustomEventWithNumericValue:(char *)eventName Value:(double) value;
-(void) AddNewCustomEventWithStringValue:(char *)eventName Value:(char*) value;
-(void) AddProgressionEvent:(char *) status Environment:(char*) environment Stage:(char*) stage;
-(void) AddProgressionEventWithNumericValue:(char *) status Environment:(char*) environment Stage:(char*) stage Value:(double) value;
-(void) AddProgressionEventWithStringValue:(char *) status Environment:(char*) environment Stage:(char*) stage Value:(char*) value;
-(void) NewTrackedAdEvent:(char*) placementType AdLocation:(char*) adLoaction;
-(void) NewTrackedAdEventWithAdID:(char*) placementType AdLocation:(char*) adLocation AdID:(char*) adID;
-(void) NewTrackedAdEventWithAllOptions:(char*) placementType AdLocation:(char*) adLocation AdID:(char*) adID AdProvider:(char*) adProvider;
-(void) TrackInAppPurchaseEvent:(char*) store Currency:(char*) currency Amount:(double) amount ItemID:(char*) itemID Category:(char*) category;
-(void) TrackInAppPurchaseEventAndValidate:(char*) store Currency:(char*) currency Amount:(double) amount ItemID:(char*) itemID Category:(char*) category Receipt:(char*) receipt Signature:(char*) signature;
-(void) LoadRemoteConfigs;
-(NSString*) RetrieveRemoteConfigValue:(char*) key DefaultValue:(char*) defaultValue;
-(void) RestartTracking;
-(void) StopTracking;
@end
