package com.example.class_20190528_1;

import android.app.Notification;
import android.app.NotificationManager;
import android.app.PendingIntent;
import android.content.Intent;
import android.graphics.BitmapFactory;
import android.os.Build;
import android.support.annotation.RequiresApi;
import android.support.v7.app.AppCompatActivity;
import android.os.Bundle;
import android.view.View;
import android.widget.Button;

public class MainActivity extends AppCompatActivity {
    Button btn_notifiy;
    long[] vibrate = {0,100,0,200,300};
    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.activity_main);
        btn_notifiy = findViewById(R.id.button);
        btn_notifiy.setOnClickListener(new View.OnClickListener() {
            @RequiresApi(api = Build.VERSION_CODES.JELLY_BEAN)
            @Override
            public void onClick(View v) {
                NotificationManager mNotificationManager = (NotificationManager)getSystemService(NOTIFICATION_SERVICE);
                Intent notifyIntent = new Intent(MainActivity.this,MainActivity.class);
                notifyIntent.setFlags(Intent.FLAG_ACTIVITY_CLEAR_TASK);
                PendingIntent appIntent = PendingIntent.getActivity(MainActivity.this,0,notifyIntent,0);

                Notification notification = new Notification.Builder(MainActivity.this)
                        .setContentIntent(appIntent)
                        .setSmallIcon(R.drawable.ic_launcher_background)
                        .setLargeIcon(BitmapFactory.decodeResource(MainActivity.this.getResources(),R.drawable.ic_launcher_foreground))
                        .setTicker("BAR")
                        .setWhen(System.currentTimeMillis())
                        .setAutoCancel(false)
                        .setContentTitle("Title")
                        .setContentText("TEXT")
                        .setVibrate(vibrate)
                        .build();

                notification.flags = Notification.FLAG_ONGOING_EVENT;
                notification.flags = Notification.FLAG_NO_CLEAR;
                notification.flags = Notification.FLAG_SHOW_LIGHTS;
                notification.flags = Notification.FLAG_INSISTENT;
                mNotificationManager.notify(0,notification);

            }
        });
    }
}
