package com.example.myappsimplelogin;

import android.os.Bundle;
import android.view.View;
import android.widget.TextView;
import android.widget.Toast;
import android.widget.ToggleButton;

import androidx.appcompat.app.AppCompatActivity;

public class MainActivity4 extends AppCompatActivity {
    ToggleButton toggleButton;
    TextView tvStatus;

    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.activity_main4);

        toggleButton = findViewById(R.id.toggleButton);
        tvStatus = findViewById(R.id.tvStatus);
        toggleButton.setOnClickListener(new View.OnClickListener() {
            @Override
            public void onClick(View v) {
                if(toggleButton.isChecked()) {
                    tvStatus.setText("Toggle is ON");
                    Toast.makeText(MainActivity4.this, "Toggle Button is ON", Toast.LENGTH_SHORT).show();
                } else {
                    tvStatus.setText("Toggle is OFF");
                    Toast.makeText(MainActivity4.this, "Toggle Button is OFF", Toast.LENGTH_SHORT).show();
                }
            }
        });
    }
}
