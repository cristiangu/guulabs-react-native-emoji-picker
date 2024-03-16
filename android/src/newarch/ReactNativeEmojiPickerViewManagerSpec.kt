package com.guulabs.reactnativeemojipicker

import android.view.View

import com.facebook.react.bridge.ReactApplicationContext
import com.facebook.react.uimanager.SimpleViewManager
import com.facebook.react.uimanager.ViewManagerDelegate
import com.facebook.react.viewmanagers.ReactNativeEmojiPickerViewManagerDelegate
import com.facebook.react.viewmanagers.ReactNativeEmojiPickerViewManagerInterface

abstract class ReactNativeEmojiPickerViewManagerSpec<T : View> : SimpleViewManager<T>(), ReactNativeEmojiPickerViewManagerInterface<T> {
  private val mDelegate: ViewManagerDelegate<T>

  init {
    mDelegate = ReactNativeEmojiPickerViewManagerDelegate(this)
  }

  override fun getDelegate(): ViewManagerDelegate<T>? {
    return mDelegate
  }
}
