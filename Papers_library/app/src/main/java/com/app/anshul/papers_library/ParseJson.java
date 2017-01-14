package com.app.anshul.papers_library;

import android.util.Log;

import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

import java.util.ArrayList;

/**
 * Created by anshul on 4/2/17.
 */

public class ParseJson {
    public static ArrayList<String> years;
    public static ArrayList<String> numbers;
    public static String tableName;

    public static final String JSON_ARRAY = "data";
    public static final String YEAR_ARRAY = "result";
    public static final String TABLE_DETAIL_ARRAY = "table_details";
    public static final String KEY_YEAR = "year";
    public static final String KEY_NUMBERS = "count";

    private JSONArray dataArray = null,yearArray = null;
    private JSONObject dataObject = null;

    private String json;

    public ParseJson(String json){
        this.json = json;
    }

    protected void parseJSON(){
        JSONObject jsonObject=null;
        try {
            //data=> {table_details=>[] ,result=>[]}
            jsonObject = new JSONObject(json);
            dataArray = jsonObject.getJSONArray(JSON_ARRAY);
            dataObject = dataArray.getJSONObject(0);
            tableName = dataObject.getJSONArray(TABLE_DETAIL_ARRAY).getString(0);
            yearArray = dataObject.getJSONArray(YEAR_ARRAY);

            years = new ArrayList<String>();
            numbers = new ArrayList<String>();

            for(int i=0;i<yearArray.length();i++){
                JSONObject jo = yearArray.getJSONObject(i);
                years.add(jo.getString(KEY_YEAR));
                numbers.add(jo.getString(KEY_NUMBERS));
            }
        } catch (JSONException e) {
            e.printStackTrace();
        }
    }
}

