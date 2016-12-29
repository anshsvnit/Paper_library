package com.app.anshul.papers_library;

import android.os.Environment;
import android.util.Log;

import com.itextpdf.text.Document;
import com.itextpdf.text.DocumentException;
import com.itextpdf.text.pdf.PdfWriter;

import java.io.File;
import java.io.FileNotFoundException;
import java.io.FileOutputStream;
import java.io.OutputStream;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.List;

/**
 * Created by anshul on 28/12/16.
 */

public class makepdf {

    private static makepdf instance;
    File myFile;
    com.itextpdf.text.Image img;


    public static makepdf getInstance() {
        if (instance == null) {
            instance = new makepdf();
        }
        return instance;
    }

    public void createPdf( List<String> imagesEncodedList, String filename) throws FileNotFoundException, DocumentException {

        File pdfFolder = new File(Environment.getExternalStoragePublicDirectory(
                Environment.DIRECTORY_DOCUMENTS), "pdfpapers");
        Log.v("folderloc",pdfFolder.toString());

        if (!pdfFolder.exists()) {
            pdfFolder.mkdir();
            Log.v("folderloc",pdfFolder.toString());
            Log.i("folder", "Pdf Directory created");
        }


        myFile = new File(pdfFolder + filename + ".pdf");

        Log.v("file",myFile.toString());

}
}
