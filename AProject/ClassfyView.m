//
//  ClassfyView.m
//  AProject
//
//  Created by lanouhn on 15/6/26.
//  Copyright (c) 2015年 lanou. All rights reserved.
//

#import "ClassfyView.h"
#define Kspace 15
#define kheight 100
#define KbuttonWidth 100
#define KbuttonHeight 50

@implementation ClassfyView

- (instancetype)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    if (self) {
        [self addSubviews];
    }
    return self;
}
-(void)addSubviews{
    //label
    UILabel *label = [[UILabel alloc]initWithFrame:CGRectMake(30, 100, 100, 50)];
    label.text = @"本周热点";
    label.backgroundColor = [UIColor orangeColor];
    [self addSubview:label];
    [label release];
    
    NSArray *arr1 = @[@"科技", @"爱情" , @"电影混剪"];
    NSArray *arr2  = @[@"旅游" , @"舞蹈" , @"游戏"];
    for (int i = 0; i < 3; i++) {
        UIButton *button = [UIButton buttonWithType:UIButtonTypeSystem];
        button.frame = CGRectMake(Kspace + (Kspace + KbuttonWidth) * i, 160, KbuttonWidth, KbuttonHeight);
        [button setTitle:arr1[i] forState:UIControlStateNormal];
        button.tag = 201 + i;
        button.backgroundColor = [UIColor purpleColor];
        [button addTarget:self action:@selector(buttonAction:) forControlEvents:UIControlEventTouchUpInside];
        [self addSubview:button];
    }
    for (int i = 0; i < 3; i++) {
        UIButton *button = [UIButton buttonWithType:UIButtonTypeSystem];
        button.frame = CGRectMake(Kspace + (Kspace + KbuttonWidth) * i, 250, KbuttonWidth, KbuttonHeight);
        [button setTitle:arr2[i] forState:UIControlStateNormal];
        button.tag = 200 + 3  + i;
        button.backgroundColor = [UIColor purpleColor];
        [button addTarget:self action:@selector(buttonAction:) forControlEvents:UIControlEventTouchUpInside];
        [self addSubview:button];
    }

    
}
-(void)buttonAction:(UIButton *)sender{
    UIButton *button = [[UIButton alloc]init];
    
}
@end
