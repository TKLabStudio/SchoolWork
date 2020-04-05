package com.example.test_20190416_4;

import android.support.v7.app.AppCompatActivity;
import android.os.Bundle;
import android.view.View;
import android.widget.AdapterView;
import android.widget.CheckBox;
import android.widget.CompoundButton;
import android.widget.RadioGroup;
import android.widget.Spinner;
import android.widget.TextView;
import android.widget.Toast;

import java.util.ArrayList;

public class MainActivity extends AppCompatActivity implements CompoundButton.OnCheckedChangeListener , AdapterView.OnItemSelectedListener {

    ArrayList<CompoundButton> selected = new ArrayList<>();
    String Num;
    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.activity_main);
        CheckBox chk;
        Spinner num;

        int[] id = {R.id.checkBox, R.id.checkBox2, R.id.checkBox3, R.id.checkBox4, R.id.checkBox4, R.id.checkBox5, R.id.checkBox6, R.id.checkBox7, R.id.checkBox8};
        int[] sid = {R.id.spinner,R.id.spinner2,R.id.spinner3,R.id.spinner4,R.id.spinner5,R.id.spinner6,R.id.spinner7,R.id.spinner8};
        for (int i : id) {
            chk = findViewById(i);
            chk.setOnCheckedChangeListener(this);

            //if(chk.isChecked())
            //  msg+="\n"+chk.getText();

        }
        for (int j : sid) {
            num = findViewById(j);
            num.setOnItemSelectedListener(this);
            Num = num.getSelectedItem().toString();

        }

        //((TextView)findViewById(R.id.showOrder)).setText(msg);

    }
    public  void takeOrder(){
        String msg = "";
        for(CompoundButton chk:selected) {
            Toast.makeText(this, String.valueOf(chk.getId()), Toast.LENGTH_LONG).show();
            msg += "\n" + chk.getText() + ", 數量：" + Num;
        }
        if(msg.length()>0)
            msg="Your Ordrer is:"+msg;
        else
            msg="Plase Order!";
        ((TextView)findViewById(R.id.showOrder)).setText(msg);

    }


    @Override
    public void onCheckedChanged(CompoundButton buttonView, boolean isChecked) {
        if (isChecked) {
            selected.add(buttonView);
            takeOrder();
        } else {
            selected.remove(buttonView);
            takeOrder();
        }
    }

    @Override
    public void onItemSelected(AdapterView<?> parent, View view, int position, long id) {

    }

    @Override
    public void onNothingSelected(AdapterView<?> parent) {

    }
}
