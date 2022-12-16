package ${YYAndroidPackageName};

import com.bytebrew.bytebrewgamemakerandroidlib.ByteBrewPurchaseValidationResult;
import com.bytebrew.bytebrewgamemakerandroidlib.ByteBrewPushNotifications;
import com.yoyogames.runner.RunnerJNILib;
import ${YYAndroidPackageName}.RunnerActivity;
import com.bytebrew.bytebrewgamemakerandroidlib.ByteBrewHandler;
import com.bytebrew.bytebrewgamemakerandroidlib.ByteBrewListener;

import android.content.Context;
import android.util.Log;
import org.json.JSONException;
import org.json.JSONObject;


public class ByteBrewCaller {

    private boolean initializationCalled = false;

    public void InitializeByteBrew(String appID, String appKey, String engineVersion, String buildVersion)
    {
        ByteBrewListener.CreateListeners(RunnerActivity.CurrentActivity.getApplication());

        ByteBrewHandler.InitializeByteBrew(appID, appKey, engineVersion, buildVersion, RunnerActivity.CurrentActivity.getApplicationContext().getPackageName(), RunnerActivity.CurrentActivity.getApplicationContext());
        initializationCalled = true;
    }

    public void StartPushNotifications()
    {
        if(!initializationCalled) {
            Log.w("ByteBrew Warning", "You must call InitializeByteBrew first.");
            return;
        }

        ByteBrewPushNotifications.StartByteBrewPushNotifications(RunnerActivity.CurrentActivity);
    }

    public void SetCustomUserDataAttributeWithNumeric(String key, double value)
    {
        JSONObject data = new JSONObject();
        try {
            data.put("key", key);
            data.put("value", Double.toString(value));
            data.put("type", "double");

            ByteBrewHandler.SendCustomDataAttributes(data.toString());
        }
        catch (JSONException exception) {
            Log.i("ByteBrew Exception", exception.getMessage());
        }
    }

    public void SetCustomUserDataAttributeWithString(String key, String value)
    {
        JSONObject data = new JSONObject();
        try {
            data.put("key", key);
            data.put("value", value);
            data.put("type", "string");

            ByteBrewHandler.SendCustomDataAttributes(data.toString());
        }
        catch (JSONException exception) {
            Log.i("ByteBrew Exception", exception.getMessage());
        }
    }

    public void SetCustomUserDataAttributeWithInt(String key, String value)
    {
        JSONObject data = new JSONObject();
        try {
            data.put("key", key);
            data.put("value", value);
            data.put("type", "integer");

            ByteBrewHandler.SendCustomDataAttributes(data.toString());
        }
        catch (JSONException exception) {
            Log.i("ByteBrew Exception", exception.getMessage());
        }
    }

    public void SetCustomUserDataAttributeWithBool(String key, String value)
    {
        JSONObject data = new JSONObject();
        try {
            data.put("key", key);
            data.put("value", Boolean.toString(Boolean.parseBoolean(value)));
            data.put("type", "boolean");

            ByteBrewHandler.SendCustomDataAttributes(data.toString());
        }
        catch (JSONException exception) {
            Log.i("ByteBrew Exception", exception.getMessage());
        }
    }

    public void AddNewCustomEvent(String eventName)
    {

        JSONObject event = new JSONObject();
        try {
            event.put("category", "custom");
            JSONObject externalData = new JSONObject();
            externalData.put("eventType", eventName);
            event.put("externalData", externalData);

            ByteBrewHandler.CreateCustomEvent(event.toString());
        }
        catch (JSONException exception) {
            Log.i("ByteBrew Exception", exception.getMessage());
        }
    }

    public void AddNewCustomEventWithStringValue(String eventName, String value)
    {

        JSONObject event = new JSONObject();
        try {

            JSONObject externalData = new JSONObject();
            externalData.put("eventType", eventName);
            externalData.put("value", value);

            event.put("category", "custom");
            event.put("externalData", externalData);

            ByteBrewHandler.CreateCustomEvent(event.toString());
        }
        catch (JSONException exception) {
            Log.i("ByteBrew Exception", exception.getMessage());
        }

    }

    public void AddNewCustomEventWithNumericValue(String eventName, double value)
    {

        JSONObject event = new JSONObject();
        try {

            JSONObject externalData = new JSONObject();
            externalData.put("eventType", eventName);
            externalData.put("value", Double.toString(value));

            event.put("category", "custom");
            event.put("externalData", externalData);

            ByteBrewHandler.CreateCustomEvent(event.toString());
        }
        catch (JSONException exception) {
            Log.i("ByteBrew Exception", exception.getMessage());
        }
    }

