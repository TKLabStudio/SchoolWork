package com.example.class_20190528_0;

import android.support.v7.app.AppCompatActivity;
import android.os.Bundle;
import android.view.View;
import android.widget.Button;
import android.widget.TextView;
import android.util.Log;
import android.widget.Toast;
import com.android.volley.Request;
import com.android.volley.RequestQueue;
import com.android.volley.Response;
import com.android.volley.VolleyError;
import com.android.volley.toolbox.StringRequest;
import com.android.volley.toolbox.Volley;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;
import java.util.ArrayList;

public class MainActivity extends AppCompatActivity
implements View.OnClickListener {

    private String URLstring = "https://demonuts.com/Demonuts/JsonTest/Tennis/json_parsing.php";
    private TextView textView;
    private Button btn;
    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.activity_main);
        textView = findViewById(R.id.textView);
        btn = findViewById(R.id.button);
        btn.setOnClickListener(this);

    }

    private void requestJSON(){

        StringRequest stringRequest = new StringRequest(Request.Method.GET, URLstring,
                new Response.Listener<String>() {
                    @Override
                    public void onResponse(String response) {

                        Log.d("strrrrr",">>"+response);

                        try {
                            //getting the whole json object from the response
                            JSONObject obj = new JSONObject(response);
                            if(obj.optString("status").equals("true")){

                                ArrayList<PlayerModel> playersModelArrayList = new ArrayList<>();
                                JSONArray dataArray  = obj.getJSONArray("data");

                                for (int i = 0; i < dataArray.length(); i++) {

                                    PlayerModel playerModel = new PlayerModel();
                                    JSONObject dataobj = dataArray.getJSONObject(i);

                                    playerModel.setid(dataobj.getString("id"));
                                    playerModel.setName(dataobj.getString("name"));
                                    playerModel.setCountry(dataobj.getString("country"));
                                    playerModel.setCity(dataobj.getString("city"));

                                    playersModelArrayList.add(playerModel);

                                }

                                for (int j = 0; j < playersModelArrayList.size(); j++){
                                    textView.setText(textView.getText()+ playersModelArrayList.get(j).getid()+ " "+ playersModelArrayList.get(j).getName()
                                            + " "+ playersModelArrayList.get(j).getCountry()+ " "+playersModelArrayList.get(j).getCity()+" \n");
                                }

                            }else {
                                Toast.makeText(MainActivity.this, obj.optString("message")+"", Toast.LENGTH_SHORT).show();
                            }

                        } catch (JSONException e) {
                            e.printStackTrace();
                        }
                    }
                },
                new Response.ErrorListener() {
                    @Override
                    public void onErrorResponse(VolleyError error) {
                        //displaying the error in toast if occurrs
                        Toast.makeText(getApplicationContext(), error.getMessage(), Toast.LENGTH_SHORT).show();
                    }
                });

        //creating a request queue
        RequestQueue requestQueue = Volley.newRequestQueue(this);

        //adding the string request to request queue
        requestQueue.add(stringRequest);

    }

    @Override
    public void onClick(View v) {
        requestJSON();
    }
}
