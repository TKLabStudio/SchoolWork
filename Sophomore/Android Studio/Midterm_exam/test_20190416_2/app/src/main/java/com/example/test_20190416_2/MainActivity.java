package com.example.test_20190416_2;

import android.content.Intent;
import android.support.v7.app.AppCompatActivity;
import android.os.Bundle;
import android.view.View;
import android.widget.Adapter;
import android.widget.AdapterView;
import android.widget.EditText;
import android.widget.Spinner;
import android.widget.TextView;

public class MainActivity extends AppCompatActivity
        implements AdapterView.OnItemSelectedListener {

    Spinner drink,num;
    String Num;
    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.activity_main);
        drink = findViewById(R.id.spinner);
        num  = findViewById(R.id.spinner2);
        drink.setOnItemSelectedListener(this);
    }

    @Override
    public void onItemSelected(AdapterView<?> parent, View view, int position, long id) {
    }

    @Override
    public void onNothingSelected(AdapterView<?> parent) {

    }

    public void calc(View v){
        Num = num.getSelectedItem().toString();
        String send = drink.getSelectedItem().toString();
        Intent it = new Intent(this, SecondActivity.class);
        it.putExtra("send",send);
        it.putExtra("num",Num);
        startActivity(it);
    }
}