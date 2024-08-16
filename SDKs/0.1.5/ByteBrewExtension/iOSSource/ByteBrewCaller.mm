//
//  ByteBrewCaller.h
//  ByteBrewCaller
//
//  Created by Cameron Hozouri on 5/9/21.
//

#import "ByteBrewGameMakeriOSLibrary.h"
#import "ByteBrewCaller.h"
#include <asl.h>
#include <stdio.h>

@implementation ByteBrewCaller

const int EVENT_OTHER_SOCIAL = 70;
extern int CreateDsMap( int _num, ... );
extern void CreateAsynEventWithDSMap(int dsmapindex, int event_index);
extern "C" void dsMapAddInt(int _dsMap, char* _key, int _value);
extern "C" void dsMapAddString(int _dsMap, char* _key, char* _value);

-(void)InitializeByteBrew:(char *) gameID SecretKey:(char*) secretKey EngineVersion:(char*) engineV BuildVersion:(char*) buildV
{
    NSString *gameId = [NSString stringWithFormat:@"%s",gameID];
    NSString *gameKey = [NSString stringWithFormat:@"%s",secretKey];
    NSString *engineVersion = [NSString stringWithFormat:@"%s",engineV];
    NSString *buildVersion = [NSString stringWithFormat:@"%s",buildV];
    
    [ByteBrewGameMakeriOSPlugin InitializeByteBrew:gameId SecretKey:gameKey EngineVersion:engineVersion BuildVersion:buildVersion];
}

-(void) StartPushNotifications {
    [ByteBrewGameMakeriOSPlugin StartPushNotification];
}

-(void) AddNewCustomEvent:(char*) eventName {
    NSString *event = [NSString stringWithFormat:@"%s",eventName];
    
    [ByteBrewGameMakeriOSPlugin AddNewCustomEvent:event];
}
-(void) AddNewCustomEventWithNumericValue:(char *)eventName Value:(double) value {
    NSString *event = [NSString stringWithFormat:@"%s",eventName];
    
    [ByteBrewGameMakeriOSPlugin AddNewCustomEventWithNumericValue:event Value:value];
}
-(void) AddNewCustomEventWithStringValue:(char *)eventName Value:(char*) value {
    NSString *event = [NSString stringWithFormat:@"%s",eventName];
    NSString *valueSTR = [NSString stringWithFormat:@"%s",value];
    
    [ByteBrewGameMakeriOSPlugin AddNewCustomEventWithStringValue:event Value:valueSTR];
}

-(void) SetCustomUserDataAttributeWithString:(char *)key Value:(char*) value {
    NSString *keySTR = [NSString stringWithFormat:@"%s",key];
    NSString *valueSTR = [NSString stringWithFormat:@"%s",value];

    [ByteBrewGameMakeriOSPlugin AddCustomDataAttributeWithStringValue:keySTR Value:valueSTR];
}

-(void) SetCustomUserDataAttributeWithNumeric:(char *)key Value:(double) value {
    NSString *keySTR = [NSString stringWithFormat:@"%s",key];

    [ByteBrewGameMakeriOSPlugin AddCustomDataAttributeWithDoubleValue:keySTR Value:value];
}

-(void) SetCustomUserDataAttributeWithInt:(char *)key Value:(char*) value {
    NSString *keySTR = [NSString stringWithFormat:@"%s",key];
    NSString *valueSTR = [NSString stringWithFormat:@"%s",value];

    [ByteBrewGameMakeriOSPlugin AddCustomDataAttributeWithIntegerValue:keySTR Value:[value intValue]];
}

-(void) SetCustomUserDataAttributeWithBool:(char *)key Value:(char*) value {
    NSString *keySTR = [NSString stringWithFormat:@"%s",key];
    NSString *valueSTR = [NSString stringWithFormat:@"%s",value];

    BOOL valBool = NO;
    
    if([[value lowercaseString] isEqualToString:@"true"]) {
        valBool = YES;
    }

    [ByteBrewGameMakeriOSPlugin AddCustomDataAttributeWithBooleanValue:keySTR Value:valBool];
}

