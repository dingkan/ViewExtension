//
//  UIImageView+Extension.h
//  ViewExtension
//
//  Created by 丁侃 on 2017/5/19.
//  Copyright © 2017年 丁侃. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface UIImageView (Extension)
-(UIImageView *(^)(id target ,SEL selector))bTargetWithSelector;
- (UIImageView *(^)(UIImage * img))bImage;
-(UIImageView *(^)(UIColor *bcolor))bBackgroundColor;
@end
