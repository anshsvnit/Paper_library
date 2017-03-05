package com.app.anshul.papers_library;

import android.content.Context;
import android.content.Intent;
import android.os.Bundle;
import android.util.Log;
import android.widget.Toast;

import com.android.volley.NetworkResponse;
import com.android.volley.NoConnectionError;
import com.android.volley.Request;
import com.android.volley.Response;
import com.android.volley.TimeoutError;
import com.android.volley.VolleyError;

import org.json.JSONException;
import org.json.JSONObject;

import java.io.ByteArrayOutputStream;
import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.IOException;
import java.io.InputStream;
import java.util.HashMap;
import java.util.Map;

import static com.app.anshul.papers_library.NetworkConnection.context;


/**
 * Created by anshul on 29/12/16.
 */

public class MultipartRequest {

    private static MultipartRequest instance;


    public static MultipartRequest getInstance() {
        if (instance == null) {
            instance = new MultipartRequest();
        }
        return instance;
    }

    public void savePDFFile(final String address, final String pdffilename, final Bundle details , final Bundle bundle, final Context context) {


        VolleyMultipartRequest multipartRequest = new VolleyMultipartRequest(Request.Method.POST, constantResources.urlupload, new Response.Listener<NetworkResponse>() {
            @Override
            public void onResponse(NetworkResponse response) {

                String resultResponse = new String(response.data);
                Log.i("response",resultResponse);
                try {
                    JSONObject result = new JSONObject(resultResponse);
                    String status = result.getString("status");
                    String message = result.getString("message");

                    Log.i("status", status);
                    Log.i("Messsage", message);

                    Toast.makeText(context, message, Toast.LENGTH_SHORT).show();

                } catch (JSONException e) {
                    e.printStackTrace();
                }

            }
        }, new Response.ErrorListener() {
            @Override
            public void onErrorResponse(VolleyError error) {
                NetworkResponse networkResponse = error.networkResponse;
                String errorMessage = "Unknown error";
                if (networkResponse == null) {
                    if (error.getClass().equals(TimeoutError.class)) {
                        errorMessage = "Request timeout";
                    } else if (error.getClass().equals(NoConnectionError.class)) {
                        errorMessage = "Failed to connect server";
                    }
                } else {
                    String result = new String(networkResponse.data);
                    try {
                        JSONObject response = new JSONObject(result);
                        String status = response.getString("status");
                        String message = response.getString("message");

                        Log.e("Error Status", status);
                        Log.e("Error Message", message);

                        if (networkResponse.statusCode == 404) {
                            errorMessage = "Resource not found";
                        } else if (networkResponse.statusCode == 401) {
                            errorMessage = message + " Please login again";
                        } else if (networkResponse.statusCode == 400) {
                            errorMessage = message + " Check your inputs";
                        } else if (networkResponse.statusCode == 500) {
                            errorMessage = message + " Something is getting wrong";
                        }
                    } catch (JSONException e) {
                        e.printStackTrace();
                    }
                }
                Log.i("Error", errorMessage);
                Toast.makeText(context, errorMessage, Toast.LENGTH_SHORT).show();

                error.printStackTrace();
            }
        }) {
            @Override
            protected Map<String, String> getParams() {
                Map<String, String> params = new HashMap<>();
                    params.put("yearofexam", details.getString("yearofExam"));
                    params.put("subject", details.getString("subject"));
                    params.put("exam", details.getString("exam"));
                    params.put("course",bundle.getString("course"));
                    params.put("year",bundle.getString("year"));
                    params.put("semester",bundle.getString("sem"));
                    params.put("department",bundle.getString("dept"));
                    params.put("filename",pdffilename);
                try{
                    params.put("remark", details.getString("remark"));
                }
                catch (Exception e){
                    Log.v("remark not there",e.toString());
                }
                return params;
            }

            @Override
            protected Map<String, DataPart> getByteData() {
                Map<String, DataPart> params = new HashMap<>();

                params.put("pdffile", new DataPart(pdffilename, convertPDFToByteArray(address), "application/pdf"));
                return params;
            }
        };
        Log.v("sizeg", multipartRequest.toString());
        MyApplication.getInstance().addToReqQueue(multipartRequest);
    }


    private static byte[] convertPDFToByteArray(String pathfile) {

        InputStream inputStream = null;
        ByteArrayOutputStream baos = new ByteArrayOutputStream();
        try {

            inputStream = new FileInputStream(pathfile);

            byte[] buffer = new byte[1024];
            baos = new ByteArrayOutputStream();

            int bytesRead;
            while ((bytesRead = inputStream.read(buffer)) != -1) {

                baos.write(buffer, 0, bytesRead);
            }

        } catch (FileNotFoundException e) {
            e.printStackTrace();
        } catch (IOException e) {
            e.printStackTrace();
        } finally {
            if (inputStream != null) {
                try {
                    inputStream.close();
                } catch (IOException e) {
                    e.printStackTrace();
                }
            }
        }
        return baos.toByteArray();
    }

