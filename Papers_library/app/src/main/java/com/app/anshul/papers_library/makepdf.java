package com.app.anshul.papers_library;

import android.os.Environment;
import android.util.Log;

import com.itextpdf.text.Document;
import com.itextpdf.text.DocumentException;
import com.itextpdf.text.PageSize;
import com.itextpdf.text.pdf.PdfWriter;

import java.io.File;
import java.io.FileNotFoundException;
import java.io.FileOutputStream;
import java.io.OutputStream;
import java.util.List;

/**
 * Created by anshul on 28/12/16.
 */

public class makepdf {

    private static makepdf instance;
    private File myFile;
    com.itextpdf.text.Image img;

    public static makepdf getInstance() {
        if (instance == null) {
            instance = new makepdf();
        }
        return instance;
    }

    public File createPdf( List<String> imagesEncodedList, String filename) throws FileNotFoundException, DocumentException {

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

        float left = 15;
        float right = 15;
        float top = 15;
        float bottom = 15;

        OutputStream output = new FileOutputStream(myFile);
        Document document = new Document(PageSize.A4,left,right,top,bottom);
        PdfWriter.getInstance(document, output).setCompressionLevel(9);

        document.open();
        //document.setCompressionLevel(9);

        try {
            for(int i=0;i<imagesEncodedList.size();i++) {

                img = com.itextpdf.text.Image.getInstance(imagesEncodedList.get(i));

                img.scaleAbsolute(565,812);
                img.setAbsolutePosition(15,15);

                document.newPage();

                document.add(img);

            }

            document.close();}
        catch (Exception e) {
            Log.v("error",e.getMessage());
        }
        return myFile;
    }
}

