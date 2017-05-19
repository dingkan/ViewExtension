//
//  ViewController.m
//  ViewExtension
//
//  Created by 丁侃 on 2017/5/19.
//  Copyright © 2017年 丁侃. All rights reserved.
//

#import "ViewController.h"

#import "UIImageView+Extension.h"
#import "UIButton+Extension.h"
#import "UILabel+Extension.h"
#import "UIView+Extension.h"
#import "UIBezierPath+Extension.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    [self testBtn];
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


-(void)testBtn{
    
    UIButton *btn = [UIButton buttonWithType:UIButtonTypeCustom];
    btn.frame = CGRectMake(30, 100, 300, 35);
    btn.bFont(12).bTextColor([UIColor redColor]).bTargetWithSelector(self,@selector(click:)).bText(@"连式");
    [self.view addSubview:btn];
    
}

-(void)click:(UIButton *)btn{
    btn.selected = !btn.selected;
    
    btn.bSelectModel([UIColor blueColor],@"点击",nil,15);
}

@end
