package com.example.myapplication;

import androidx.appcompat.app.AppCompatActivity;

import android.content.Intent;
import android.os.Bundle;
import android.view.View;
import android.view.Window;
import android.widget.ImageButton;
import android.widget.TextView;

import java.util.Timer;
import java.util.TimerTask;

public class Main2Activity extends AppCompatActivity {
    Timer timer =new Timer(true);
    int a =0;
    boolean theswitch=true;

    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.activity_main2);
        timer.schedule(new timing(),1000,1000);
        final TextView timetext=(TextView)findViewById(R.id.thetimetext);
        final ImageButton thestart =(ImageButton)findViewById(R.id.imageButton2);
        thestart.setOnClickListener(new View.OnClickListener() {
            @Override
            public void onClick(View view) {
                if (theswitch){
                    thestart.setImageDrawable(getResources().getDrawable(R.drawable.sw1));
                    theswitch=false;
                }
                else{
                    thestart.setImageDrawable(getResources().getDrawable(R.drawable.sw2));
                    theswitch=true;
                }
                timetext.setText("克萊茵已經撐了"+a+"秒");

            }
        });

    }

    private class timing extends TimerTask {
        public void run(){
            a++;
            if (a>=10){
                Intent thenext2=new Intent();
                thenext2.setClass(Main2Activity.this,Main3Activity.class);
                startActivity(thenext2);
                timer.cancel();
                Main2Activity.this.finish();
            }
        };
    }
}
