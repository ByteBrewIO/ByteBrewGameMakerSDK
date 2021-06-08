package ${YYAndroidPackageName};

import com.yoyogames.runner.RunnerJNILib;
import ${YYAndroidPackageName}.RunnerActivity;
import com.bytebrew.bytebrewgamemakerandroidlib.ByteBrewHandler;
import com.bytebrew.bytebrewgamemakerandroidlib.ByteBrewListener;

import android.content.Context;
import android.util.Log;
import org.json.JSONException;
import org.json.JSONObject;


public class ByteBrewCaller {

    public void InitializeByteBrew(String appID, String appKey, String engineVersion, String buildVersion)
    {
        ByteBrewListener.CreateListeners(RunnerActivity.CurrentActivity);

        ByteBrewHandler.InitializeByteBrew(appID, appKey, engineVersion, buildVersion, RunnerActivity.CurrentActivity.getApplicationContext().getPackageName(), RunnerActivity.CurrentActivity.getApplicationContext());
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
}
