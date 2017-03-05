package com.app.anshul.papers_library;

import android.support.v7.app.AppCompatActivity;
import android.os.Bundle;
import android.support.v7.widget.LinearLayoutManager;
import android.support.v7.widget.RecyclerView;
import android.util.Log;
import android.widget.FrameLayout;

import com.app.anshul.papers_library.Adapters.listyearAdapter;
import com.app.anshul.papers_library.Adapters.paperListAdapter;

public class papersList extends AppCompatActivity {

    RecyclerView recList;
    FrameLayout frame;

    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.activity_papers_list);

        //MultipartRequest.getInstance().

        frame = (FrameLayout) findViewById(R.id.framereclview);
        recList = new RecyclerView(this);
        recList.setHasFixedSize(true);
        LinearLayoutManager llm = new LinearLayoutManager(this);
        llm.setOrientation(LinearLayoutManager.VERTICAL);
        recList.setLayoutManager(llm);
        Log.v("subject array",ParseJson.subject.toString());
        Log.v("selected year",ParseJson.YEAR);

        paperListAdapter ca = new paperListAdapter(ParseJson.subject,ParseJson.exam,ParseJson.remark,ParseJson.YEAR);
        recList.setAdapter(ca);
        frame.addView(recList);
    }
}
