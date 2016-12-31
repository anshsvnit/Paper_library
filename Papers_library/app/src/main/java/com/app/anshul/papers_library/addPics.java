package com.app.anshul.papers_library;

import android.app.Activity;
import android.app.Dialog;
import android.app.Notification;
import android.content.ClipData;
import android.content.Context;
import android.content.DialogInterface;
import android.content.Intent;
import android.database.Cursor;
import android.net.Uri;
import android.os.Bundle;
import android.provider.MediaStore;
import android.support.v7.app.AlertDialog;
import android.util.Log;
import android.view.View;
import android.widget.Button;
import android.widget.EditText;
import android.widget.LinearLayout;
import android.widget.TextView;
import android.widget.Toast;

import com.itextpdf.text.DocumentException;
import java.io.File;
import java.io.FileNotFoundException;

import java.util.ArrayList;
import java.util.List;

/**
 * Created by anshul on 21/12/16.
 */

public class addPics extends Activity {

    TextView courseSelected,yearSelected,deptSelected,semSelected;
    EditText yearInput,subjectInput,examInput,remarkInput;
    LinearLayout layoutcourse,layoutyear,layoutdept,layoutsem;
    String yearString,examString,remarkString,subjectString;

    Button upload,takePics;
    private static final int RESULT_LOAD_IMAGE=1;
    public final int RESULT_CAM = 1001;
    ArrayList<Uri> mArrayUri = new ArrayList<Uri>();
    ClipData.Item item;
    String imageEncoded;
    List<String> imagesEncodedList;
    Uri uri;
    String filename;
    File myFile;
    public static addPics mInstance;
    Context mcontext;
    Bundle details,bundle;

    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);

        setContentView(R.layout.activity_add_pics);

        initialize();
        bundle = getIntent().getExtras().getBundle("Values");
        int selection = bundle.getInt("Selection");
        upload = (Button) findViewById( R.id.galleryupload);
        takePics = (Button) findViewById(R.id.takepictures);
        yearInput = (EditText)findViewById(R.id.yearofexaminput);
        subjectInput = (EditText)  findViewById(R.id.subjectinput);
        examInput = (EditText) findViewById(R.id.examinput);
        remarkInput = (EditText) findViewById(R.id.remarkinput);
        details = new Bundle();

        mcontext = this;

         if (selection == 1){
            setup1styearTview(bundle);
         }
        else{

             setupRestYearTview(bundle);
         }

        upload.setOnClickListener(new View.OnClickListener() {
            @Override
            public void onClick(View v) {

            selectImages();
            }
        });

        takePics.setOnClickListener(new View.OnClickListener() {
            @Override
            public void onClick(View v) {
                Intent intentcam = new Intent(MediaStore.INTENT_ACTION_STILL_IMAGE_CAMERA);
                intentcam.putExtra(Intent.EXTRA_ALLOW_MULTIPLE, true);

                if (intentcam.resolveActivity(getPackageManager()) != null) {
                    startActivityForResult(intentcam,RESULT_CAM);
                }
            }
        });
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

                   AlertDialog.Builder alertDialogBuilder =  new AlertDialog.Builder(mcontext)
                            .setTitle("Submit Paper")
                            .setMessage("Are you sure you want to Submit the Paper")
                            .setPositiveButton(android.R.string.yes, new DialogInterface.OnClickListener() {
                                public void onClick(DialogInterface dialog, int which) {

                                        try {
                                            myFile = makepdf.getInstance().createPdf(imagesEncodedList, filename);
                                            Log.v("location", myFile.toString());
                                            MultipartRequest.getInstance().saveProfileAccount(myFile.toString(), filename + ".pdf",details, bundle, getApplicationContext());
                                        } catch (FileNotFoundException e) {
                                            Log.v("Error", "File Not Found");
                                        } catch (DocumentException de) {
                                            Log.v("Error", "Document Excepttion");

                                        }

                                        if (!settings.getInstance().getKeepcopyofimages()) {
                                            deleteselectedimages(imagesEncodedList);
                                        }
                                        viewPdf(myFile);

                                }})

                            .setNegativeButton(android.R.string.no, new DialogInterface.OnClickListener() {
                                public void onClick(DialogInterface dialog, int which) {

                                }
                            })
                            .setIcon(android.R.drawable.ic_dialog_alert);

                    AlertDialog submitPaper = alertDialogBuilder.create();

                    if(isAllFilled()) {
                        submitPaper.show();
                    }
                    else{
                        Toast.makeText(this,"Please fill the required fields",Toast.LENGTH_SHORT).show();
                    }
                }
            }

        }
        else if (resultCode == 0 && requestCode== RESULT_CAM){
            selectImages();
        }

    }

    public static addPics getInstance() {
        if(mInstance == null)
        {
            mInstance = new addPics();
        }
        return mInstance;
    }

    public void initialize(){
        layoutcourse = (LinearLayout) findViewById(R.id.layoutcourse);
        layoutyear = (LinearLayout) findViewById(R.id.layoutyear);
        layoutdept = (LinearLayout) findViewById(R.id.layoutdept);
        layoutsem = (LinearLayout) findViewById(R.id.layoutsemester);
    }

    public void setup1styearTview( Bundle bundle){
        layoutcourse.setVisibility(View.VISIBLE);
        layoutyear.setVisibility(View.VISIBLE);
        layoutdept.setVisibility(View.GONE);
        layoutsem.setVisibility(View.GONE);
        filename = bundle.getString("course")+bundle.getString("year");
    }

    public void setupRestYearTview( Bundle bundle){
        filename = bundle.getString("course")+bundle.getString("year")+bundle.getString("dept")+bundle.getInt("sem");

        layoutcourse.setVisibility(View.VISIBLE);
        layoutyear.setVisibility(View.VISIBLE);
        layoutdept.setVisibility(View.VISIBLE);
        layoutsem.setVisibility(View.VISIBLE);
    }

    private void viewPdf(File myFile){
        Intent intent = new Intent(Intent.ACTION_VIEW);
        intent.setDataAndType(Uri.fromFile(myFile), "application/pdf");
        intent.setFlags(Intent.FLAG_ACTIVITY_NO_HISTORY);
        startActivity(intent);
    }

    public void selectImages(){

        Intent intent = new Intent(Intent.ACTION_GET_CONTENT);
        intent.putExtra(Intent.EXTRA_ALLOW_MULTIPLE, true);
        intent.setAction(Intent.ACTION_GET_CONTENT);

        intent.setType("image/*");
        startActivityForResult(Intent.createChooser(intent, "Select Picture"), RESULT_LOAD_IMAGE);
    }

    private void deleteselectedimages(List<String> list) {

            Log.v("deleted file","inside delete");

            for(String filename:list) {
                Log.v("check delete",filename);

                File filedelete = new File(filename);
                boolean deleted = filedelete.delete();
                if(deleted){
                    Log.v("deleted file",filename);
                }
            }
        }

    private boolean isAllFilled(){

        yearString= yearInput.getText().toString().trim();
        examString= examInput.getText().toString().trim();
        remarkString= remarkInput.getText().toString().trim();
        subjectString= subjectInput.getText().toString().trim();

        if(yearString!=null && examString!=null && subjectString!=null){
            details.putString("year",yearString);
            details.putString("exam",examString);
            details.putString("subject",subjectString);
            if(remarkString!=null){
                details.putString("remark",remarkString);
            }
            return true;
        }
        else{
            return false;
        }
    }

}
