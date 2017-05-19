//
//  UIImageView+Extension.m
//  ViewExtension
//
//  Created by 丁侃 on 2017/5/19.
//  Copyright © 2017年 丁侃. All rights reserved.
//

#import "UIImageView+Extension.h"

@implementation UIImageView (Extension)

-(UIImageView *(^)(id target ,SEL selector))bTargetWithSelector{
    __weak typeof(self) wself = self;
    
    return ^(id target, SEL selector){
    
        wself.userInteractionEnabled = YES;
        UITapGestureRecognizer *tap = [[UITapGestureRecognizer alloc]initWithTarget:target action:selector];
        [wself addGestureRecognizer:tap];
        
        return wself;
    };
}

- (UIImageView *(^)(UIImage * img))bImage{
 
    __weak typeof(self)wself = self;
    
    return ^(UIImage *img){
    
        wself.image = img;
        
        return wself;
    };
    
}


-(UIImageView *(^)(UIColor *bcolor))bBackgroundColor{
    
    __weak typeof(self)wself = self;
    return ^(UIColor *bcolor){
        
        wself.backgroundColor = bcolor;
        
        return wself;
    };
}

@end
