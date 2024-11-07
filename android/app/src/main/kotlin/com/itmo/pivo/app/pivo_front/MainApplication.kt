package com.itmo.pivo.app.pivo_front

import android.app.Application

import com.yandex.mapkit.MapKitFactory

class MainApplication: Application() {
    override fun onCreate() {
        super.onCreate()
        MapKitFactory.setApiKey("38dda07b-e847-4d7c-87c2-d4a544326bf5")
    }
}