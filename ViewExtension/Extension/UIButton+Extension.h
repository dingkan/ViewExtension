//
//  UIButton+Extension.h
//  ViewExtension
//
//  Created by 丁侃 on 2017/5/19.
//  Copyright © 2017年 丁侃. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface UIButton (Extension)

-(UIButton *(^)(CGFloat fontSize))bFont;

-(UIButton *(^)(NSString *text))bText;

-(UIButton *(^)(UIColor *textColor))bTextColor;

-(UIButton *(^)(id target, SEL selector))bTargetWithSelector;

-(UIButton *(^)(CGFloat radius, CGFloat width, UIColor *color))bCornerRadiusWithBordWidthAndBordColor;

-(UIButton *(^)(UIImage *bImg))bIBackGroundmage;

- (UIButton *(^)(UIColor *))bBackGroundColor ;

- (UIButton *(^)(CGFloat))bCornerRadius ;

-(UIButton *(^)(CGFloat , UIColor *, UIImage *,NSString *))bHighlightedModel;

- (UIButton *(^)(UIColor *, NSString *, UIImage *, CGFloat))bSelectModel;
@end
