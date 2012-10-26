package ca.arae.campusbuddy;

import java.io.BufferedInputStream;
import java.io.BufferedReader;
import java.io.InputStream;
import java.io.InputStreamReader;
import java.lang.reflect.Type;
import java.net.HttpURLConnection;
import java.net.URL;
import java.util.List;

import com.google.gson.Gson;
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

}