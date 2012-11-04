package ca.arae.campusbuddy;

import java.io.BufferedInputStream;
import java.io.BufferedReader;
import java.io.DataOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.InputStreamReader;
import java.lang.reflect.Type;
import java.net.HttpURLConnection;
import java.net.URL;
import java.util.ArrayList;
import java.util.List;

import net.sf.json.JSONObject;

import com.google.gson.Gson;
import com.google.gson.JsonObject;
import com.google.gson.JsonParseException;
import com.google.gson.reflect.TypeToken;

import ca.arae.campusbuddy.Constants;

public class ActivityDataAccess {
	
	public static List<Activities> fetchActivities(String pUrl) {
		String jsonActivtity = "";
		try {
			URL url = new URL(Constants.kGetActivitiesUrl + pUrl);

			HttpURLConnection urlConnection = (HttpURLConnection) url.openConnection();
			urlConnection.setRequestMethod("GET");
			urlConnection.addRequestProperty("Content-Type", "application/json");
			urlConnection.addRequestProperty("ACCEPT", "application/json");
			urlConnection.addRequestProperty("X-ZUMO-APPLICATION", Constants.kMobileServiceAppId);

			try {
				InputStream in = new BufferedInputStream(urlConnection.getInputStream());
				BufferedReader bufferReader = new BufferedReader(new InputStreamReader(in));
				StringBuilder stringBuilderResponse = new StringBuilder();
				String line;
				while ((line = bufferReader.readLine()) != null) {
					stringBuilderResponse.append(line);
				}
				jsonActivtity = stringBuilderResponse.toString();
				
				Type collectionType = new TypeToken<List<Activities>>(){}.getType();
				List<Activities> activities = new Gson().fromJson(jsonActivtity, collectionType);
				
				return activities;
				
			} catch (Exception ex) {
				return null;
			} finally {
				urlConnection.disconnect();
			}
		} catch (Exception ex) {
			return null;
		}
		
	}
	
	public static String saveActivity(String[] params){
		JSONObject jsonUrl = new JSONObject();
		try {
			jsonUrl.put("Campus",params[0]);
			jsonUrl.put("Title", params[1]);
			jsonUrl.put("Description", params[2]);
			jsonUrl.put("Language",params[3]);
			jsonUrl.put("BuddyLanguage",params[4]);
		} catch (JsonParseException e) {
			e.getStackTrace();
		}

		HttpURLConnection urlConnection = null;
		try {
			URL url = new URL(Constants.kGetActivitiesUrl);
			urlConnection = (HttpURLConnection) url.openConnection();
			urlConnection.setDoOutput(true);
			urlConnection.setDoInput(true);
			urlConnection.setRequestMethod("POST");
			urlConnection.addRequestProperty("Content-Type","application/json");
			urlConnection.addRequestProperty("ACCEPT", "application/json");
			urlConnection.addRequestProperty("X-ZUMO-APPLICATION",Constants.kMobileServiceAppId);
			// Write JSON to Server
			DataOutputStream wr = new DataOutputStream(urlConnection.getOutputStream());
			wr.writeBytes(jsonUrl.toString());
			wr.flush();
			wr.close();
			int response = urlConnection.getResponseCode();
			InputStream inputStream = new BufferedInputStream(urlConnection.getInputStream());
			BufferedReader bufferedReader = new BufferedReader(new InputStreamReader(inputStream));
			StringBuilder stringBuilderResult = new StringBuilder();
			String line;
			while ((line = bufferedReader.readLine()) != null) {
				stringBuilderResult.append(line);
			}
			if (response == 201)
				return "SUCCESS";
			return "FAIL";

		} catch (IOException e) {
			e.printStackTrace();
			return "IOERROR";
		} finally {
			urlConnection.disconnect();
		}
	}
}