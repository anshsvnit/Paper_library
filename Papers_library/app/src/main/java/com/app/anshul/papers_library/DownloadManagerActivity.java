package com.app.anshul.papers_library;

/**
 * Created by anshul on 10/2/17.
 */
import android.app.Activity;
import android.app.DownloadManager;
import android.app.DownloadManager.Query;
import android.app.DownloadManager.Request;
import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.database.Cursor;
import android.net.Uri;
import android.os.Bundle;
import android.os.Environment;
import android.util.Log;
import android.view.View;
import android.widget.ImageView;

import org.apache.commons.io.FileUtils;

import java.io.File;
import java.io.IOException;

import static com.app.anshul.papers_library.constantResources.serverAdd;
import static com.app.anshul.papers_library.constantResources.uploadFolder;

public class DownloadManagerActivity extends Activity {
    private long enqueue;
    private DownloadManager dm;
    int selectedPaperPos;

    /** Called when the activity is first created. */
    @Override
    public void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.main);
        selectedPaperPos = getIntent().getExtras().getInt("selectedPaper");

        BroadcastReceiver receiver = new BroadcastReceiver() {
            @Override
            public void onReceive(Context context, Intent intent) {
                String action = intent.getAction();
                if (DownloadManager.ACTION_DOWNLOAD_COMPLETE.equals(action)) {
                    long downloadId = intent.getLongExtra(
                            DownloadManager.EXTRA_DOWNLOAD_ID, 0);
                    Query query = new Query();
                    query.setFilterById(enqueue);

                    Cursor c = dm.query(query);
                    if (c.moveToFirst()) {
                        int columnIndex = c
                                .getColumnIndex(DownloadManager.COLUMN_STATUS);
                        if (DownloadManager.STATUS_SUCCESSFUL == c
                                .getInt(columnIndex)) {

                            String uriString = c
                                    .getString(c
                                            .getColumnIndex(DownloadManager.COLUMN_LOCAL_FILENAME));
                            Intent intent1 = new Intent(DownloadManagerActivity.this,pdfRenderer.class);
                            intent1.putExtra("tempLocationPDF",uriString);
                            DownloadManagerActivity.this.startActivity(intent1);
                        }
                    }
                }
            }
        };

        registerReceiver(receiver, new IntentFilter(
                DownloadManager.ACTION_DOWNLOAD_COMPLETE));
    }

    public void onClick(View view) {

        String filename = ParseJson.fileLocation.get(selectedPaperPos);
        String location = constantResources.downloadFolder+filename;
        dm = (DownloadManager) getSystemService(DOWNLOAD_SERVICE);
        Log.v("filename",filename);
        Log.v("location",location);
        File file = new File(location);
        if(file.exists()){
            Intent intent1 = new Intent(DownloadManagerActivity.this,pdfRenderer.class);
            intent1.putExtra("tempLocationPDF",location);
            DownloadManagerActivity.this.startActivity(intent1);
        }
        else {
            Request request = new Request(
                    Uri.parse(serverAdd + uploadFolder + ParseJson.fileLocation.get(selectedPaperPos)));
            request.setDestinationInExternalFilesDir(this, Environment.DIRECTORY_DOWNLOADS, ParseJson.fileLocation.get(selectedPaperPos));
            enqueue = dm.enqueue(request);
        }
    }

    public void showDownload(View view) {
        Intent i = new Intent();
        i.setAction(DownloadManager.ACTION_VIEW_DOWNLOADS);
        startActivity(i);
    }
}