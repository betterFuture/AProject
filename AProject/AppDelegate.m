//
//  AppDelegate.m
//  AProject
//
//  Created by lanouhn on 15/6/25.
//  Copyright (c) 2015年 lanou. All rights reserved.
//

#import "AppDelegate.h"

#import "AllMovieViewController.h"
#import "SpecificViewController.h"
#import "ClassifyViewController.h"
@interface AppDelegate ()

@end

@implementation AppDelegate


- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
    
    //添加tabBarController
    AllMovieViewController * allVC = [[AllMovieViewController alloc]init];
     UINavigationController * nav1 = [[UINavigationController alloc]initWithRootViewController:allVC];
    
    
    SpecificViewController * sVC = [[SpecificViewController alloc]init];
    UINavigationController * nav2 = [[UINavigationController alloc]initWithRootViewController:sVC];
    
    ClassifyViewController * cVC = [[ClassifyViewController alloc]init];
    UINavigationController * nav3 = [[UINavigationController alloc]initWithRootViewController:cVC];
    
    NSArray * vcArray = @[nav1 , nav2 , nav3];
    UITabBarController * tab = [[UITabBarController alloc]init];
    tab.viewControllers = vcArray;
    self.window.rootViewController = tab;
    //设置标题
     nav1.tabBarItem.title = @"所有";
    nav2 . tabBarItem .title = @"专辑";
    nav3.tabBarItem.title = @"分类";
    //设置bar颜色
    tab.tabBar.barTintColor = [UIColor greenColor];
    //设置默认选择
    tab.selectedIndex = 0;
    //设置tabbar的选中标题颜色；
    tab.tabBar.tintColor = [UIColor blueColor];
    
    
    
    return YES;
}

- (void)applicationWillResignActive:(UIApplication *)application {
    // Sent when the application is about to move from active to inactive state. This can occur for certain types of temporary interruptions (such as an incoming phone call or SMS message) or when the user quits the application and it begins the transition to the background state.
    // Use this method to pause ongoing tasks, disable timers, and throttle down OpenGL ES frame rates. Games should use this method to pause the game.
}

- (void)applicationDidEnterBackground:(UIApplication *)application {
    // Use this method to release shared resources, save user data, invalidate timers, and store enough application state information to restore your application to its current state in case it is terminated later.
    // If your application supports background execution, this method is called instead of applicationWillTerminate: when the user quits.
}

- (void)applicationWillEnterForeground:(UIApplication *)application {
    // Called as part of the transition from the background to the inactive state; here you can undo many of the changes made on entering the background.
}

- (void)applicationDidBecomeActive:(UIApplication *)application {
    // Restart any tasks that were paused (or not yet started) while the application was inactive. If the application was previously in the background, optionally refresh the user interface.
}

- (void)applicationWillTerminate:(UIApplication *)application {
    // Called when the application is about to terminate. Save data if appropriate. See also applicationDidEnterBackground:.
}

@end
