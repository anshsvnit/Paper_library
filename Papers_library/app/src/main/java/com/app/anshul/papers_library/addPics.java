package com.app.anshul.papers_library;

import android.app.Activity;
import android.app.Notification;
import android.content.ClipData;
import android.content.Intent;
import android.database.Cursor;
import android.net.Uri;
import android.os.Bundle;
import android.os.Environment;
import android.preference.PreferenceManager;
import android.provider.MediaStore;
import android.support.v7.app.AppCompatActivity;
import android.util.Log;
import android.view.View;
import android.widget.Button;
import android.widget.LinearLayout;
import android.widget.TextView;

import java.io.Console;
import java.io.File;
import java.net.URI;
import java.util.ArrayList;
import java.util.List;
import java.util.UUID;

/**
 * Created by anshul on 21/12/16.
 */



public class addPics extends AppCompatActivity {

    TextView courseSelected,yearSelected,deptSelected,semSelected;
    LinearLayout layoutcourse,layoutyear,layoutdept,layoutsem;
    Button upload,takePics;
    private static final int RESULT_LOAD_IMAGE=1;
    ArrayList<Uri> mArrayUri = new ArrayList<Uri>();
    ClipData.Item item;
    String imageEncoded;
    List<String> imagesEncodedList;
    Uri uri;
    private static final int REQUEST_PHOTO=2;

    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);

        setContentView(R.layout.activity_add_pics);

        initialize();
        Bundle bundle = getIntent().getExtras().getBundle("Values");
        int selection = bundle.getInt("Selection");
        upload = (Button) findViewById( R.id.galleryupload);
        takePics=(Button) findViewById(R.id.takepictures);
         if (selection == 1){
            setup1styearTview(bundle);
         }
        else{

             setupRestYearTview(bundle);
         }


        upload.setOnClickListener(new View.OnClickListener() {
            @Override
            public void onClick(View v) {

                Intent intent = new Intent(Intent.ACTION_GET_CONTENT);
                intent.putExtra(Intent.EXTRA_ALLOW_MULTIPLE, true);
                intent.setAction(Intent.ACTION_GET_CONTENT);

                intent.setType("image/*");
                startActivityForResult(Intent.createChooser(intent, "Select Picture"), RESULT_LOAD_IMAGE);
            }
        });

        takePics.setOnClickListener(new View.OnClickListener() {
            @Override
            public void onClick(View v) {
                File photoFile=get_photo_file();
                final Intent capture_image=new Intent(MediaStore.ACTION_IMAGE_CAPTURE);
                Uri uri= Uri.fromFile(photoFile);
                capture_image.putExtra(MediaStore.EXTRA_OUTPUT,uri);
                Log.w("ABC",uri.toString());
                if(photoFile!=null)
                startActivityForResult(capture_image,REQUEST_PHOTO);
            }
        });
    }

    private String get_photo_filename(){

        return "IMG_"+UUID.randomUUID().toString()+".jpg";

    }

    private File get_photo_file(){
        File externalFilesDirectory=Environment.getExternalStorageDirectory();

        if(externalFilesDirectory==null)
            return null;
        return new File(externalFilesDirectory.getAbsolutePath()+"/DCIM/Camera/"+get_photo_filename());
    }

    @Override
    protected void onActivityResult(int requestCode, int resultCode, Intent data) {
        super.onActivityResult(requestCode, resultCode, data);

        String[] filePathColumn = { MediaStore.Images.Media.DATA };

        if (resultCode == RESULT_OK) {
            if(requestCode == RESULT_LOAD_IMAGE){
                if (data.getClipData() != null) {
                    ClipData mClipData = data.getClipData();
                    imagesEncodedList = new ArrayList<String>();

                    for (int i = 0; i < mClipData.getItemCount(); i++) {

                        item = mClipData.getItemAt(i);
                        uri = item.getUri();
                        mArrayUri.add(uri);
                        Cursor cursor = getContentResolver().query(uri, filePathColumn, null, null, null);

                        cursor.moveToFirst();

                        int columnIndex = cursor.getColumnIndex(filePathColumn[0]);
                        imageEncoded = cursor.getString(columnIndex);
                        Log.v("clip", imageEncoded);

                        imagesEncodedList.add(imageEncoded);
                        cursor.close();

                    }
                    //Log.v("LOG_TAG", "Selected Images" + mArrayUri.size());
                }

            }
        }

    }
    public void initialize(){
        courseSelected = (TextView) findViewById(R.id.courseselected);
        yearSelected =(TextView) findViewById(R.id.yearSelected);
        deptSelected = (TextView) findViewById(R.id.selectedDepartment);
        semSelected = (TextView) findViewById(R.id.selectedSemester);
        layoutcourse = (LinearLayout) findViewById(R.id.layoutcourse);
        layoutyear = (LinearLayout) findViewById(R.id.layoutyear);
        layoutdept = (LinearLayout) findViewById(R.id.layoutdept);
        layoutsem = (LinearLayout) findViewById(R.id.layoutsemester);
    }

    public void setup1styearTview( Bundle bundle){
        courseSelected.setText(bundle.getString("course"));

        yearSelected.setText(bundle.getString("year"));
        layoutcourse.setVisibility(View.VISIBLE);
        layoutyear.setVisibility(View.VISIBLE);
        layoutdept.setVisibility(View.GONE);
        layoutsem.setVisibility(View.GONE);
    }

    public void setupRestYearTview( Bundle bundle){
        courseSelected.setText(bundle.getString("course"));
        yearSelected.setText(bundle.getString("year"));
        deptSelected.setText(bundle.getString("dept"));
        semSelected.setText(Integer.toString(bundle.getInt("sem"))+"th Semester");

        layoutcourse.setVisibility(View.VISIBLE);
        layoutyear.setVisibility(View.VISIBLE);
        layoutdept.setVisibility(View.VISIBLE);
        layoutsem.setVisibility(View.VISIBLE);
    }

}
