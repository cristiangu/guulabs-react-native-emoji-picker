package com.guulabs.reactnativeemojipicker

import android.graphics.Color
import com.facebook.react.module.annotations.ReactModule
import com.facebook.react.bridge.ReactApplicationContext
import com.facebook.react.uimanager.ThemedReactContext
import com.facebook.react.uimanager.annotations.ReactProp

@ReactModule(name = ReactNativeEmojiPickerViewManager.NAME)
class ReactNativeEmojiPickerViewManager :
  ReactNativeEmojiPickerViewManagerSpec<ReactNativeEmojiPickerView>() {
  override fun getName(): String {
    return NAME
  }

  public override fun createViewInstance(context: ThemedReactContext): ReactNativeEmojiPickerView {
    return ReactNativeEmojiPickerView(context)
  }

  @ReactProp(name = "color")
  override fun setColor(view: ReactNativeEmojiPickerView?, color: String?) {
    view?.setBackgroundColor(Color.parseColor(color))
  }

  companion object {
    const val NAME = "ReactNativeEmojiPickerView"
  }
}
