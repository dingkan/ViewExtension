//
//  UIBezierPath+Extension.h
//  ViewExtension
//
//  Created by 丁侃 on 2017/5/19.
//  Copyright © 2017年 丁侃. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface UIBezierPath (Extension)

- (UIBezierPath * (^)(CGPoint p))bMoveToP;
- (UIBezierPath * (^)(CGPoint p))bAddToP;

- (UIBezierPath *(^)())bClose;

- (UIBezierPath *(^)(UIColor*color))bStrokeColor;

- (UIBezierPath *(^)(UIColor*color))bFillColor;

/**
 坐标系 画圆矩形   c0(- M_PI      ,3/2 * M_PI)
 c1(3/2 * M_PI  ,0)
 c2(0           ,-3/2 * M_PI)
 c3(-3/2 * M_PI ,M_PI)
 
 c0        c1
 /---------\
 |         |
 |         |
 |         |
 c3\_________/c2
 */
- (UIBezierPath * (^)(CGPoint center,CGFloat radius,CGFloat starAngle,CGFloat endAngle,BOOL clockwise))bAddArc;
@end
