package com.example.class_20190521_1;

import android.content.ContentValues;
import android.database.Cursor;
import android.database.sqlite.SQLiteDatabase;
import android.support.v7.app.AppCompatActivity;
import android.os.Bundle;
import android.widget.TextView;

public class MainActivity extends AppCompatActivity {
    static final String db_name="tkDatabase";
    static final String tb_name="test";
    SQLiteDatabase db;
    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.activity_main);

        db = openOrCreateDatabase(db_name,MODE_PRIVATE,null);

        String createTable="CREATE TABLE IF NOT EXISTS " +
                tb_name +
                "(name VARCHAR(32)," +
                "phone VARCHAR(16) ," +
                "email VARCHAR(64))";
        db.execSQL(createTable);

        Cursor c =db.rawQuery("SELECT * FROM " + tb_name,null);

        if(c.getCount() == 0){
            addData("test1","09-12345678","tt@com.tw");
            addData("test2","09-22345678","tt2@com.tw");
        }

        if(c.moveToFirst()){
            String str ="total:" + c.getCount() + "筆\n";
            str+="-------\n";
                    do{
                        str+="name:"+c.getString(0)+"\n";
                        str+="phone:"+c.getString(1)+"\n";
                        str+="email:"+c.getString(2)+"\n";
                        str+="-------\n";
                    }while(c.moveToNext());
            TextView txv = findViewById(R.id.txv);
            txv.setText(str);
        }

        db.close();


    }
    private void addData(String name,String phone,String email){
        ContentValues cv =new ContentValues(3);
        cv.put("name",name);
        cv.put("phone",phone);
        cv.put("email",email);

        db.insert(tb_name,null,cv);
    }
}
