package com.brokendream.uniappxpack

import android.os.Bundle
import androidx.activity.enableEdgeToEdge
import androidx.appcompat.app.AppCompatActivity
import io.dcloud.uniapp.sdk.UniAppXSDK
import io.dcloud.uniapp.sdk.UniAppXSDKStartOptions

class MainActivity : AppCompatActivity() {
    override fun onCreate(savedInstanceState: Bundle?) {
        super.onCreate(savedInstanceState)
        enableEdgeToEdge()
        runCatching {
            UniAppXSDK.start(
                UniAppXSDKStartOptions(),
                this
            )
        }.onFailure {
            it.printStackTrace()
        }
        finish()
    }
}