#ifdef RCT_NEW_ARCH_ENABLED
#import "ReactNativeEmojiPickerView.h"

#import <react/renderer/components/RNReactNativeEmojiPickerViewSpec/ComponentDescriptors.h>
#import <react/renderer/components/RNReactNativeEmojiPickerViewSpec/EventEmitters.h>
#import <react/renderer/components/RNReactNativeEmojiPickerViewSpec/Props.h>
#import <react/renderer/components/RNReactNativeEmojiPickerViewSpec/RCTComponentViewHelpers.h>

#import "RCTFabricComponentsPlugins.h"
#import "Utils.h"

using namespace facebook::react;

@interface ReactNativeEmojiPickerView () <RCTReactNativeEmojiPickerViewViewProtocol>

@end

@implementation ReactNativeEmojiPickerView {
    UIView * _view;
}

+ (ComponentDescriptorProvider)componentDescriptorProvider
{
    return concreteComponentDescriptorProvider<ReactNativeEmojiPickerViewComponentDescriptor>();
}

- (instancetype)initWithFrame:(CGRect)frame
{
  if (self = [super initWithFrame:frame]) {
    static const auto defaultProps = std::make_shared<const ReactNativeEmojiPickerViewProps>();
    _props = defaultProps;

    _view = [[UIView alloc] init];

    self.contentView = _view;
  }

  return self;
}

- (void)updateProps:(Props::Shared const &)props oldProps:(Props::Shared const &)oldProps
{
    const auto &oldViewProps = *std::static_pointer_cast<ReactNativeEmojiPickerViewProps const>(_props);
    const auto &newViewProps = *std::static_pointer_cast<ReactNativeEmojiPickerViewProps const>(props);

    if (oldViewProps.color != newViewProps.color) {
        NSString * colorToConvert = [[NSString alloc] initWithUTF8String: newViewProps.color.c_str()];
        [_view setBackgroundColor: [Utils hexStringToColor:colorToConvert]];
    }

    [super updateProps:props oldProps:oldProps];
}

Class<RCTComponentViewProtocol> ReactNativeEmojiPickerViewCls(void)
{
    return ReactNativeEmojiPickerView.class;
}

@end
#endif
