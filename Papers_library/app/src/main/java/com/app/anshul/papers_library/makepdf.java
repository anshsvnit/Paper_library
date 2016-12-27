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

    public void createPdf( List<String> imagesEncodedList) throws FileNotFoundException, DocumentException {

        File pdfFolder = new File(Environment.getExternalStoragePublicDirectory(
                Environment.DIRECTORY_DOCUMENTS), "pdfpapers");
        Log.v("folderloc",pdfFolder.toString());

        if (!pdfFolder.exists()) {
            pdfFolder.mkdir();
            Log.v("folderloc",pdfFolder.toString());
            Log.i("folder", "Pdf Directory created");
        }

        Date date = new Date() ;
        String timeStamp = new SimpleDateFormat("yyyyMMdd_HHmmss").format(date);
        //String str = new String(pdfFolder + timeStamp + ".pdf");
        myFile = new File(pdfFolder + timeStamp + ".pdf");

        Log.v("file",myFile.toString());
        OutputStream output = new FileOutputStream(myFile);
        Document document = new Document();
        PdfWriter.getInstance(document, output);
        document.open();

        try {
            for(int i=0;i<imagesEncodedList.size();i++) {

                img = com.itextpdf.text.Image.getInstance(imagesEncodedList.get(i));

                img.scalePercent(90f, 90f);
                img.setAbsolutePosition(0, 0);

                document.newPage();

                document.add(img);

            }

            document.close();}
        catch (Exception e) {
            Log.v("error",e.getMessage());
        }

    }
}