    public void AddProgressionEvent(String status, String environment, String stage)
    {

        if(!status.equals("Started") && !status.equals("Completed") && !status.equals("Failed")) {
            Log.i("ByteBrew Exception", "Progression event must be:  Started, Completed, or Failed. It is case sensitive.");
            return;
        }

        JSONObject event = new JSONObject();
        try {

            JSONObject externalData = new JSONObject();
            externalData.put("progressionStatus", status);
            externalData.put("progressionEnvironment", environment);
            externalData.put("progressionStage", stage);

            event.put("category", "progression");
            event.put("externalData", externalData);

            ByteBrewHandler.CreateCustomEvent(event.toString());
        }
        catch (JSONException exception) {
            Log.i("ByteBrew Exception", exception.getMessage());
        }

    }

    public void AddProgressionEventWithStringValue(String status, String environment, String stage, String value)
    {

        if(!status.equals("Started") && !status.equals("Completed") && !status.equals("Failed")) {
            Log.i("ByteBrew Exception", "Progression event must be:  Started, Completed, or Failed. It is case sensitive.");
            return;
        }

        JSONObject event = new JSONObject();
        try {

            JSONObject externalData = new JSONObject();
            externalData.put("progressionStatus", status);
            externalData.put("progressionEnvironment", environment);
            externalData.put("progressionStage", stage);
            externalData.put("progressionValue", value);

            event.put("category", "progression");
            event.put("externalData", externalData);

            ByteBrewHandler.CreateCustomEvent(event.toString());
        }
        catch (JSONException exception) {
            Log.i("ByteBrew Exception", exception.getMessage());
        }
    }

    public void AddProgressionEventWithNumericValue(String status, String environment, String stage, double value)
    {

        if(!status.equals("Started") && !status.equals("Completed") && !status.equals("Failed")) {
            Log.i("ByteBrew Exception", "Progression event must be:  Started, Completed, or Failed. It is case sensitive.");
            return;
        }

        JSONObject event = new JSONObject();
        try {

            JSONObject externalData = new JSONObject();
            externalData.put("progressionStatus", status);
            externalData.put("progressionEnvironment", environment);
            externalData.put("progressionStage", stage);
            externalData.put("progressionValue", Double.toString(value));

            event.put("category", "progression");
            event.put("externalData", externalData);

            ByteBrewHandler.CreateCustomEvent(event.toString());
        }
        catch (JSONException exception) {
            Log.i("ByteBrew Exception", exception.getMessage());
        }

    }

    public void NewTrackedAdEvent(String placementType, String adLocation)
    {
        if(!placementType.equals("Reward") && !placementType.equals("Interstitial") && !placementType.equals("Banner")) {
            Log.w("ByteBrew Warning", "Placement Type must be either, Reward, Interstitial, or Banner. This will cause a error in future SDKs, so please update to these strings.");
        }

        JSONObject event = new JSONObject();
        try {

            JSONObject externalData = new JSONObject();
            externalData.put("eventType", "adEvent");
            externalData.put("placementType", placementType);
            externalData.put("adLocation", adLocation);

            event.put("category", "custom");
            event.put("externalData", externalData);

            ByteBrewHandler.CreateCustomEvent(event.toString());
        }
        catch (JSONException exception) {
            Log.i("ByteBrew Exception", exception.getMessage());
        }

    }

    public void NewTrackedAdEventWithAdID(String placementType, String adLocation, String AdID)
    {

        if(!placementType.equals("Reward") && !placementType.equals("Interstitial") && !placementType.equals("Banner")) {
            Log.w("ByteBrew Warning", "Placement Type must be either, Reward, Interstitial, or Banner. This will cause a error in future SDKs, so please update to these strings.");
        }

        JSONObject event = new JSONObject();
        try {

            JSONObject externalData = new JSONObject();
            externalData.put("eventType", "adEvent");
            externalData.put("placementType", placementType);
            externalData.put("adLocation", adLocation);
            externalData.put("ADID", AdID);

            event.put("category", "custom");
            event.put("externalData", externalData);

            ByteBrewHandler.CreateCustomEvent(event.toString());
        }
        catch (JSONException exception) {
            Log.i("ByteBrew Exception", exception.getMessage());
        }

    }

