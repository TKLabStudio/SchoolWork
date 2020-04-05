package com.example.test_20190416_2;

import android.content.Intent;
import android.support.v7.app.AppCompatActivity;
import android.os.Bundle;
import android.widget.Spinner;
import android.widget.TextView;

public class Main2Activity extends AppCompatActivity {
    Intent it;
    TextView total;
    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.activity_main);
        //total = findViewById(R.id.total2);
        //it = getIntent();
        //String drink = it.getStringExtra("send");
        //total.setText("飲料：" + "hi" +", 杯數：");
    }
}
