package com.example.test_20190416_1;


import android.support.v7.app.AppCompatActivity;
import android.os.Bundle;
import android.view.View;
import android.widget.AdapterView;
import android.widget.EditText;
import android.widget.Spinner;
import android.widget.TextView;
import android.widget.Toast;

public class MainActivity extends AppCompatActivity
        implements AdapterView.OnItemSelectedListener {

    EditText name;
    TextView total;
    Spinner tool;
    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.activity_main);
        name = findViewById(R.id.nameEdit);
        total = findViewById(R.id.total);
        tool = findViewById(R.id.spinner);
        tool.setOnItemSelectedListener(this);
    }

    @Override
    public void onItemSelected(AdapterView<?> parent, View view, int position, long id) {
    }

    @Override
    public void onNothingSelected(AdapterView<?> parent) {

    }

    public void calc(View v){

        String msg = tool.getSelectedItem().toString();

        total.setText("姓名：" + name.getText()+", 通勤方式：" + msg);
        //Toast.makeText(this, msg,Toast.LENGTH_LONG).show();


    }
}
