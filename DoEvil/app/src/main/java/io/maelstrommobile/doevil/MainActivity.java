package io.maelstrommobile.doevil;

import androidx.appcompat.app.AppCompatActivity;

import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import android.os.Bundle;
import android.os.Environment;
import android.os.StrictMode;
import android.util.Log;

import java.io.File;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.net.HttpURLConnection;
import java.net.MalformedURLException;
import java.net.URL;

import static android.os.Environment.DIRECTORY_PICTURES;

public class MainActivity extends AppCompatActivity {

	@Override
	protected void onCreate(Bundle savedInstanceState) {
		super.onCreate(savedInstanceState);
		setContentView(R.layout.activity_main);
		grabMaliciousFile();
	}

	public void grabMaliciousFile() {
		final String domain = "http://10.0.2.2:8080/";
		final String file_name = "shh.png";

		// allow us do network on the main thread because we're bad kids doing bad things
		StrictMode.ThreadPolicy policy = new StrictMode.ThreadPolicy.Builder().permitAll().build();
		StrictMode.setThreadPolicy(policy);

		try {
			// set up server connection
			URL url = new URL(domain + file_name);
			Log.i("Saving Image", "requesting image URI: " + url.toString());
			HttpURLConnection connection = (HttpURLConnection) url.openConnection();
			connection.setDoInput(true);
			connection.connect();
			InputStream input_stream = connection.getInputStream();
			Bitmap img = BitmapFactory.decodeStream(input_stream);

			// set up the output file
			Log.i("Saving Image", "output directory: " + DIRECTORY_PICTURES.toString());
			String path = Environment.getExternalStoragePublicDirectory(Environment.DIRECTORY_PICTURES).toString()
				+ File.separator;
			File output_file = new File(path + File.separator + file_name);

			// write output to external storage to show that evil code has run
			Log.i("Saving Image", "file written to: " + output_file.toString());
			FileOutputStream fos = new FileOutputStream(output_file);
			img.compress(Bitmap.CompressFormat.PNG, 100, fos);
			fos.close();
		} catch (MalformedURLException e) {
			Log.e("MalformedURLException", "Malformed! " + domain + "shh.png");
			e.printStackTrace();
		} catch (IOException e) {
			Log.e("IOException", "IO! " + domain + "shh.png");
			e.printStackTrace();
		}
	}
}
