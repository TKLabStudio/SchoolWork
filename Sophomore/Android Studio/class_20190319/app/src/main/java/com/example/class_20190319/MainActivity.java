package com.example.class_20190319;

import android.content.Context;
import android.os.Vibrator;
import android.support.v7.app.AppCompatActivity;
import android.os.Bundle;
import android.view.MotionEvent;
import android.view.View;
import android.widget.TextView;

public class MainActivity extends AppCompatActivity
implements View.OnTouchListener {
    TextView txv;

    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.activity_main);
        txv = findViewById(R.id.txv1);
        txv.setOnTouchListener(this);

    }

    @Override
    public boolean onTouch(View v, MotionEvent event) {
        Vibrator vb = (Vibrator)getSystemService(Context.VIBRATOR_SERVICE);
        if(event.getAction() == MotionEvent.ACTION_DOWN){
            long[] pattern = {0,100,2000,300};
            vb.vibrate(pattern,2);
            //vb.vibrate(5000);
        }else if(event.getAction() == MotionEvent.ACTION_UP){
            vb.cancel();
        }
        return true;
    }

        public boolean onTouchEvent(MotionEvent event)//自建的螢幕觸控事件
    {
        return true;
    }

}
