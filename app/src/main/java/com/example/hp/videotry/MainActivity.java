package com.example.hp.videotry;

import android.content.Intent;
import android.support.v7.app.AppCompatActivity;
import android.os.Bundle;
import android.view.View;
import android.widget.Button;


public class MainActivity extends AppCompatActivity{
    private Button btn_play= null;

    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.activity_main);

        btn_play = (Button)findViewById(R.id.video_play);
        btn_play.setOnClickListener( new View.OnClickListener() {
                                         @Override
                                         public void onClick(View v) {
                                             // 跳转到video
                                             Intent intent=new Intent(MainActivity.this,VideoPlayActivity.class);
                                             startActivity(intent);
                                         }
                                     }
        );

    }

}
