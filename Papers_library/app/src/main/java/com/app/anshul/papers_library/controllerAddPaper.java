package com.app.anshul.papers_library;

import android.content.Context;
import android.view.View;
import android.widget.ArrayAdapter;
import android.widget.FrameLayout;
import android.widget.LinearLayout;
import android.widget.Spinner;

/**
 * Created by anshul on 19/12/16.
 */
public class controllerAddPaper {

    //private  static  final enum Course
    private  static int selectedCourse = 0;
    private  static int selectedYear = 0;
    private  static int selectedDept = 0;
    private  static int selectedSem = 0;
    private  static String selectedDeptName;

    public static void setVisibilityyearListLayout(LinearLayout mListLayout){

        if (mListLayout.getVisibility() == View.GONE) {
            mListLayout.setVisibility(LinearLayout.VISIBLE);
        }

        for (int i = 0; i < mListLayout.getChildCount(); i++) {
            View child = mListLayout.getChildAt(i);
            child.setEnabled(false);
        }
    }

    public static void addSpinner(Context context,int arrayId,Spinner yearList){
        ArrayAdapter<CharSequence> adapterbtech = ArrayAdapter.createFromResource(context,
                arrayId, android.R.layout.simple_spinner_item);
        adapterbtech.setDropDownViewResource(android.R.layout.simple_spinner_dropdown_item);
        yearList.setAdapter(adapterbtech);

    }

    public static int getselectedCourse(){
        return selectedCourse;
    }

    public static void setselectedCourse(int selectedCourse){
        controllerAddPaper.selectedCourse = selectedCourse;
    }

    public static int getselectedYear(){
        return selectedYear;
    }

    public static void setselectedYear(int selectedYear){
        controllerAddPaper.selectedYear = selectedYear;
    }

    public static int getselectedDept(){
        return selectedDept;
    }

    public static void setselectedDept(int selectedDept){
        controllerAddPaper.selectedDept = selectedDept;
    }

    public static int getselectedSem(){
        return selectedSem;
    }

    public static void setselectedSem(int selectedSem){
        controllerAddPaper.selectedSem = selectedSem;
    }


    public static void setSelectedDeptName(String selectedDeptName){
        controllerAddPaper.selectedDeptName = selectedDeptName;
    }

    public static String getSelectedDeptName(){
        return selectedDeptName;
    }

}
