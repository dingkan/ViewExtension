# ViewExtension


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
