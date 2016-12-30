package com.app.anshul.papers_library;

/**
 * Created by anshul on 29/12/16.
 */

public class settings {

    public static settings instance;

    public static settings getInstance() {
        if (instance == null) {
            instance = new settings();
        }
        return instance;
    }

    private static boolean keepcopyofimages = true;

    public static void setkeepcopyofimages(boolean bool){
        keepcopyofimages = bool;
    }
    public static boolean getKeepcopyofimages(){
        return keepcopyofimages;
    }

}
