package com.app.anshul.papers_library;

import android.app.DialogFragment;
import android.content.Context;
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

public class addQPaper extends android.support.v4.app.DialogFragment implements AdapterView.OnItemSelectedListener{

    View v;
    Button btnclose;
    ScrollView selectParams;
    Spinner courseList,yearList,deptList,semList;
    LinearLayout layoutSpinners,yearListLayout,deptListLayout,semListLayout;

    @Override
    public void onCreate(Bundle savedInstanceState){
        super.onCreate(savedInstanceState);
    }

    @Override
    public View onCreateView(LayoutInflater inflater, ViewGroup container, Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        v = inflater.inflate(R.layout.activity_add_qpaper, container);
        btnclose = (Button) v.findViewById(R.id.close);

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
        yearList.setOnItemSelectedListener(new AdapterView.OnItemSelectedListener() {
            @Override
            public void onItemSelected(AdapterView<?> parent, View view, int position, long id) {
                int posyear = (int) yearList.getSelectedItemId();
                Log.v("Valueyear", Integer.toString(posyear));
                controllerAddPaper.setselectedYear(posyear);

                if (posyear <= 1) {
                    switch (posyear) {
                        case 0:
                            deptListLayout.setVisibility(View.GONE);
                            semListLayout.setVisibility(View.GONE);
                            break;
                        case 1:
                            controllerAddPaper.setVisibilityyearListLayout(deptListLayout);

                            break;
                    }
                } else {

                    controllerAddPaper.setVisibilityyearListLayout(deptListLayout);

                    deptList.setEnabled(true);
                    switch (controllerAddPaper.getselectedYear()) {
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

            }
        });
        return v;

    }
    @Override
    public void onItemSelected(AdapterView<?> arg0, View arg1, int arg2,
                               long arg3){
        int poscourse = (int)courseList.getSelectedItemId();
        //Log.v("Value", Integer.toString(poscourse));

        controllerAddPaper.setselectedCourse(poscourse);
        switch(poscourse){
            case 0:
                yearListLayout.setVisibility(View.GONE);

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
        // your code here
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

        controllerAddPaper.setVisibilityyearListLayout( ListLayout);

        controllerAddPaper.addSpinner(context, arrayId, spinner);

        spinner.setEnabled(true);
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
