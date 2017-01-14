package com.app.anshul.papers_library;

import android.support.v7.app.AppCompatActivity;
import android.os.Bundle;
import android.support.v7.widget.LinearLayoutManager;
import android.support.v7.widget.RecyclerView;
import android.util.Log;
import android.widget.FrameLayout;

import com.app.anshul.papers_library.Adapters.listyearAdapter;

public class yearList extends AppCompatActivity {

    RecyclerView recList;
    Bundle bundle;
    FrameLayout frame;

    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.activity_year_list);
        initialize();
        bundle = getIntent().getExtras().getBundle("Values");

       recList = new RecyclerView(this);
        recList.setHasFixedSize(true);
        LinearLayoutManager llm = new LinearLayoutManager(this);
        llm.setOrientation(LinearLayoutManager.VERTICAL);
        recList.setLayoutManager(llm);
        listyearAdapter ca = new listyearAdapter(ParseJson.years,ParseJson.numbers);
        recList.setAdapter(ca);
        frame.addView(recList);
    }


    void initialize(){
        frame = (FrameLayout) findViewById(R.id.framereclview);

    }


}
