package com.example.class_20190326_0;

import android.support.v7.app.AppCompatActivity;
import android.os.Bundle;
import android.view.View;
import android.widget.CheckBox;
import android.widget.CompoundButton;
import android.widget.RadioGroup;
import android.widget.TextView;

import java.util.ArrayList;

public class MainActivity extends AppCompatActivity implements CompoundButton.OnCheckedChangeListener {

    ArrayList<CompoundButton> selected = new ArrayList<>();
    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.activity_main);
        CheckBox chk;
        int[] id = {R.id.checkBox, R.id.checkBox2, R.id.checkBox3, R.id.checkBox4};

        for (int i : id) {
            chk = findViewById(i);
            chk.setOnCheckedChangeListener(this);

            //if(chk.isChecked())
              //  msg+="\n"+chk.getText();

        }

        //((TextView)findViewById(R.id.showOrder)).setText(msg);

    }
    public  void takeOrder(){
            String msg = "";
            for(CompoundButton chk:selected)
                msg+="\n"+chk.getText();

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
}
