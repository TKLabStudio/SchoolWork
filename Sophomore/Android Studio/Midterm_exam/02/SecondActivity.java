package com.example.test_20190416_2;

import android.content.Intent;
import android.support.v7.app.AppCompatActivity;
import android.os.Bundle;
import android.widget.TextView;

public class SecondActivity extends AppCompatActivity {
    Intent it;
    TextView total;
    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.activity_second);
        total = findViewById(R.id.textView);
        it = getIntent();
        String drink = it.getStringExtra("send");
        String num = it.getStringExtra("num");
        total.setText("飲料：" + drink +", 杯數：" + num);
    }
}
