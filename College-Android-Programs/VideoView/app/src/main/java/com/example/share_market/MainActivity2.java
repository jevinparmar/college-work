package com.example.share_market;

import android.net.Uri;
import android.os.Bundle;
import android.widget.MediaController;
import android.widget.VideoView;

import androidx.appcompat.app.AppCompatActivity;

public class MainActivity2 extends AppCompatActivity {

    VideoView videoView;

    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.activity_main2);

        videoView = findViewById(R.id.videoView);

        // Path of video from raw folder
        String videoPath = "android.resource://" + getPackageName() + "/" + R.raw.sample;
        Uri uri = Uri.parse(videoPath);

        videoView.setVideoURI(uri);

        // Add media controls (Play, Pause, Seek)
        MediaController mediaController = new MediaController(this);
        mediaController.setAnchorView(videoView);

        videoView.setMediaController(mediaController);

        // Start video automatically
        videoView.start();
    }
}