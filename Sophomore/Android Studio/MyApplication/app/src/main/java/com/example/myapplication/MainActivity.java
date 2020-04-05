package com.example.myapplication;

import android.support.v7.app.AppCompatActivity;
import android.os.Bundle;
import android.view.View;
import android.widget.Button;
import android.widget.EditText;
import android.widget.Spinner;
import android.widget.TextView;

public class MainActivity extends AppCompatActivity
    implements View.OnClickListener
{
    Button btn;
    Button btn2;
    TextView tv;
    float size;
    Spinner sp1;
    Spinner sp2;
    EditText ed1;
    EditText ed2;

    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.activity_main);

        //sp1 = findViewById(R.id.spinner);
        //sp2 = findViewById(R.id.spinner3);
        btn = findViewById(R.id.BtnOK);
        btn2 = findViewById(R.id.button3);
        btn2.setOnClickListener(this);
        tv = findViewById(R.id.showMsg);
        size = tv.getTextSize();
        ed1 = findViewById(R.id.editText);
        ed2 = findViewById(R.id.editText2);


    }
    public void btnClick(View view) {
        //btn = (Button) view;
        tv.setTextSize((int)size++);

    }

    public void onClick(View v) {
        double high = Double.parseDouble(ed1.getText().toString());
        double weight = Double.parseDouble(ed2.getText().toString());

        double bmi = weight/Math.pow(high,2);
        tv.setText(""+bmi);

    }
}
