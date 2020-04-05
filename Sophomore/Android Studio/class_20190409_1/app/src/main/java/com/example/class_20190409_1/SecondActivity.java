package com.example.class_20190409_1;

import android.content.Intent;
import android.support.v7.app.AppCompatActivity;
import android.os.Bundle;
import android.view.View;

public class SecondActivity extends AppCompatActivity {

    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.activity_second);

    }
    public void goBack(View v){
        finish();
    }

    public void gotoThird(View v){
        Intent it = new Intent(this, thirdActivity.class);
        startActivity(it);
    }
}