-(void) AddProgressionEvent:(char *) status Environment:(char*) environment Stage:(char*) stage {
    NSString *statusSTR = [NSString stringWithFormat:@"%s",status];
    NSString *environmentSTR = [NSString stringWithFormat:@"%s",environment];
    NSString *stageSTR = [NSString stringWithFormat:@"%s",stage];
    
    [ByteBrewGameMakeriOSPlugin AddProgressionEvent:statusSTR Environment:environmentSTR Stage:stageSTR];
}
-(void) AddProgressionEventWithNumericValue:(char *) status Environment:(char*) environment Stage:(char*) stage Value:(double) value {
    NSString *statusSTR = [NSString stringWithFormat:@"%s",status];
    NSString *environmentSTR = [NSString stringWithFormat:@"%s",environment];
    NSString *stageSTR = [NSString stringWithFormat:@"%s",stage];
    
    [ByteBrewGameMakeriOSPlugin AddProgressionEventWithNumericValue:statusSTR Environment:environmentSTR Stage:stageSTR Value:value];
}
-(void) AddProgressionEventWithStringValue:(char *) status Environment:(char*) environment Stage:(char*) stage Value:(char*) value {
    NSString *statusSTR = [NSString stringWithFormat:@"%s",status];
    NSString *environmentSTR = [NSString stringWithFormat:@"%s",environment];
    NSString *stageSTR = [NSString stringWithFormat:@"%s",stage];
    NSString *valueSTR = [NSString stringWithFormat:@"%s",value];
    
    [ByteBrewGameMakeriOSPlugin AddProgressionEventWithStringValue:statusSTR Environment:environmentSTR Stage:stageSTR Value:valueSTR];
}
-(void) NewTrackedAdEvent:(char*) placementType AdLocation:(char*) adLocation {
    NSString *placementTypeSTR = [NSString stringWithFormat:@"%s",placementType];
    NSString *adLocationSTR = [NSString stringWithFormat:@"%s",adLocation];
    
    [ByteBrewGameMakeriOSPlugin NewTrackedAdEvent:placementTypeSTR AdLocation:adLocationSTR];
}
-(void) NewTrackedAdEventWithAdID:(char*) placementType AdLocation:(char*) adLocation AdID:(char*) adID {
    NSString *placementTypeSTR = [NSString stringWithFormat:@"%s",placementType];
    NSString *adLocationSTR = [NSString stringWithFormat:@"%s",adLocation];
    NSString *adIdSTR = [NSString stringWithFormat:@"%s",adID];
    
    [ByteBrewGameMakeriOSPlugin NewTrackedAdEvent:placementTypeSTR AdLocation:adLocationSTR AdID:adIdSTR];
}
-(void) NewTrackedAdEventWithAllOptions:(char*) placementType AdLocation:(char*) adLocation AdID:(char*) adID AdProvider:(char*) adProvider {
    NSString *placementTypeSTR = [NSString stringWithFormat:@"%s",placementType];
    NSString *adLocationSTR = [NSString stringWithFormat:@"%s",adLocation];
    NSString *adIdSTR = [NSString stringWithFormat:@"%s",adID];
    NSString *adProviderSTR = [NSString stringWithFormat:@"%s",adProvider];
    
    [ByteBrewGameMakeriOSPlugin NewTrackedAdEvent:placementTypeSTR AdLocation:adLocationSTR AdID:adIdSTR AdProvider:adProviderSTR];
}
-(void) NewTrackedAdEventWithRevenue:(char*) placementType AdProvider:(char*) adProvider AdUnitName:(char*) adUnitName Revenue:(double)revenue {
    NSString *placementTypeSTR = [NSString stringWithFormat:@"%s",placementType];
    NSString *adProviderSTR = [NSString stringWithFormat:@"%s",adProvider];
    NSString *adUnitNameSTR = [NSString stringWithFormat:@"%s",adUnitName];
    
    [ByteBrewGameMakeriOSPlugin NewTrackedAdEvent:placementTypeSTR AdProvider:adProviderSTR AdUnitName:adUnitNameSTR Revenue:revenue];
}
-(void) NewTrackedAdEventWithAdLocationRevenue:(char*) placementType AdProvider:(char*) adProvider AdUnitName:(char*) adUnitName AdLocation:(char*) adLocation Revenue:(double)revenue {
    NSString *placementTypeSTR = [NSString stringWithFormat:@"%s",placementType];
    NSString *adProviderSTR = [NSString stringWithFormat:@"%s",adProvider];
    NSString *adUnitNameSTR = [NSString stringWithFormat:@"%s",adUnitName];
    NSString *adLocationSTR = [NSString stringWithFormat:@"%s",adLocation];

    [ByteBrewGameMakeriOSPlugin NewTrackedAdEvent:placementTypeSTR AdProvider:adProviderSTR AdUnitName:adUnitNameSTR AdLocation:adLocationSTR Revenue:revenue];
}
-(void) TrackInAppPurchaseEvent:(char*) store Currency:(char*) currency Amount:(double) amount ItemID:(char*) itemID Category:(char*) category {
    NSString *storeSTR = [NSString stringWithFormat:@"%s",store];
    NSString *currencySTR = [NSString stringWithFormat:@"%s",currency];
    NSString *itemIDSTR = [NSString stringWithFormat:@"%s",itemID];
    NSString *categorySTR = [NSString stringWithFormat:@"%s",category];
    
    [ByteBrewGameMakeriOSPlugin AddTrackedInAppPurchaseEvent:storeSTR Currency:currencySTR Amount:amount ItemID:itemIDSTR Category:categorySTR];
}
-(void) TrackInAppPurchaseEventAndValidate:(char*) store Currency:(char*) currency Amount:(double) amount ItemID:(char*) itemID Category:(char*) category Receipt:(char*) receipt Signature:(char*) signature {
    NSString *storeSTR = [NSString stringWithFormat:@"%s",store];
    NSString *currencySTR = [NSString stringWithFormat:@"%s",currency];
    NSString *itemIDSTR = [NSString stringWithFormat:@"%s",itemID];
    NSString *categorySTR = [NSString stringWithFormat:@"%s",category];
    NSString *receiptSTR = [NSString stringWithFormat:@"%s",receipt];
    NSString *signatureSTR = [NSString stringWithFormat:@"%s",signature];
    
    [ByteBrewGameMakeriOSPlugin TrackInAppPurchaseEventAndValidate:storeSTR Currency:currencySTR Amount:amount ItemID:itemIDSTR Category:categorySTR Receipt:receiptSTR Signature:signatureSTR];
}

