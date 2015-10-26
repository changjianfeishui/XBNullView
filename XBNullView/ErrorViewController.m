//
//  ErrorViewController.m
//  XBNullView
//
//  Created by XB on 15/10/26.
//  Copyright © 2015年 XB. All rights reserved.
//

#import "ErrorViewController.h"
#import "XBNullView.h"
@interface ErrorViewController ()

@end

@implementation ErrorViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    XBNullView *nullView = [[XBNullView alloc]initNullViewWithFrame:self.view.bounds andImage:nil andDescription:@"网络错误,点击重新加载"];
    nullView.desTextFont = [UIFont systemFontOfSize:20];
    nullView.backgroundColor = [UIColor whiteColor];
    
    
    nullView.nullViewClickedBlock = ^(XBNullView *nullView){
        NSLog(@"点击了NullView===%@",nullView);
    };
    
    [self.view addSubview:nullView];}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
