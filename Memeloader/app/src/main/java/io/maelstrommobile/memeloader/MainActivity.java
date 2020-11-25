package io.maelstrommobile.memeloader;

import androidx.appcompat.app.AppCompatActivity;

import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import android.media.Image;
import android.os.Bundle;
import android.os.StrictMode;
import android.util.Log;
import android.view.View;
import android.widget.Button;
import android.widget.ImageView;

import java.io.IOException;
import java.io.InputStream;
import java.net.HttpURLConnection;
import java.net.MalformedURLException;
import java.net.URL;

public class MainActivity extends AppCompatActivity {

	final String domain = "http://10.0.2.2/";

	Button grabButton;
	ImageView memeView;
	int img_id;

	@Override
	protected void onCreate(Bundle savedInstanceState) {
		super.onCreate(savedInstanceState);
		setContentView(R.layout.activity_main);

		grabButton = findViewById(R.id.grabButton);
		memeView = findViewById(R.id.memeView);

		// let us do network on the main thread because we're bad kids doing bad things
		StrictMode.ThreadPolicy policy = new StrictMode.ThreadPolicy.Builder().permitAll().build();
		StrictMode.setThreadPolicy(policy);

		grabButton.setOnClickListener(new View.OnClickListener() {
			@Override
			public void onClick(View v) {
				// re-roll until we get a new image
				int old_id = img_id;
				while (img_id == old_id)
					img_id = (int) (Math.random() * 6 + 1);

				// grab an image and put it in the memeView
				try {
					URL url = new URL(domain + Integer.toString(img_id) + ".png");
					HttpURLConnection connection = (HttpURLConnection) url.openConnection();
					connection.setDoInput(true);
					connection.connect();
					InputStream input_stream = connection.getInputStream();
					Bitmap img = BitmapFactory.decodeStream(input_stream);
					memeView.setImageBitmap(img);
				} catch (MalformedURLException e) {
					Log.e("MalformedURLException", "Malformed! " + domain + Integer.toString(img_id) + ".png");
					e.printStackTrace();
				} catch (IOException e) {
					Log.e("IOException", "IO! " + domain + Integer.toString(img_id) + ".png");
					e.printStackTrace();
				}
			}
		});
	}
}