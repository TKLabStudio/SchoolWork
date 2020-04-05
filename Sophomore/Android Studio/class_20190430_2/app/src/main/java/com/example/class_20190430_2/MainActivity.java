package com.example.class_20190430_2;

import android.app.Activity;
import android.content.Intent;
import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import android.net.Uri;
import android.os.Environment;
import android.provider.MediaStore;
import android.support.annotation.Nullable;
import android.support.v7.app.AppCompatActivity;
import android.os.Bundle;
import android.view.View;
import android.widget.ImageView;
import android.widget.Toast;

public class MainActivity extends AppCompatActivity {
    Uri imgUri;
    ImageView imv;
    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.activity_main);
        imv = findViewById(R.id.imageView);
    }
    public void onGet(View v){
        String dir = Environment.getExternalStoragePublicDirectory(Environment.DIRECTORY_PICTURES).toString();
    String fname = "p" +System.currentTimeMillis() + ".jpg";
    imgUri = Uri.parse("file://" + dir + "/" +fname);
        Intent it = new Intent("android.media.action.IMAGE_CAPTURE");
        it.putExtra(MediaStore.EXTRA_OUTPUT,imgUri);
        startActivityForResult(it,100);
    }

    @Override
    protected void onActivityResult(int requestCode, int resultCode, @Nullable Intent data) {
        super.onActivityResult(requestCode, resultCode, data);
        if(resultCode == Activity.RESULT_OK && requestCode == 100)
        {
            Bitmap bmp = BitmapFactory.decodeFile(imgUri.getPath());
            imv.setImageBitmap(bmp);
        }else{
            Toast.makeText(this,"No",Toast.LENGTH_LONG).show();
        }
    }
}