    public void getYearList(final Bundle details, final Context context){

        VolleyMultipartRequest multipartRequest = new VolleyMultipartRequest(Request.Method.POST, constantResources.urlsearch, new Response.Listener<NetworkResponse>() {
            @Override
            public void onResponse(NetworkResponse response) {

                String resultResponse = new String(response.data);
                Log.i("response",resultResponse);
                try {
                    JSONObject result = new JSONObject(resultResponse);
                    listyearJson(resultResponse);
                    Intent intent = new Intent(context, yearList.class);
                    intent.putExtra("Values", details);
                    context.startActivity(intent);
                } catch (JSONException e) {
                    e.printStackTrace();
                }



            }
        },  new Response.ErrorListener() {
            @Override
            public void onErrorResponse(VolleyError error) {
                NetworkResponse networkResponse = error.networkResponse;
                String errorMessage = "Unknown error";
                if (networkResponse == null) {
                    if (error.getClass().equals(TimeoutError.class)) {
                        errorMessage = "Request timeout";
                    } else if (error.getClass().equals(NoConnectionError.class)) {
                        errorMessage = "Failed to connect server";
                    }
                } else {
                    String result = new String(networkResponse.data);
                    try {
                        JSONObject response = new JSONObject(result);
                        String status = response.getString("status");
                        String message = response.getString("message");

                        Log.e("Error Status", status);
                        Log.e("Error Message", message);

                        if (networkResponse.statusCode == 404) {
                            errorMessage = "Resource not found";
                        } else if (networkResponse.statusCode == 401) {
                            errorMessage = message + " Please login again";
                        } else if (networkResponse.statusCode == 400) {
                            errorMessage = message + " Check your inputs";
                        } else if (networkResponse.statusCode == 500) {
                            errorMessage = message + " Something is getting wrong";
                        }
                    } catch (JSONException e) {
                        e.printStackTrace();
                    }
                }
                Log.i("Error", errorMessage);
                Toast.makeText(context, errorMessage, Toast.LENGTH_SHORT).show();

                error.printStackTrace();
            }
        }) {
            @Override
            protected Map<String, String> getParams() {
                Map<String, String> params = new HashMap<>();
                params.put("course", details.getString("course"));
                params.put("year", details.getString("year"));
                params.put("dept", details.getString("dept"));
                params.put("sem",details.getString("sem"));

                return params;
            }
        };
        Log.v("sizeg", multipartRequest.toString());
        MyApplication.getInstance().addToReqQueue(multipartRequest);
        Toast.makeText(context, "Getting Year List" , Toast.LENGTH_SHORT).show();

    }


    public void getPapersList(final Bundle details, final Context context){

        VolleyMultipartRequest multipartRequest = new VolleyMultipartRequest(Request.Method.POST, constantResources.urlsearchpapers, new Response.Listener<NetworkResponse>() {
            @Override
            public void onResponse(NetworkResponse response) {

                String resultResponse = new String(response.data);
                Log.i("response",resultResponse);
                try {
                    JSONObject result = new JSONObject(resultResponse);
                    listPapersJson(resultResponse,details.getString("year"));

                    Intent intent = new Intent(context,papersList.class);
                    context.startActivity(intent);

                } catch (JSONException e) {
                    e.printStackTrace();
                }
            }
        },  new Response.ErrorListener() {
            @Override
            public void onErrorResponse(VolleyError error) {
                NetworkResponse networkResponse = error.networkResponse;
                String errorMessage = "Unknown error";
                if (networkResponse == null) {
                    if (error.getClass().equals(TimeoutError.class)) {
                        errorMessage = "Request timeout";
                    } else if (error.getClass().equals(NoConnectionError.class)) {
                        errorMessage = "Failed to connect server";
                    }
                } else {
                    String result = new String(networkResponse.data);
                    try {
                        JSONObject response = new JSONObject(result);
                        String status = response.getString("status");
                        String message = response.getString("message");

                        Log.e("Error Status", status);
                        Log.e("Error Message", message);

                        if (networkResponse.statusCode == 404) {
                            errorMessage = "Resource not found";
                        } else if (networkResponse.statusCode == 401) {
                            errorMessage = message + " Please login again";
                        } else if (networkResponse.statusCode == 400) {
                            errorMessage = message + " Check your inputs";
                        } else if (networkResponse.statusCode == 500) {
                            errorMessage = message + " Something is getting wrong";
                        }
                    } catch (JSONException e) {
                        e.printStackTrace();
                    }
                }
                Log.i("Error", errorMessage);
                Toast.makeText(context, errorMessage, Toast.LENGTH_SHORT).show();

                error.printStackTrace();
            }
        }) {
            @Override
            protected Map<String, String> getParams() {
                Map<String, String> params = new HashMap<>();
                params.put("table", details.getString("table"));
                params.put("year",details.getString("year"));
                return params;
            }
        };
        Log.v("sizeg", multipartRequest.toString());
        MyApplication.getInstance().addToReqQueue(multipartRequest);
        Toast.makeText(context, "Fetching Available Papers" , Toast.LENGTH_SHORT).show();

    }

    public void listyearJson(String jsonObject){
        ParseJson pj = new ParseJson(jsonObject);
        pj.parseJSON();
        return;

    }

    public void listPapersJson(String jsonObject, String yearSelected){
        ParseJson pj = new ParseJson(jsonObject);
        pj.parseJSONPapers(yearSelected);
        return;

    }

}