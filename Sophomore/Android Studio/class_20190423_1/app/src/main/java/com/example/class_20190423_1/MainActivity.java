package com.example.class_20190423_1;

import android.support.v7.app.AppCompatActivity;
import android.os.Bundle;
import android.view.View;
import android.widget.AdapterView;
import android.widget.ListView;
import android.widget.SimpleAdapter;
import android.widget.Toast;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

public class MainActivity extends AppCompatActivity {
    public  int[] aniPng = {
            R.drawable.app_1,R.drawable.app_2,R.drawable.app_3,R.drawable.app_4,
            R.drawable.app_5,R.drawable.app_6,R.drawable.app_7,R.drawable.app_8,
            R.drawable.app_9,R.drawable.app_10,R.drawable.app_11,R.drawable.app_12,
            R.drawable.app_13,R.drawable.app_14,R.drawable.app_15,R.drawable.app_16
    };
    public String[][] data = {
            {"001","馬"},{"002","斑馬"},
            {"003","企鵝"},{"004","老鼠"},
            {"005","猴子"},{"006","海豹"},
            {"007","小魚"},{"008","獅子"},
            {"009","老虎"},{"010","小狗"},
            {"0011","駱駝"},{"012","兔子"},
            {"0013","長頸鹿"},{"014","灰狼"},
            {"0015","公牛"},{"016","大象"},
    };
    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.activity_main);

        List<Map<String, Object>> items = new ArrayList<Map<String, Object>>();
        for(int i=0;i<data.length;i++)
        {
            Map<String, Object> item = new HashMap<String, Object>();
            item.put("icon",aniPng[i]);
            item.put("name",data[i][1]);
            items.add(item);
        }
        SimpleAdapter adapter = new SimpleAdapter(
                this,
                items,
                R.layout.style_listview,
                new String[]{"icon","name"},
                new int[] {R.id.appImg,R.id.appName}
        );
        ListView listView = findViewById(R.id.listview);
        listView.setAdapter(adapter);
        listView.setOnItemClickListener(onClickListView);
    }
    private AdapterView.OnItemClickListener onClickListView = new AdapterView.OnItemClickListener() {
        @Override
        public void onItemClick(AdapterView<?> parent, View view, int position, long id) {
            Toast.makeText(MainActivity.this,"ID:"+data[position][1], Toast.LENGTH_LONG).show();
        }
    };

}