    public void NewTrackedAdEventWithAllOptions(String placementType, String adLocation, String AdID, String adProvider)
    {

        if(!placementType.equals("Reward") && !placementType.equals("Interstitial") && !placementType.equals("Banner")) {
            Log.w("ByteBrew Warning", "Placement Type must be either, Reward, Interstitial, or Banner. This will cause a error in future SDKs, so please update to these strings.");
        }

        JSONObject event = new JSONObject();
        try {

            JSONObject externalData = new JSONObject();
            externalData.put("eventType", "adEvent");
            externalData.put("placementType", placementType);
            externalData.put("adLocation", adLocation);
            externalData.put("ADID", AdID);
            externalData.put("adProvider", adProvider);

            event.put("category", "custom");
            event.put("externalData", externalData);

            ByteBrewHandler.CreateCustomEvent(event.toString());
        }
        catch (JSONException exception) {
            Log.i("ByteBrew Exception", exception.getMessage());
        }

    }

    public void TrackInAppPurchaseEvent(String store, String currency, double amount, String itemID, String category)
    {

        JSONObject event = new JSONObject();
        try {

            JSONObject externalData = new JSONObject();
            externalData.put("eventType", "IAPEvent");
            externalData.put("store", store);
            externalData.put("currency", currency);
            externalData.put("amount", Double.toString(amount));
            externalData.put("itemID", itemID);
            externalData.put("category", category);

            event.put("category", "custom");
            event.put("externalData", externalData);

            ByteBrewHandler.CreateCustomEvent(event.toString());
        }
        catch (JSONException exception) {
            Log.i("ByteBrew Exception", exception.getMessage());
        }

    }

    public void TrackInAppPurchaseEventAndValidate(String store, String currency, double amount, String itemID, String category, String receipt, String signature)
    {

        JSONObject event = new JSONObject();
        try {

            JSONObject externalData = new JSONObject();
            externalData.put("eventType", "IAPEvent");
            externalData.put("store", store);
            externalData.put("currency", currency);
            externalData.put("amount", Double.toString(amount));
            externalData.put("itemID", itemID);
            externalData.put("category", category);
            externalData.put("receipt", receipt);
            externalData.put("signature", signature);

            event.put("category", "custom");
            event.put("externalData", externalData);

            ByteBrewHandler.CreateCustomEvent(event.toString());
        }
        catch (JSONException exception) {
            Log.i("ByteBrew Exception", exception.getMessage());
        }

    }

    public void ValidateAndReturnInAppPurchaseEvent(String store, String currency, double amount, String itemID, String category, String receipt, String signature)
    {

        JSONObject event = new JSONObject();
        try {

            JSONObject externalData = new JSONObject();
            externalData.put("eventType", "IAPEvent");
            externalData.put("store", store);
            externalData.put("currency", currency);
            externalData.put("amount", Double.toString(amount));
            externalData.put("itemID", itemID);
            externalData.put("category", category);
            externalData.put("receipt", receipt);
            externalData.put("signature", signature);

            event.put("category", "custom");
            event.put("externalData", externalData);

            ByteBrewHandler.ValidateIAPEvent(event.toString(), new ByteBrewPurchaseValidationResult() {
                @Override
                public void purchaseValidated(JSONObject result) {
                    //Send back to GameMaker
                    try {
                        int dsMapIndex = RunnerJNILib.jCreateDsMap(null, null,null);
                        RunnerJNILib.DsMapAddString(dsMapIndex, "type", "bytebrew_purchase_status");
                        RunnerJNILib.DsMapAddString(dsMapIndex, "isValid", String.valueOf(result.getBoolean("isValid")));
                        RunnerJNILib.DsMapAddString(dsMapIndex, "itemID", result.getString("itemID"));
                        RunnerJNILib.CreateAsynEventWithDSMap(dsMapIndex, 70);
                    } catch (JSONException exception) {
                        Log.i("ByteBrew Exception", exception.getMessage());
                    }
                }
            });
        }
        catch (JSONException exception) {
            Log.i("ByteBrew Exception", exception.getMessage());
        }

    }

    public void LoadRemoteConfigs() {
        ByteBrewHandler.LoadRemoteConfigurations();

    }

    public String RetrieveRemoteConfigValue(String key, String defaultValue) {
        return ByteBrewHandler.GetRemoteConfigForKey(key, defaultValue);
    }

    public void RestartTracking()
    {
        ByteBrewHandler.StartTracking(RunnerActivity.CurrentActivity.getApplicationContext());

    }

    public void StopTracking()
    {
        ByteBrewHandler.StopTracking(RunnerActivity.CurrentActivity.getApplicationContext());

    }

    public Boolean HasRemoteConfigsBeenSet()
    {
        return ByteBrewHandler.IsRemoteConfigsSet();
    }

    public String GetUserID()
    {
        return ByteBrewHandler.GetUserID();
    }
}
