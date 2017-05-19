//
//  UILabel+Extension.m
//  ViewExtension
//
//  Created by 丁侃 on 2017/5/19.
//  Copyright © 2017年 丁侃. All rights reserved.
//

#import "UILabel+Extension.h"

@implementation UILabel (Extension)

-(UILabel *(^)(CGFloat))bFont{
    __weak typeof(self)wself = self;
    
    return ^(CGFloat font){
    
        wself.font = [UIFont systemFontOfSize:font];
        
        return wself;
    };
}
- (UILabel *(^)(CGFloat ,NSString *))bFontWithName {
    
    __weak typeof(self) weakSelf = self;
    return ^(CGFloat font,NSString *fontName){
        weakSelf.font = [UIFont fontWithName:fontName size:font];
        return weakSelf;
    };
}

- (UILabel *(^)(CGFloat))bBodyFont {
    
    __weak typeof(self) weakSelf = self;
    return ^(CGFloat font){
        weakSelf.font = [UIFont boldSystemFontOfSize:font];
        return weakSelf;
    };
}

- (UILabel *(^)(UIColor *))bTextColor {
    
    __weak typeof(self) weakSelf = self;
    return ^(UIColor *color){
        weakSelf.textColor = color;
        return weakSelf;
    };
}



- (UILabel *(^)(NSString *))bText {
    
    __weak typeof(self) weakSelf = self;
    return ^(NSString *string){
        weakSelf.text = string;
        return weakSelf;
    };
}


- (UILabel *(^)(NSString *))bTextAlignment{
    __weak typeof(self) weakSelf = self;
    return ^(NSString * al){
        
        if ([al isEqualToString:@"center"]) {
            weakSelf.textAlignment = NSTextAlignmentCenter;
        } else if([al isEqualToString:@"right"]) {
            weakSelf.textAlignment = NSTextAlignmentRight;
        } else if([al isEqualToString:@"left"]){
            weakSelf.textAlignment = NSTextAlignmentLeft;
        }
        
        return weakSelf;
    };
    
}

@end
