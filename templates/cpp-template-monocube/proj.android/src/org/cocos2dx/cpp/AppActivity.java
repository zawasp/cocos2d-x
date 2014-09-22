package org.cocos2dx.cpp;

import android.os.Bundle;

import com.monocube.framework.device.GooglePlayRater;
import com.monocube.framework.game.GameActivity;

public class AppActivity extends GameActivity {

	@Override
	protected void onCreate(final Bundle savedInstanceState) {
		super.onCreate(savedInstanceState);
		mGameManager.getDeviceManager().setMarket(new GooglePlayRater());
	}
}
