package com.example.class_20190507_1;

import android.support.v7.app.AppCompatActivity;
import android.os.Bundle;
import android.view.View;
import android.widget.AdapterView;
import android.widget.CompoundButton;
import android.widget.Spinner;
import android.widget.TabHost;
import android.widget.TabWidget;
import android.widget.TextView;
import android.widget.Toast;

import org.w3c.dom.Text;

import java.util.ArrayList;

public class MainActivity extends AppCompatActivity
        implements AdapterView.OnItemSelectedListener{

    TabHost tabHost;
    Spinner drink,mainEat,secondEat;
    ArrayList<CompoundButton> selected = new ArrayList<>();
    String msg = "";

    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.activity_main);

        int[] id = {R.id.spinner1, R.id.spinner2, R.id.spinner3};


        for (int i : id) {
            mainEat = findViewById(i);
            mainEat.setOnItemSelectedListener(this);

        }
        /*
        drink = findViewById(R.id.spinner);
        mainEat = findViewById(R.id.spinner2);
        secondEat = findViewById(R.id.spinner3);

        drink.setOnItemSelectedListener(this);
        */

        tabHost = findViewById(R.id.tabHost);
        tabHost.setup();

        TabHost.TabSpec spec = tabHost.newTabSpec("tab1");
        spec.setContent(R.id.tab1);
        spec.setIndicator("A");
        tabHost.addTab(spec);

        spec = tabHost.newTabSpec("tab2");
        spec.setContent(R.id.tab2);
        spec.setIndicator("B");
        tabHost.addTab(spec);

        spec = tabHost.newTabSpec("tab3");
        spec.setContent(R.id.tab3);
        spec.setIndicator("C");
        tabHost.addTab(spec);

        spec = tabHost.newTabSpec("tab4");

        spec.setContent(R.id.tab4);
        spec.setIndicator("D");
        tabHost.addTab(spec);

        TabWidget tabWidget = tabHost.findViewById(android.R.id.tabs);
        View tabView = tabWidget.getChildTabViewAt(0);
        TextView tabTitle = tabView.findViewById(android.R.id.title);
        tabTitle.setTextSize(30);


    }

    @Override
    public void onItemSelected(AdapterView<?> parent, View view, int position, long id) {
        if(parent.getId() == R.id.spinner1)
        {
            //Toast.makeText(this, parent.getSelectedItem().toString(), Toast.LENGTH_LONG).show();
            msg+="\n"+parent.getSelectedItem().toString();
            tabHost.setCurrentTab(1);
        }
        else if (parent.getId() == R.id.spinner2)
        {
            msg+="\n"+parent.getSelectedItem().toString();
            tabHost.setCurrentTab(2);
        }
        else if (parent.getId() == R.id.spinner3) {
            msg += "\n" + parent.getSelectedItem().toString();
            tabHost.setCurrentTab(3);
        }
        else
            Toast.makeText(this, "Error", Toast.LENGTH_LONG).show();
//        switch (parent.getId()) {
//            case R.id.spinner:
//                Toast.makeText(this, "hi", Toast.LENGTH_LONG).show();
//            case R.id.spinner2:
//                Toast.makeText(this, "hi2", Toast.LENGTH_LONG).show();
//            case R.id.spinner3:
//                Toast.makeText(this, "hi3", Toast.LENGTH_LONG).show();
//        }
        takeOrder();

    }

    public  void takeOrder(){

        //msg+="\n"+mainEat.getSelectedItem().toString();

        if(msg.length()>0)
            msg="Your Ordrer is:"+msg;
        else
            msg="Plase Order!";
        ((TextView)findViewById(R.id.textView)).setText(msg);

    }

    @Override
    public void onNothingSelected(AdapterView<?> parent) {

    }
}
