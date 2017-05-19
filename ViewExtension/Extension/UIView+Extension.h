//
//  UIView+Extension.h
//  ViewExtension
//
//  Created by 丁侃 on 2017/5/19.
//  Copyright © 2017年 丁侃. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface UIView (Extension)

- (UIView *(^)(CGFloat radius,CGFloat bordWidth,UIColor *bordColor))bLayerCorner;

- (UIView *(^)(UIColor *backgroundColor))bBackgroundColor;

- (UIView *(^)(id, SEL))bTargetWithSelector ;
@end
