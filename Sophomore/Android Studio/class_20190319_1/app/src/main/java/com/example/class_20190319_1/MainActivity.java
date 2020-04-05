package com.example.class_20190319_1;

import android.support.v7.app.AppCompatActivity;
import android.os.Bundle;
import android.text.Editable;
import android.text.TextWatcher;
import android.widget.EditText;
import android.widget.RadioGroup;
import android.widget.TextView;

public class MainActivity extends AppCompatActivity
implements RadioGroup.OnCheckedChangeListener, TextWatcher {

    RadioGroup unit;
    EditText value;
    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.activity_main);
    unit = (RadioGroup)findViewById(R.id.unit);
    unit.setOnCheckedChangeListener(this);
    value = findViewById(R.id.value);
    value.addTextChangedListener(this);
    }

    @Override
    public void beforeTextChanged(CharSequence s, int start, int count, int after) {

    }

    @Override
    public void onTextChanged(CharSequence s, int start, int before, int count) {

    }

    @Override
    public void afterTextChanged(Editable s) {
        calc();
    }

    @Override
    public void onCheckedChanged(RadioGroup group, int checkedId) {
        calc();
    }
    protected void calc()
    {
        TextView degF = findViewById(R.id.degF);
        TextView degC = findViewById(R.id.degC);
        TextView degK = findViewById(R.id.degK);
        double c,f,k;
        if(unit.getCheckedRadioButtonId() == R.id.unitF){
            f = Double.parseDouble(value.getText().toString());
            c = (f-32)*5/9;
            k = c+273.15;
        }else if(unit.getCheckedRadioButtonId() == R.id.unitC){
            c = Double.parseDouble(value.getText().toString());
            f = c*9/5+32;
            k = c+273.15;
        }else{
            k = Double.parseDouble(value.getText().toString());
            c = k-273.15;
            f = c*9/5+32;
        }

        degC.setText(String.format("%.1f",c) + getResources().getString(R.string.charC));
        degF.setText(String.format("%.1f",f)+getResources().getString(R.string.charF));
        degK.setText(String.format("%.1f",k)+"°K");
    }
}
