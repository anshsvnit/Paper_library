package com.app.anshul.papers_library;

import android.widget.EditText;


/**
 * Created by anshul on 9/1/17.
 */

public class controllerAddPics {

    public static controllerAddPics mInstance;
    public static controllerAddPics getInstance() {
        if(mInstance == null)
        {
            mInstance = new controllerAddPics();
        }
        return mInstance;
    }


    public static String getTrimmedData(EditText editText){
        return editText.getText().toString().trim();
    }

}
