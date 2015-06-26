//
//  AllMovieViewController.m
//  AProject
//
//  Created by lanouhn on 15/6/26.
//  Copyright (c) 2015年 lanou. All rights reserved.
//

#import "AllMovieViewController.h"

@interface AllMovieViewController ()

@end

@implementation AllMovieViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    NSLog(@"AllMovieController");
    self.view.backgroundColor = [UIColor whiteColor];
    //设置导航条颜色
    self.navigationController.navigationBar.barTintColor = [UIColor greenColor];
    //设置导航条透明度
    self.navigationController.navigationBar.translucent = YES;
    //设置导航条左按钮
    UIBarButtonItem * leftButtonItem = [[UIBarButtonItem alloc]initWithImage:[UIImage imageNamed:@"left@2x.png"] style:UIBarButtonItemStylePlain target:self action:@selector(leftBarButtonItemAction)];
    self.navigationItem.leftBarButtonItem = leftButtonItem;
    
    // Do any additional setup after loading the view.
}
#pragma mark -leftBarButtonItemAction
-(void)leftBarButtonItemAction{
    NSLog(@"leftBarButtonItemAction");
    
}

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
