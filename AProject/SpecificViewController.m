//
//  SpecificViewController.m
//  AProject
//
//  Created by lanouhn on 15/6/26.
//  Copyright (c) 2015年 lanou. All rights reserved.
//

#import "SpecificViewController.h"
#import "SDCycleScrollView.h"

@interface SpecificViewController ()<UITableViewDataSource , UITableViewDelegate>

@end

@implementation SpecificViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    NSLog(@"SpecificViewController");
     self.view.backgroundColor = [UIColor whiteColor];
    // Do any additional setup after loading the view.
    //设置导航条颜色
    self.navigationController.navigationBar.barTintColor = [UIColor greenColor];
    //设置导航条透明度
    self.navigationController.navigationBar.translucent = YES;
    //设置导航条左按钮
    UIBarButtonItem * leftButtonItem = [[UIBarButtonItem alloc]initWithImage:[UIImage imageNamed:@"left@2x.png"] style:UIBarButtonItemStylePlain target:self action:@selector(leftBarButtonItemAction)];
    self.navigationItem.leftBarButtonItem = leftButtonItem;
    
    //添加tableView
    self.aboveTableView = [[UITableView alloc] initWithFrame:[UIScreen mainScreen].bounds style:UITableViewStylePlain];
    self.aboveTableView.delegate = self;
    self.aboveTableView.dataSource = self;
    self.view = self.aboveTableView;


    //添加ScrollView
    self.videoScrollView = [[UIScrollView alloc] initWithFrame:CGRectMake(0, 0, self.view.frame.size.width, 200)];
    self.videoScrollView.backgroundColor = [UIColor cyanColor];

    self.aboveTableView.tableHeaderView = self.videoScrollView;
    self.videoScrollView.contentSize = CGSizeMake(self.view.frame.size.width * 5, 200);
    //自动滚动
    
    
    
//    CGPoint bottomOffset = CGPointMake(self.videoScrollView.contentOffset.x, self.videoScrollView.contentSize.height);
//    CGPoint newOffset = self.videoScrollView.contentOffset;
//    newOffset.y = 0;
 
////    - (void)setContentOffset:(CGPoint)contentOffset animated:(BOOL)animated
//    [self.videoScrollView setContentOffset:newOffset animated:YES];
    
    
    
//    //给ScrollView添加代理
//    self.videoScrollView.delegate = self;
    //整页翻动
    self.videoScrollView.pagingEnabled = YES;
    
}
#pragma mark - tableView代理方法
- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView
{
    return 1;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    return 100;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
//    static NSString *videoCellid = @"videoCellid";
    UITableViewCell *cell = [[UITableViewCell alloc] init];
    return cell;
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


- (void)dealloc
{
    [_videoScrollView release];
    [_topView release];
    [_aboveTableView release];
    [super dealloc];
}


@end
