package com.app.anshul.papers_library;

import android.app.Activity;
import android.app.ListActivity;
import android.content.Intent;
import android.os.Bundle;
import android.os.Environment;
import android.util.Log;
import android.view.View;
import android.widget.ArrayAdapter;
import android.widget.ListView;

import com.github.barteksc.pdfviewer.PDFView;
import com.github.barteksc.pdfviewer.listener.OnLoadCompleteListener;
import com.github.barteksc.pdfviewer.listener.OnPageChangeListener;
import com.github.barteksc.pdfviewer.scroll.ScrollHandle;
import com.github.barteksc.pdfviewer.scroll.DefaultScrollHandle;


import com.github.barteksc.pdfviewer.util.Util;


import net.sf.andpdf.pdfviewer.PdfViewerActivity;

import java.io.File;
import java.io.FilenameFilter;

/**
 * Created by anshul on 10/2/17.
 */

public class pdfRenderer  extends Activity {
    String[] pdflist;
    File[] imagelist;
    @Override
    public void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.pdfview);

        //getIntent().getExtras().getString("tempLocationPDF");

        String path = getIntent().getExtras().getString("tempLocationPDF");
        Log.v("tempLocation", path);

        PDFView pdfView = (PDFView) findViewById(R.id.pdfviewer);
        File file = new File(path);

        //File file = new File(path);
        //String getDirectoryPath="/storage/sdcard0/abc.pdf"; // A valid file path

        //String path =

        /*try {
            final Intent intent = new Intent(pdfRenderer.this, second.class);
            intent.putExtra(PdfViewerActivity.EXTRA_PDFFILENAME, path);
            startActivity(intent);
        } catch (Exception e) {
            e.printStackTrace();
        }*/
        pdfView.fromFile(file)
                // all pages are displayed by default
                .enableSwipe(true)
                .swipeHorizontal(false)
                .enableDoubletap(true)
                .onLoad(new OnLoadCompleteListener() {
                    @Override
                    public void loadComplete(int nbPages) {

                    }
                })
                .onPageChange(new OnPageChangeListener() {
                    @Override
                    public void onPageChanged(int page, int pageCount) {

                    }
                })
                .defaultPage(1)
                .enableAnnotationRendering(false)
                .password(null)
                .scrollHandle(null)
                .load();

    }

}
