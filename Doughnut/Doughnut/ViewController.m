//
//  ViewController.m
//  Doughnut
//
//  Created by 黄鹏飞 on 16/2/26.
//  Copyright © 2016年 黄鹏飞. All rights reserved.
//

#import "ViewController.h"
#import "DoughnutView.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    DoughnutView *doughnutView = [[DoughnutView alloc]initWithFrame:self.view.bounds];
    doughnutView.center = self.view.center;
    doughnutView.backgroundColor = [UIColor whiteColor];
    [self.view addSubview:doughnutView];
    
}

@end
