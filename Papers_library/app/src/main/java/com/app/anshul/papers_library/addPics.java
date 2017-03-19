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
import android.widget.CheckBox;
import android.widget.CompoundButton;
import android.widget.EditText;
import android.widget.LinearLayout;
import android.widget.Spinner;
import android.widget.TextView;
import android.widget.Toast;
import java.util.*;
import com.itextpdf.text.DocumentException;
import java.io.File;
import java.io.FileNotFoundException;
import com.app.anshul.papers_library.controllerAddPics;

import java.util.ArrayList;
import java.util.List;

import static com.app.anshul.papers_library.controllerAddPics.getTrimmedData;

/**
 * Created by anshul on 21/12/16.
 */

public class addPics extends Activity {

    EditText subjectInput,remarkInput,nameInput;
    Spinner examInput,yearInput;
    LinearLayout layoutcourse,layoutyear,layoutdept,layoutsem;
    String yearString,examString,remarkString,subjectString,nameString;

    Button upload,takePics;
    private static final int RESULT_LOAD_IMAGE=1;
    public final int RESULT_CAM = 1001;
    List<String> imagesEncodedList;
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
        givevalues(bundle);

        upload = (Button) findViewById( R.id.galleryupload);
        takePics = (Button) findViewById(R.id.takepictures);
        yearInput = (Spinner) findViewById(R.id.yearofexaminput);
        subjectInput = (EditText)  findViewById(R.id.subjectinput);
        examInput = (Spinner) findViewById(R.id.examInput);
        remarkInput = (EditText) findViewById(R.id.remarkinput);
        nameInput = (EditText) findViewById(R.id.nameinput);
        details = new Bundle();

        mcontext = this;

             setupYearTview();

        upload.setOnClickListener(new View.OnClickListener() {
            @Override
            public void onClick(View v) {
                if(isvalid(subjectInput,nameInput)){
                    Intent intent = new Intent(mcontext, mainActivityImageLoader.class);
                    startActivityForResult(intent,constantResources.IMAGE_LOADER);
                }
                else{
                    Toast.makeText(addPics.this, "Subject name or uploader Missing.", Toast.LENGTH_LONG).show();
                }

            }
        });

        takePics.setOnClickListener(new View.OnClickListener() {
            @Override
            public void onClick(View v) {
                if(isvalid(subjectInput,nameInput)) {
                    Toast.makeText(mcontext,"Take all pictures and press back button when done",Toast.LENGTH_SHORT).show();

                    Intent intentcam = new Intent(MediaStore.INTENT_ACTION_STILL_IMAGE_CAMERA);
                    intentcam.putExtra(Intent.EXTRA_ALLOW_MULTIPLE, true);

                    if (intentcam.resolveActivity(getPackageManager()) != null) {
                        startActivityForResult(intentcam,RESULT_CAM);
                    }
                }
                else{
                    Toast.makeText(addPics.this, "Subject name or uploader Missing.", Toast.LENGTH_LONG).show();
                }

            }
        });
    }

    @Override
    protected void onActivityResult(int requestCode, int resultCode, Intent data) {
        super.onActivityResult(requestCode, resultCode, data);

        String[] filePathColumn = { MediaStore.Images.Media.DATA };

        if (resultCode == Activity.RESULT_OK) {
            if(requestCode == constantResources.IMAGE_LOADER){

                    ClipData mClipData = data.getClipData();
                    imagesEncodedList = new ArrayList<String>();
                    imagesEncodedList = data.getStringArrayListExtra("imageList");
                    Collections.reverse(imagesEncodedList);
                   AlertDialog.Builder alertDialogBuilder =  new AlertDialog.Builder(mcontext)
                            .setTitle("Submit Paper")
                            .setMessage("You have selected " + imagesEncodedList.size() + " pages. Are you sure you want to submit")
                            .setPositiveButton(android.R.string.yes, new DialogInterface.OnClickListener() {
                                public void onClick(DialogInterface dialog, int which) {

                                        try {
                                            filename = bundle.getString("course")+bundle.getString("year")+bundle.getString("dept")+bundle.getInt("sem")+ details.getString("subject")+details.getString("yearofExam")+details.getString("exam");
                                            filename = filename.replaceAll("\\s+","");
                                            myFile = makepdf.getInstance().createPdf(imagesEncodedList, filename);

                                            Log.v("location", myFile.toString());

                                            if (NetworkConnection.getInstance(addPics.this).isOnline(addPics.this)) {

                                                MultipartRequest.getInstance().savePDFFile(myFile.toString(), filename + ".pdf",details, bundle, getApplicationContext());
                                            }else{
                                                Toast.makeText(addPics.this, "Please Provide Internet.", Toast.LENGTH_LONG).show();
                                            }

                                            if (!settings.getKeepcopyofimages()) {
                                                deleteselectedimages(imagesEncodedList);
                                            }

                                        } catch (FileNotFoundException e) {
                                            Log.v("Error", "File Not Found");
                                        } catch (DocumentException de) {
                                            Log.v("Error", "Document Excepttion");

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
        else if (resultCode == 0 && requestCode== RESULT_CAM){
            Intent intent = new Intent(mcontext, mainActivityImageLoader.class);
            startActivityForResult(intent,constantResources.IMAGE_LOADER);
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

    public void setupYearTview(){
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

        yearString= yearInput.getSelectedItem().toString();
        examString= examInput.getSelectedItem().toString();
        remarkString= getTrimmedData(remarkInput);
        subjectString= getTrimmedData(subjectInput);
        nameString = getTrimmedData(nameInput);

        if(yearString!=null && examString!=null && subjectString!=null){
            details.putString("yearofExam",yearString);
            details.putString("exam",examString);
            details.putString("subject",subjectString);
            details.putString("name",nameString);

            if(remarkString!=null){
                details.putString("remark",remarkString);
            }
            return true;
        }
        else{
            return false;
        }
    }

    public void givevalues(Bundle bundle){
        Log.v("year",bundle.getString("year"));
        Log.v("dept",bundle.getString("dept"));
        Log.v("course",bundle.getString("course"));
        Log.v("sem",bundle.getString("sem"));
    }

    public boolean isvalid(EditText mEditText1,EditText mEditText2){
        if(mEditText1.getText().toString().equalsIgnoreCase("") || mEditText2.getText().toString().equalsIgnoreCase("")){
            return false;
        }
        else
            return true;
    }

}
