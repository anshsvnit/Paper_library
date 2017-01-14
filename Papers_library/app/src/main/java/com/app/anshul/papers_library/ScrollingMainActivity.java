package com.app.anshul.papers_library;

import android.content.Context;
import android.content.Intent;
import android.os.Bundle;
import android.provider.ContactsContract;
import android.support.design.widget.FloatingActionButton;
import android.support.design.widget.Snackbar;
import android.support.v4.app.DialogFragment;
import android.support.v4.app.FragmentManager;
import android.support.v7.app.AppCompatActivity;
import android.support.v7.widget.Toolbar;
import android.view.View;
import android.view.Menu;
import android.view.MenuItem;
import android.widget.Button;

public class ScrollingMainActivity extends AppCompatActivity {


    private DialogFragment addNewQPaper;
    //FloatingActionButton fabAddQPaper = (FloatingActionButton) findViewById(R.id.fab);

    Context context = this;

    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.activity_scrolling_main);

        FloatingActionButton fab = (FloatingActionButton) findViewById(R.id.floatingActionButton);
        FloatingActionButton fabsearch = (FloatingActionButton) findViewById(R.id.fabfind);

        fab.setOnClickListener(new View.OnClickListener() {
            @Override
            public void onClick(View view) {

                FragmentManager fragmentManager = getSupportFragmentManager();
                addNewQPaper = new addQPaper();
                Bundle button_selection = new Bundle();
                button_selection.putInt("addOrViewButtonSelection", 0);
                addNewQPaper.setArguments(button_selection);
                addNewQPaper.show(fragmentManager, "activity_add_qpaper");

            }
        });

        fabsearch.setOnClickListener(new View.OnClickListener() {
            @Override
            public void onClick(View v) {
                FragmentManager fragmentManager = getSupportFragmentManager();
                addNewQPaper = new addQPaper();
                Bundle button_selection = new Bundle();
                button_selection.putInt("addOrViewButtonSelection", 1);
                addNewQPaper.setArguments(button_selection);
                addNewQPaper.show(fragmentManager, "activity_add_qpaper");
            }
        });
    }

    @Override
    public boolean onCreateOptionsMenu(Menu menu) {
        // Inflate the menu; this adds items to the action bar if it is present.
        getMenuInflater().inflate(R.menu.menu_scrolling_main, menu);
        return true;
    }

    @Override
    public boolean onOptionsItemSelected(MenuItem item) {
        // Handle action bar item clicks here. The action bar will
        // automatically handle clicks on the Home/Up button, so long
        // as you specify a parent activity in AndroidManifest.xml.
        int id = item.getItemId();

        //noinspection SimplifiableIfStatement
        if (id == R.id.action_settings) {
            return true;
        }
        return super.onOptionsItemSelected(item);
    }
}
