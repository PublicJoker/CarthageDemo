//
//  ViewController.m
//  CarthageDemo
//
//  Created by Tony-sg on 2017/8/11.
//  Copyright © 2017年 Toyn. All rights reserved.
//

#import "ViewController.h"
#import <AFNetworking/AFNetworking.h>
#import "AFNetworking/AFNetworking.h"
#import <MBProgressHUD/MBProgressHUD.h>

//#import <Charts/Charts.h>
#import "Charts/Charts-Swift.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    MBProgressHUD *hud = [MBProgressHUD showHUDAddedTo:self.view animated:YES];
    hud.label.text = @"CarthageDemo";
    [hud hideAnimated:YES afterDelay:5];
    hud.completionBlock = ^{
        LineChartView *chart = [[LineChartView alloc] initWithFrame:self.view.frame];
        [self.view addSubview:chart];
    };
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
