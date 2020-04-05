package com.example.class_20190402_0;

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

    double[] energy = {3.1,4.4,13.2,9.7,5.1,3.7};
    EditText weight,time;
    TextView total,txvRate;
    Spinner sports;
    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.activity_main);
        weight = findViewById(R.id.weight);
        time = findViewById(R.id.time1);
        total = findViewById(R.id.total);
        txvRate = findViewById(R.id.Rate);
        sports = findViewById(R.id.spinner);
        sports.setOnItemSelectedListener(this);
    }

    @Override
    public void onItemSelected(AdapterView<?> parent, View view, int position, long id) {
        txvRate.setText("消耗熱量:"+String.valueOf(energy[position]));
    }

    @Override
    public void onNothingSelected(AdapterView<?> parent) {

    }

    public void calc(View v){
        double w= Double.parseDouble(weight.getText().toString());
        double t= Double.parseDouble(time.getText().toString());

        int selected = sports.getSelectedItemPosition();
        long con = Math.round(energy[selected]*t*w);

        total.setText(String.format("消耗：%d", con));

    }
}
