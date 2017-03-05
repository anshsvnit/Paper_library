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
    public static ArrayList<String> subject;
    public static ArrayList<String> exam;
    public static ArrayList<String> remark;
    public static ArrayList<String> fileLocation;
    public static String YEAR;

    public static final String JSON_ARRAY = "data";
    public static final String YEAR_ARRAY = "result";
    public static final String TABLE_DETAIL_ARRAY = "table_details";
    public static final String KEY_YEAR = "year";
    public static final String KEY_SUBJECT = "subject";
    public static final String KEY_EXAM = "exam";
    public static final String KEY_REMARK = "Remarks";
    public static final String KEY_LOCATION = "file_location";

    public static final String KEY_NUMBERS = "count";
    public static final String JSON_ARRAY_PAPERS = "data";

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

    protected void parseJSONPapers(String yearSelected){
        JSONObject jsonObject=null;
        subject = new ArrayList<String>();
        exam = new ArrayList<String>();
        remark = new ArrayList<String>();
        fileLocation = new ArrayList<String>();

        try {
            jsonObject = new JSONObject(json);
            dataArray = jsonObject.getJSONArray(JSON_ARRAY_PAPERS);
            Log.v("data in Array",dataArray.toString());

            for(int i=0;i<dataArray.length();i++){
                JSONObject jo = dataArray.getJSONObject(i);
                subject.add(jo.getString(KEY_SUBJECT));
                exam.add(jo.getString(KEY_EXAM));
                remark.add(jo.getString(KEY_REMARK));
                Log.v("Received location",jo.getString(KEY_LOCATION));
                fileLocation.add(jo.getString(KEY_LOCATION));
                YEAR = yearSelected;
            }
        } catch (JSONException e) {
            e.printStackTrace();
        }
    }

}

