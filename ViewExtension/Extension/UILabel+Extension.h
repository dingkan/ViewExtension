//
//  UILabel+Extension.h
//  ViewExtension
//
//  Created by 丁侃 on 2017/5/19.
//  Copyright © 2017年 丁侃. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface UILabel (Extension)

- (UILabel *(^)(CGFloat font))bFont;

- (UILabel *(^)(CGFloat font ,NSString *fontName))bFontWithName;

- (UILabel *(^)(CGFloat font))bBodyFont;

- (UILabel *(^)(UIColor *textColor))bTextColor;

- (UILabel *(^)(NSString *text))bText;

- (UILabel *(^)(NSString *alignment))bTextAlignment;

@end
