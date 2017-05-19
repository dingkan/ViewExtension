//
//  UIView+Extension.m
//  ViewExtension
//
//  Created by 丁侃 on 2017/5/19.
//  Copyright © 2017年 丁侃. All rights reserved.
//

#import "UIView+Extension.h"

@implementation UIView (Extension)
- (UIView *(^)(CGFloat, CGFloat, UIColor *))bLayerCorner {
    __weak typeof(self) wself = self;
    return  ^(CGFloat radius,CGFloat borderWidth,UIColor * borderColor){
        
        wself.layer.cornerRadius = radius;
        if (borderColor) {
            wself.layer.borderColor = borderColor.CGColor;
        }
        
        if (borderWidth) {
            wself.layer.borderWidth  = borderWidth;
        }
        wself.layer.masksToBounds = YES;
        
        
        return wself;
    };
}

- (UIView *(^)(UIColor *))bBackgroundColor{
    __weak typeof(self) wself = self;
    return ^(UIColor *color){
        
        wself.backgroundColor = color;
        return wself;
    };
}
- (UIView *(^)(id, SEL))bTargetWithSelector {
    __weak typeof(self) wself = self;
    return ^(id target,SEL selector){
        
        wself.userInteractionEnabled = YES;
        UITapGestureRecognizer * tap = [[UITapGestureRecognizer alloc] initWithTarget:target action:selector];
        [wself addGestureRecognizer:tap];
        
        return wself;
    };
    
}
@end
