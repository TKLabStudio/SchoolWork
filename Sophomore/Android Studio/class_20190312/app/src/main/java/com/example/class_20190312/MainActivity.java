package com.example.class_20190312;

import android.support.v7.app.AppCompatActivity;
import android.os.Bundle;
import android.view.View;
import android.widget.Button;
import android.widget.TextView;

public class MainActivity extends AppCompatActivity
        implements View.OnClickListener ,View.OnLongClickListener
        {
    TextView txv;
    Button btn;
    int num;

    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.activity_main);
        num =0;
        txv = findViewById(R.id.textView3);
        btn = findViewById(R.id.button);
        btn.setOnClickListener(this);
        btn.setOnLongClickListener(this);
        txv.setOnLongClickListener(this);

    }

    @Override
    public void onClick(View v) {
        txv.setText(String.valueOf(++num));
    }

            @Override
            public boolean onLongClick(View v) {
        if(v == btn)
            num=num+100;
        else
            num = 0;
                txv.setText(String.valueOf(num));
                return true;
            }
        }
