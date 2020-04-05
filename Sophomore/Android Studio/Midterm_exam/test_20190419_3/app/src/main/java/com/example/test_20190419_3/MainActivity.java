package com.example.test_20190419_3;

import android.graphics.Color;
import android.support.v7.app.AppCompatActivity;
import android.os.Bundle;
import android.widget.TextView;

public class MainActivity extends AppCompatActivity {
    TextView R1,G1,B1,Rand;
    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.activity_main);
        R1 = findViewById(R.id.textView3);
        G1 = findViewById(R.id.textView2);
        B1 = findViewById(R.id.textView);
        Rand = findViewById(R.id.textView5);

        R1.setBackgroundColor(Color.rgb(255,0,0));
        G1.setBackgroundColor(Color.rgb(0,255,0));
        B1.setBackgroundColor(Color.rgb(0,0,255));
        Rand.setBackgroundColor(Color.rgb( (int)(Math.random()* 256),(int)(Math.random()* 256),(int)(Math.random()* 256)));

        }


    public void Rand() {
        Rand.setBackgroundColor(Color.rgb( (int)(Math.random()* 256),(int)(Math.random()* 256),(int)(Math.random()* 256)));
    }
}