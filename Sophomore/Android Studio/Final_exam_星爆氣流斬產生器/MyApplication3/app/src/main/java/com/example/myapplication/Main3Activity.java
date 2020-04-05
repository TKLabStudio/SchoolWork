package com.example.myapplication;

import androidx.appcompat.app.AppCompatActivity;

import android.content.Intent;
import android.graphics.drawable.Drawable;
import android.os.Bundle;
import android.view.View;
import android.widget.ImageButton;

import java.util.Timer;
import java.util.TimerTask;

public class Main3Activity extends AppCompatActivity {
    Integer sbcount = new Integer(0);
    Integer count=new Integer(0);
    Timer timer =new Timer(true);
    String []a ={"@drawable/sb1","@drawable/sb2","@drawable/sb3","@drawable/sb4","@drawable/sb5"};
    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.activity_main3);
        timer.schedule(new endtime(),10000);
        final ImageButton sbimage =(ImageButton)findViewById(R.id.imageButton3);
        sbimage.setOnClickListener(new View.OnClickListener() {
            @Override
            public void onClick(View view) {
                count++;
                int imageRes=getResources().getIdentifier(a[sbcount],null,getPackageName());
                Drawable image =getResources().getDrawable(imageRes);
                sbimage.setImageDrawable(image);

                sbcount++;
                if (sbcount==5){
                    sbcount=0;
                }

            }
        });
    }

    private class endtime extends TimerTask {
        public void run(){
            Intent thenext=new Intent();
            thenext.setClass(Main3Activity.this,Main4Activity.class);
            thenext.putExtra("theend",count);
            startActivity(thenext);
            Main3Activity.this.finish();
        }
    }
}
