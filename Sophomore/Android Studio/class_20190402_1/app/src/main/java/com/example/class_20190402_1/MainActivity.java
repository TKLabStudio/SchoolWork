package com.example.class_20190402_1;

import android.support.v7.app.AppCompatActivity;
import android.os.Bundle;
import android.view.View;
import android.widget.AdapterView;
import android.widget.ArrayAdapter;
import android.widget.Spinner;
import android.widget.TextView;
import android.widget.Toast;

public class MainActivity extends AppCompatActivity implements AdapterView.OnItemSelectedListener {

    Spinner drink,temp;
    TextView txv;
    String[] tempSet1 = {"冰","去冰","溫"};
    String[] tempSet2 = {"冰","去冰",};
    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.activity_main);
        txv = findViewById(R.id.txv);
        temp = findViewById(R.id.temp);
        drink = findViewById(R.id.drink);

        drink.setOnItemSelectedListener(this);

    }

    @Override
    public void onItemSelected(AdapterView<?> parent, View view, int position, long id) {
        String[] tempSet;
        if(position == 3)
            tempSet = tempSet2;
        else
            tempSet = tempSet1;

        ArrayAdapter<String> tempAd = new ArrayAdapter<>(this,android.R.layout.simple_spinner_item,tempSet);
        tempAd.setDropDownViewResource(android.R.layout.simple_spinner_dropdown_item);
        temp.setAdapter(tempAd);
    }

    @Override
    public void onNothingSelected(AdapterView<?> parent) {

    }

    public void showOrder(View v){
        String msg = drink.getSelectedItem() + ", " + temp.getSelectedItem();

        Toast.makeText(this, msg,Toast.LENGTH_LONG).show();
        txv.setText(msg);
    }
}
