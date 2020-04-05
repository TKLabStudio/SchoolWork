package com.example.myapplication;

import androidx.appcompat.app.AppCompatActivity;

import android.content.Intent;
import android.os.Bundle;
import android.view.View;
import android.view.Window;
import android.widget.ImageButton;

public class MainActivity extends AppCompatActivity {

    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        requestWindowFeature(Window.FEATURE_NO_TITLE);
        setContentView(R.layout.activity_main);

        ImageButton Thestart =(ImageButton)findViewById(R.id.imageButton);
        Thestart.setOnClickListener(new View.OnClickListener() {
            @Override
            public void onClick(View view) {
                Intent thenext1=new Intent();
                thenext1.setClass(MainActivity.this,Main2Activity.class);
                startActivity(thenext1);
                MainActivity.this.finish();
            }
        });
    }
}
