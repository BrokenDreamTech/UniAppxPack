package com.brokendream.uniappxpack

import android.app.Application
import android.content.res.Configuration
import io.dcloud.uniapp.sdk.UniAppXApplication

class MyApplication : Application(){
    override fun onCreate() {
        super.onCreate()
        UniAppXApplication.onCreate(this)
    }

    override fun onTrimMemory(level: Int) {
        super.onTrimMemory(level)
        UniAppXApplication.onTrimMemory(level)
    }

    override fun onConfigurationChanged(newConfig: Configuration) {
        super.onConfigurationChanged(newConfig)
        UniAppXApplication.onConfigurationChanged(newConfig)
    }
}