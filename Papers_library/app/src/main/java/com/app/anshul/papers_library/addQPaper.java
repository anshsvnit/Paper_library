package com.app.anshul.papers_library;

import android.app.DialogFragment;
import android.content.Context;
import android.content.Intent;
import android.support.v7.app.AppCompatActivity;
import android.os.Bundle;
import android.util.Log;
import android.view.Gravity;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.view.Window;
import android.widget.AdapterView;
import android.widget.ArrayAdapter;
import android.widget.Button;
import android.widget.FrameLayout;
import android.widget.LinearLayout;
import android.widget.ScrollView;
import android.widget.Spinner;
import android.widget.Toast;

public class addQPaper extends android.support.v4.app.DialogFragment implements AdapterView.OnItemSelectedListener{

    View v;
    Button btnclose,btnSubmit;
    ScrollView selectParams;
    Spinner courseList,yearList,deptList,semList;
    LinearLayout layoutSpinners,yearListLayout,deptListLayout,semListLayout;
    Bundle bundle;
    int button_selection;

    @Override
    public void onCreate(Bundle savedInstanceState){
        super.onCreate(savedInstanceState);
    }

    @Override
    public View onCreateView(LayoutInflater inflater, ViewGroup container, Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        v = inflater.inflate(R.layout.activity_add_qpaper, container);
        btnclose = (Button) v.findViewById(R.id.close);
        btnSubmit = (Button) v.findViewById(R.id.submit);
        bundle = new Bundle();

        btnSubmit.setOnClickListener(new View.OnClickListener() {
            @Override
            public void onClick(View v) {

                if (validate()) {


                    button_selection = getArguments().getInt("addOrViewButtonSelection");

                    if(button_selection == 1){
                        MultipartRequest.getInstance().getYearList(bundle,getActivity());
                    }
                    else {
                        Intent intent = new Intent(getActivity(), addPics.class);
                        intent.putExtra("Values", bundle);
                        startActivity(intent);
                    }
                }

            }
        });

        btnclose.setOnClickListener(new View.OnClickListener() {

            @Override
            public void onClick(View v) {
                // TODO Auto-generated method stub
                getDialog().dismiss();
            }
        });

        initialzeViews();

        setInitialVisibility();

        courseList.setOnItemSelectedListener(this);
        semList.setOnItemSelectedListener(new AdapterView.OnItemSelectedListener() {
            @Override
            public void onItemSelected(AdapterView<?> parent, View view, int position, long id) {
                controllerAddPaper.setselectedSem(position);

                if(controllerAddPaper.getselectedYear()==1 && controllerAddPaper.getselectedCourse()==1){
                    controllerAddPaper.setselectedDept(7);
                    controllerAddPaper.setSelectedDeptName("btech1");
                }
                else if (controllerAddPaper.getselectedYear()==1 && controllerAddPaper.getselectedCourse()==2){
                    controllerAddPaper.setselectedDept(7);
                    controllerAddPaper.setSelectedDeptName("msc1");
                }
            }

            @Override
            public void onNothingSelected(AdapterView<?> parent) {
                semList.setSelection(0);
            }
        });

        deptList.setOnItemSelectedListener(new AdapterView.OnItemSelectedListener() {
            @Override
            public void onItemSelected(AdapterView<?> parent, View view, int position, long id) {
                controllerAddPaper.setselectedDept(position);
                controllerAddPaper.setSelectedDeptName(deptList.getSelectedItem().toString());
            }

            @Override
            public void onNothingSelected(AdapterView<?> parent) {
                deptList.setSelection(0);
            }
        });

        yearList.setOnItemSelectedListener(new AdapterView.OnItemSelectedListener() {
            @Override
            public void onItemSelected(AdapterView<?> parent, View view, int position, long id) {
                int posyear = (int) yearList.getSelectedItemId();
                Log.v("Valueyear", Integer.toString(posyear));
                controllerAddPaper.setselectedYear(posyear);

                if (posyear ==0){
                    deptListLayout.setVisibility(View.GONE);
                    semListLayout.setVisibility(View.GONE);
                }
                else if(posyear ==1 && controllerAddPaper.getselectedCourse()!=3){

                    deptListLayout.setVisibility(View.VISIBLE);
                    deptList.setEnabled(false);
                    controllerAddPaper.setVisibilityyearListLayout(semListLayout);
                    semList.setEnabled(true);

                    if(controllerAddPaper.getselectedCourse()==1) {

                        initializeAndSetSpinner(semListLayout, getContext(), R.array.year1btech, semList);

                    }
                    else if(controllerAddPaper.getselectedCourse()==2){

                        initializeAndSetSpinner(semListLayout, getContext(), R.array.year1msc, semList);

                    }
                    /*else{

                        initializeAndSetSpinner(semListLayout, getContext(), R.array.year1mtech, semList);
                        controllerAddPaper.setselectedDept(7);
                        controllerAddPaper.setSelectedDeptName("mtech1");
                    }*/
                }
                else {

                    controllerAddPaper.setVisibilityyearListLayout(deptListLayout);

                    deptList.setEnabled(true);
                    switch (controllerAddPaper.getselectedYear()) {
                        case 1:
                            initializeAndSetSpinner(semListLayout, getContext(), R.array.year1mtech, semList);

                        case 2:

                            initializeAndSetSpinner(semListLayout, getContext(), R.array.year2, semList);

                            break;
                        case 3:

                            initializeAndSetSpinner(semListLayout, getContext(), R.array.year3, semList);

                            break;
                        case 4:

                            initializeAndSetSpinner(semListLayout, getContext(), R.array.year4, semList);

                            break;
                        case 5:

                            initializeAndSetSpinner(semListLayout, getContext(), R.array.year5, semList);

                            break;
                    }
                }
            }

            @Override
            public void onNothingSelected(AdapterView<?> parent) {
                yearList.setSelection(0);
            }
        });
        return v;

    }
    @Override
    public void onItemSelected(AdapterView<?> arg0, View arg1, int arg2,
                               long arg3){
        int poscourse = (int)courseList.getSelectedItemId();

        controllerAddPaper.setselectedCourse(poscourse);
        switch(poscourse){
            case 0:
                yearListLayout.setVisibility(View.GONE);
                deptListLayout.setVisibility(View.GONE);
                semListLayout.setVisibility(View.GONE);
                break;

            case 1:

                initializeAndSetSpinner(yearListLayout, getContext(), R.array.Year_List_Btech, yearList);

                controllerAddPaper.addSpinner(getContext(), R.array.Btech_dept_list, deptList);

                break;
            case 2:

                initializeAndSetSpinner(yearListLayout, getContext(), R.array.Year_List_Msc, yearList);

                controllerAddPaper.addSpinner(getContext(), R.array.Msc_dept_list, deptList);


                break;

            case 3:
                initializeAndSetSpinner(yearListLayout, getContext(), R.array.Year_List_Mtech, yearList);

                controllerAddPaper.addSpinner(getContext(), R.array.Btech_dept_list, deptList);

                break;
        }
    };


