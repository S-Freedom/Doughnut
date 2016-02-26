//
//  DoughnutView.m
//  Doughnut
//
//  Created by 黄鹏飞 on 16/2/26.
//  Copyright © 2016年 黄鹏飞. All rights reserved.
//

#define kScreenWidth [UIScreen mainScreen].bounds.size.width
#define kScreenHeight [UIScreen mainScreen].bounds.size.height
#import "DoughnutView.h"

@implementation DoughnutView

- (void)drawRect:(CGRect)rect{
    [super drawRect:rect];
    CGContextRef ctx = UIGraphicsGetCurrentContext();

    CGContextSetLineWidth(ctx, 10);
    CGFloat r = 50;
    CGFloat space = 0.05;
    
    // 画四个圆环
    CGContextSetStrokeColorWithColor(ctx, [UIColor blackColor].CGColor);
    CGContextAddArc(ctx, 100, 100, r, - M_PI_2, M_PI_4, 0);
    CGContextStrokePath(ctx);
    
    CGContextSetStrokeColorWithColor(ctx, [UIColor redColor].CGColor);
    CGContextAddArc(ctx, 100, 100, r, M_PI_4 + space, M_PI_4 + 1, 0);
    CGContextStrokePath(ctx);

    CGContextSetStrokeColorWithColor(ctx, [UIColor greenColor].CGColor);
    CGContextAddArc(ctx, 100, 100, r, M_PI_4 + 1 + space, M_PI_4 + 1.5, 0);
    CGContextStrokePath(ctx);
    
    CGContextSetStrokeColorWithColor(ctx, [UIColor orangeColor].CGColor);
    CGContextAddArc(ctx, 100, 100, r, M_PI_4 + 1.5 + space, - M_PI_2 - space, 0);
    CGContextStrokePath(ctx);

    // 贝塞尔取现
    CGContextSetStrokeColorWithColor(ctx, [UIColor blueColor].CGColor);
    UIBezierPath *berzierPath1 = [UIBezierPath bezierPathWithRect:CGRectMake(100, 100, 100, 100)];
    [berzierPath1 stroke];
    
    CGContextSetStrokeColorWithColor(ctx, [UIColor brownColor].CGColor);
    CGContextSetLineWidth(ctx, 10.0f);
    UIBezierPath *bezierPath2 = [UIBezierPath bezierPathWithArcCenter:CGPointMake(200, 300) radius:50 startAngle:- M_PI_2 endAngle:-M_PI_2 - 0.0000000001 clockwise:YES];
    [bezierPath2 stroke];
}

@end
