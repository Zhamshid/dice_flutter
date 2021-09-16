package kz.irisbayev.fakeashyq;

import androidx.appcompat.app.AppCompatActivity;

import android.annotation.SuppressLint;
import android.content.Intent;
import android.os.Bundle;
import android.view.View;
import android.widget.ImageView;
import android.widget.TextView;

public class StatusActivity extends AppCompatActivity {
    TextView toolbar_title;
    ImageView icon_toolbar;

    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.activity_status);

        toolbar_title = findViewById(R.id.toolbar_title);
        icon_toolbar = findViewById(R.id.icon_toolbar);

        toolbar_title.setText("ASHYQ. Статус по коронавирусу");


        icon_toolbar.setImageResource(R.drawable.ic_back);
        icon_toolbar.setVisibility(View.VISIBLE);

        icon_toolbar.setOnClickListener(v -> {
            onBackPressed();
        });
    }


    public void onBackPressed() {
        super.onBackPressed();
        Intent i = new Intent(Intent.ACTION_MAIN);
        i.addFlags(Intent.FLAG_ACTIVITY_CLEAR_TOP);
        i.addFlags(Intent.FLAG_ACTIVITY_NEW_TASK);
        finish();

    }


}