    @Override
    public void onNothingSelected(AdapterView<?> parentView) {
        courseList.setSelection(0);
    }

    public void initialzeViews(){
        selectParams = (ScrollView) v.findViewById(R.id.scrollselectparams);
        layoutSpinners = (LinearLayout) v.findViewById(R.id.layoutspinners);
        yearListLayout = (LinearLayout) v. findViewById(R.id.frameyearlist);
        deptListLayout = (LinearLayout) v. findViewById(R.id.framedeptlist);
        semListLayout =  (LinearLayout) v. findViewById(R.id.framesemlist);
        courseList = (Spinner) v.findViewById(R.id.spinnercourse);
        yearList = (Spinner) v.findViewById(R.id.spinneryear);
        deptList =  (Spinner) v.findViewById(R.id.spinnerdept);
        semList = (Spinner) v.findViewById(R.id.spinnersem);
    }

    public void setInitialVisibility(){
        yearListLayout.setVisibility(LinearLayout.GONE);
        deptListLayout.setVisibility(LinearLayout.GONE);
        semListLayout.setVisibility(LinearLayout.GONE);
    }

    public void initializeAndSetSpinner(LinearLayout ListLayout, Context context, int arrayId, Spinner spinner){

        controllerAddPaper.setVisibilityyearListLayout(ListLayout);

        controllerAddPaper.addSpinner(context, arrayId, spinner);

        spinner.setEnabled(true);
    }

    public boolean validate(){

        if(controllerAddPaper.getselectedCourse()==0){
            Toast.makeText(getContext(), "Please Select Course",
                    Toast.LENGTH_SHORT).show();
            return false;
        }
        else if(controllerAddPaper.getselectedYear()==0){
            Toast.makeText(getContext(), "Please Select Year",
                    Toast.LENGTH_SHORT).show();
            return false;
        }
        else if(controllerAddPaper.getselectedDept() == 0 || controllerAddPaper.getselectedSem()==0){
                    Log.v("dept",Integer.toString(controllerAddPaper.getselectedDept()));
                    Log.v("sem",Integer.toString(controllerAddPaper.getselectedSem()));
                    Toast.makeText(getContext(), "Department or Semester Missing",
                            Toast.LENGTH_SHORT).show();
                    return false;
                }
                else{

                    bundle.putString("course", getResources().getStringArray(R.array.Course_List)[controllerAddPaper.getselectedCourse()]);
                    bundle.putString("year",getResources().getStringArray(R.array.Year_List_Msc)[controllerAddPaper.getselectedYear()]);
                    bundle.putString("dept",controllerAddPaper.getSelectedDeptName());
                    bundle.putString("sem", Integer.toString(((controllerAddPaper.getselectedYear()-1)*2)+controllerAddPaper.getselectedSem()));
                    return true;
                }
            }

    public void onResume(){
        super.onResume();
        Window window = getDialog().getWindow();
        int width = ViewGroup.LayoutParams.MATCH_PARENT;
        int height = ViewGroup.LayoutParams.MATCH_PARENT;
        window.setLayout(width, height);
        window.setGravity(Gravity.CENTER);
    }
}
