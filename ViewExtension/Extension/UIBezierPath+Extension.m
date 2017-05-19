//
//  UIBezierPath+Extension.m
//  ViewExtension
//
//  Created by 丁侃 on 2017/5/19.
//  Copyright © 2017年 丁侃. All rights reserved.
//

#import "UIBezierPath+Extension.h"

@implementation UIBezierPath (Extension)
- (UIBezierPath *(^)(CGPoint))bMoveToP {
    __weak typeof(self) wself = self;
    return ^(CGPoint point){
        [wself moveToPoint:point];
        return wself;
    };
}

- (UIBezierPath *(^)(CGPoint))bAddToP {
    __weak typeof(self) wself = self;
    return ^(CGPoint point){
        [wself addLineToPoint:point];
        return wself;
    };
}

- (UIBezierPath *(^)(CGPoint, CGFloat, CGFloat, CGFloat, BOOL))bAddArc {
    __weak typeof(self) wself = self;
    return ^(CGPoint center,CGFloat radius,CGFloat starAngle,CGFloat endAngle,BOOL closeWise){
        [wself addArcWithCenter:center radius:radius startAngle:starAngle endAngle:endAngle clockwise:closeWise];
        return wself;
    };
}


- (UIBezierPath *(^)(UIColor*))bFillColor {
    __weak typeof(self) wself = self;
    return ^(UIColor * c){
        [c set];
        [wself fill];
        return wself;
    };
}

- (UIBezierPath *(^)(UIColor*))bStrokeColor {
    __weak typeof(self) wself = self;
    return ^(UIColor * c){
        [c set];
        [wself stroke];
        return wself;
    };
}

- (UIBezierPath *(^)())bClose {
    __weak typeof(self) wself = self;
    return ^(){
        [wself closePath];
        return wself;
    };
}

@end
