//
//  UIButton+Extension.m
//  ViewExtension
//
//  Created by 丁侃 on 2017/5/19.
//  Copyright © 2017年 丁侃. All rights reserved.
//

#import "UIButton+Extension.h"

@implementation UIButton (Extension)

-(UIButton *(^)(CGFloat fontSize))bFont{
    __weak typeof(self)wself = self;
    
    return ^(CGFloat fontSize){
        wself.titleLabel.font = [UIFont systemFontOfSize:fontSize];
        return wself;
    };
}

-(UIButton *(^)(NSString *text))bText{
    
    __weak typeof(self)wself = self;
    return ^(NSString *text){
    
        [wself setTitle:text forState:UIControlStateNormal];
        
        return wself;
    };
}

-(UIButton *(^)(UIColor *textColor))bTextColor{
    __weak typeof(self)wself = self;
    
    return ^(UIColor *textColor){
        
        [wself setTitleColor:textColor forState:UIControlStateNormal];
        
        return wself;
    };
}

-(UIButton *(^)(id target, SEL selector))bTargetWithSelector{
    __weak typeof(self)wself = self;
    
    return ^(id target, SEL selector){
    
        [wself addTarget:target action:selector forControlEvents:UIControlEventTouchUpInside];
        
        return wself;
    };
}

-(UIButton *(^)(CGFloat radius, CGFloat width, UIColor *color))bCornerRadiusWithBordWidthAndBordColor{
    __weak typeof(self)wself = self;
    
    return ^(CGFloat radius, CGFloat width, UIColor *color){
        wself.layer.cornerRadius = radius;
        wself.layer.borderWidth = width;
        wself.layer.borderColor = color.CGColor;
        wself.layer.masksToBounds = YES;
        return wself;
    };
}

-(UIButton *(^)(UIImage *bImg))bIBackGroundmage{
    
    __weak typeof(self)wself = self;
    
    return ^(UIImage *bImg){
    
        [wself setBackgroundImage:bImg forState:UIControlStateNormal];
        
        return wself;
    };
}

- (UIButton *(^)(UIColor *))bBackGroundColor {
    
    __weak typeof(self) weakSelf = self;
    return ^(UIColor *backGroundColor){
        
        weakSelf.backgroundColor = backGroundColor;
        return weakSelf;
    };
}

- (UIButton *(^)(CGFloat))bCornerRadius {
    __weak typeof(self) weakSelf = self;
    return ^(CGFloat radius){
        
        weakSelf.layer.cornerRadius = radius;
        weakSelf.layer.masksToBounds = YES;
        return weakSelf;
    };
}

-(UIButton *(^)(CGFloat , UIColor *, UIImage *,NSString *))bHighlightedModel{
    
    __weak typeof(self) weakSelf = self;
    
    return ^(CGFloat font, UIColor *textColor, UIImage *icon,NSString *text){
    
        if (font) {
            weakSelf.titleLabel.font = [UIFont systemFontOfSize:font];
        }
        
        if (textColor) {
            [weakSelf setTitleColor:textColor forState:UIControlStateHighlighted];
        }
        
        if (icon) {
            [weakSelf setImage:icon forState:UIControlStateHighlighted];
        }
        
        if (text.length) {
            [weakSelf setTitle:text forState:UIControlStateHighlighted];
        }
        
        return weakSelf;
    
    };
}

- (UIButton *(^)(UIColor *, NSString *, UIImage *, CGFloat))bSelectModel {
    
    __weak typeof(self) weakSelf = self;
    
    return ^(UIColor * selectColor,NSString * title ,UIImage * icon, CGFloat font){
        
        if (font) {
            weakSelf.titleLabel.font = [UIFont systemFontOfSize:font];
        }
        
        if (title) {
            [weakSelf setTitle:title forState:UIControlStateSelected];
        }
        
        if (selectColor) {
            [weakSelf setTitleColor:selectColor forState:UIControlStateSelected];
        }
        
        if (icon) {
            [weakSelf setImage:icon forState:UIControlStateSelected];
        }
        
        return weakSelf;
    };
}

@end
