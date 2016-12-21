package com.app.anshul.papers_library;

import android.app.Activity;
import android.app.Notification;
import android.os.Bundle;
import android.support.v7.app.AppCompatActivity;
import android.util.Log;
import android.view.View;
import android.widget.LinearLayout;
import android.widget.TextView;

/**
 * Created by anshul on 21/12/16.
 */



public class addPics extends AppCompatActivity {

    TextView courseSelected,yearSelected,deptSelected,semSelected;
    LinearLayout layoutcourse,layoutyear,layoutdept,layoutsem;

    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);

        setContentView(R.layout.activity_add_pics);

        initialize();
        Bundle bundle = getIntent().getExtras().getBundle("Values");
        int selection = bundle.getInt("Selection");

         if (selection == 1){
            setup1styearTview(bundle);
         }
        else{

             setupRestYearTview(bundle);
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
