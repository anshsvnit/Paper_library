package com.app.anshul.papers_library;

import android.app.Activity;
import android.content.Intent;
import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import android.os.Bundle;
import android.widget.ImageView;

/**
 * Created by anshul on 24/1/17.
 */

public class lastscreen extends Activity {

    @Override

    public void onCreate(Bundle savedInstanceState) {

        super.onCreate(savedInstanceState);

        setContentView(R.layout.lastscreen);

        Intent in = getIntent();

        String path = in.getStringExtra("path");

        ImageView i = (ImageView) findViewById(R.id.imageView);

        Bitmap new_image = BitmapFactory.decodeFile(path);

        i.setImageBitmap(new_image);

    }



}