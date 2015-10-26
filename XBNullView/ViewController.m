//
//  ViewController.m
//  XBNullView
//
//  Created by Scarecrow on 15/10/25.
//  Copyright (c) 2015年 XB. All rights reserved.
//

#import "ViewController.h"
#import "XBNullView.h"
@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    XBNullView *nullView = [[XBNullView alloc]initNullViewWithFrame:self.view.bounds andImage:[UIImage imageNamed:@"tip"] andDescription:@"这里空空如也"];
    nullView.desTextColor = [UIColor redColor];
    nullView.desTextFont = [UIFont systemFontOfSize:20];
    nullView.backgroundColor = [UIColor whiteColor];
    
    nullView.imgCenterYGap = -40;
    
    nullView.nullViewClickedBlock = ^(XBNullView *nullView){
        NSLog(@"点击了NullView===%@",nullView);
    };
    
    [self.view addSubview:nullView];
    
}


@end
