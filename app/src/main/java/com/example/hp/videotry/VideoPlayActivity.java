package com.example.hp.videotry;

import android.support.v7.app.AppCompatActivity;
import android.os.Bundle;

import tcking.github.com.giraffeplayer.GiraffePlayer;


public class VideoPlayActivity extends AppCompatActivity {
    String url2 = "http://live.hkstv.hk.lxdns.com/live/hks/playlist.m3u8";
    String url = "http://acm.gg/jade.m3u8";
    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.activity_video_play);

        GiraffePlayer player = new GiraffePlayer(this);
        player.play(url2);
    }
}
