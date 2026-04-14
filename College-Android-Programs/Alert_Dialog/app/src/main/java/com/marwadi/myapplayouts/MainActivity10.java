package com.marwadi.myapplayouts;

import android.content.DialogInterface;
import android.os.Bundle;
import android.widget.Button;
import android.widget.Toast;
import androidx.appcompat.app.AlertDialog;
import androidx.appcompat.app.AppCompatActivity;

public class MainActivity10 extends AppCompatActivity {

    Button btnShowDialog;

    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.activity_main10);

        btnShowDialog = findViewById(R.id.btnShowDialog);

        btnShowDialog.setOnClickListener(view -> {

            AlertDialog.Builder builder =
                    new AlertDialog.Builder(MainActivity10.this);

            builder.setTitle("Confirmation");
            builder.setMessage("Do you want to exit the app?");

            builder.setPositiveButton("Yes", new DialogInterface.OnClickListener() {
                @Override
                public void onClick(DialogInterface dialog, int which) {
                    Toast.makeText(MainActivity10.this,
                            "You clicked YES", Toast.LENGTH_SHORT).show();
                    finish();
                }
            });

            builder.setNegativeButton("No", new DialogInterface.OnClickListener() {
                @Override
                public void onClick(DialogInterface dialog, int which) {
                    Toast.makeText(MainActivity10.this,
                            "You clicked NO", Toast.LENGTH_SHORT).show();
                    dialog.dismiss();
                }
            });

            AlertDialog dialog = builder.create();
            dialog.show();
        });
    }
}