char* NSStringToCString(const NSString* nsString)
{
    if (nsString == NULL)
        return NULL;

    const char* nsStringUtf8 = [nsString UTF8String];
    
    char* cString = (char*)malloc(strlen(nsStringUtf8) + 1);
    strcpy(cString, nsStringUtf8);

    return cString;
}

-(void) ValidateAndReturnInAppPurchaseEvent:(char*) store Currency:(char*) currency Amount:(double) amount ItemID:(char*) itemID Category:(char*) category Receipt:(char*) receipt Signature:(char*) signature {
    NSString *storeSTR = [NSString stringWithFormat:@"%s",store];
    NSString *currencySTR = [NSString stringWithFormat:@"%s",currency];
    NSString *itemIDSTR = [NSString stringWithFormat:@"%s",itemID];
    NSString *categorySTR = [NSString stringWithFormat:@"%s",category];
    NSString *receiptSTR = [NSString stringWithFormat:@"%s",receipt];
    
    [ByteBrewGameMakeriOSPlugin ValidateiOSInAppPurchaseEvent:storeSTR Currency:currencySTR Amount:amount ItemID:itemIDSTR Category:categorySTR Receipt:receiptSTR finishedValidationResult:^(NSMutableDictionary *purchaseResult) {
        int dsMapIndex = CreateDsMap(1,
                        "type", 0.0, "bytebrew_purchase_status");
        NSNumber* blVa = [purchaseResult objectForKey:@"isValid"];
        
        char* valid = NSStringToCString(([blVa boolValue] ? @"true" : @"false"));
        char* validKey = NSStringToCString(@"isValid");
        
        char* itemIDRes = NSStringToCString([purchaseResult objectForKey:@"itemID"]);
        char* itemIDKey = NSStringToCString(@"itemID");
        dsMapAddString(dsMapIndex, validKey, valid);
        dsMapAddString(dsMapIndex, itemIDKey, itemIDRes);
        CreateAsynEventWithDSMap(dsMapIndex, EVENT_OTHER_SOCIAL);
    }];
}

-(NSString*) HasRemoteConfigsBeenSet {
    return [ByteBrewGameMakeriOSPlugin HasRemoteConfigs] ? @"true" : @"false";
}

-(void) LoadRemoteConfigs {
    [ByteBrewGameMakeriOSPlugin LoadRemoteConfigs];
}
-(NSString*) RetrieveRemoteConfigValue:(char*) key DefaultValue:(char*) defaultValue {
    NSString *keySTR = [NSString stringWithFormat:@"%s",key];
    NSString *defaultValueSTR = [NSString stringWithFormat:@"%s",defaultValue];
    
    NSString *retValue = [ByteBrewGameMakeriOSPlugin RetrieveRemoteConfigs:keySTR DefaultValue:defaultValueSTR];
    
    return retValue;
}

-(NSString*) GetUserID {
    return [ByteBrewGameMakeriOSPlugin GetUserID];
}

-(void) RestartTracking {
    [ByteBrewGameMakeriOSPlugin RestartTracking];
}
-(void) StopTracking {
    [ByteBrewGameMakeriOSPlugin StopTracking];
}
@end
