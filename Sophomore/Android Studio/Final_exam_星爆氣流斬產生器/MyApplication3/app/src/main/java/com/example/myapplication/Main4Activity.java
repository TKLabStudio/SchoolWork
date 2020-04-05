package com.example.myapplication;

import androidx.appcompat.app.AppCompatActivity;

import android.content.Intent;
import android.content.SharedPreferences;
import android.os.Bundle;
import android.view.View;
import android.widget.ImageButton;

public class Main4Activity extends AppCompatActivity {

    @Override
    protected void onCreate(Bundle savedInstanceState) {
        Intent thenext=this.getIntent();
        final int theendcount= thenext.getIntExtra("theend",0);
        super.onCreate(savedInstanceState);
        setContentView(R.layout.activity_main4);
        final ImageButton theendimage =(ImageButton)findViewById(R.id.imageButton4);
        theendimage.setOnClickListener(new View.OnClickListener() {
            @Override
            public void onClick(View view) {
                if(theendcount>=16){
                    theendimage.setImageDrawable(getResources().getDrawable(R.drawable.gend));
                }
                else
                    theendimage.setImageDrawable(getResources().getDrawable(R.drawable.bend));

            }
        });
    }
}
