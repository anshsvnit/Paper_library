package com.app.anshul.papers_library;

/**
 * Created by anshul on 27/1/17.
 */

import android.app.Activity;

import com.nostra13.universalimageloader.core.ImageLoader;

public abstract class imageLoaderBaseActivity extends Activity {

    protected ImageLoader imageLoader = ImageLoader.getInstance();

}
