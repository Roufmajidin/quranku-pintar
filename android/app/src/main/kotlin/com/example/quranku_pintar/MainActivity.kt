package com.example.quranku_pintar

import io.flutter.embedding.android.FlutterActivity
import io.flutter.embedding.engine.FlutterEngine
import io.flutter.plugin.common.MethodCall
import io.flutter.plugin.common.MethodChannel
import io.flutter.plugins.GeneratedPluginRegistrant

class MainActivity: FlutterActivity() {
    private val CHANNEL = "arabic_to_latin"

    override fun configureFlutterEngine(flutterEngine: FlutterEngine) {
        GeneratedPluginRegistrant.registerWith(flutterEngine)

        MethodChannel(flutterEngine.dartExecutor.binaryMessenger, CHANNEL).setMethodCallHandler { call, result ->
            if (call.method == "convertArabicToLatin") {
                val arabicText = call.argument<String>("arabicText")
                val latinText = convertArabicToLatin(arabicText)
                result.success(latinText)
            } else {
                result.notImplemented()
            }
        }
    }

    private fun convertArabicToLatin(arabicText: String?): String {
        // Placeholder implementation for converting Arabic text to Latin
        // Replace this with your actual conversion logic
        return arabicText?.reversed() ?: ""
    }
}