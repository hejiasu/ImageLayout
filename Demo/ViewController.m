//
//  ViewController.m
//  Demo
//
//  Created by soso on 2018/10/16.
//  Copyright © 2018年 soso. All rights reserved.
//

#import "ViewController.h"

@interface ViewController (){
    
}
@end

@implementation ViewController
    
- (void)viewDidLoad {
    [super viewDidLoad];
    
    for (NSInteger i = 0; i<9; i++) {
        [self showImageView:self.view withImageIndex:i];
    }
}
- (void)showImageView:(UIView *)bgView withImageIndex:(NSInteger)index{
    
    //一行的列数
    NSInteger cols = 3;
    //图片大小
    NSInteger imageW = 100;
    NSInteger imageH = 100;
    
    //每一列的间距
    CGFloat colMargin = (bgView.bounds.size.width - cols *imageW) / (cols - 1);
    
    //图片所在列
    NSInteger col = index % cols;
    //图片所在行
    NSInteger row = index / cols;
    
    CGFloat shopX = col * (imageW +colMargin);
    CGFloat shopY = row * (imageH + colMargin);
    
    UIImageView *imageView =[[UIImageView alloc]init];
    imageView.frame = CGRectMake(shopX, shopY, imageW, imageH);
    [imageView setImage:[UIImage imageNamed:[NSString stringWithFormat:@"Image%ld",index]]];
    [bgView addSubview:imageView];
}
@end
