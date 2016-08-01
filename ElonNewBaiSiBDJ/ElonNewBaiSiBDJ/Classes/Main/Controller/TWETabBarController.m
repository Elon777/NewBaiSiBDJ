
//
//  TWETabBarController.m
//  ElonNewBaiSiBDJ
//
//  Created by Elon on 16/8/1.
//  Copyright © 2016年 Elon&Tweet. All rights reserved.
//

#import "TWETabBarController.h"
#import "TWEEssenceViewController.h"
#import "TWENewViewController.h"
#import "TWEPublishViewController.h"
#import "TWEFriendTrendViewController.h"
#import "TWEMeViewController.h"





@interface TWETabBarController ()

@end

@implementation TWETabBarController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    // 1.添加tabBarVc所有子控制器
    [self setupAllChildViewController];


}



- (void)setupAllChildViewController{
    
    
    // 精华
    TWEEssenceViewController *essenceVc = [[TWEEssenceViewController alloc] init];
    essenceVc.view.backgroundColor = [UIColor blueColor];
    UINavigationController *nav = [[UINavigationController alloc] initWithRootViewController:essenceVc];
    [self addChildViewController:nav];
    
    // 新帖
    TWENewViewController *newVc = [[TWENewViewController alloc] init];
    newVc.view.backgroundColor = [UIColor orangeColor];
    UINavigationController *nav1 = [[UINavigationController alloc] initWithRootViewController:newVc];
    [self addChildViewController:nav1];
    
    // 发布
    TWEPublishViewController *publishVc = [[TWEPublishViewController alloc] init];
    publishVc.view.backgroundColor = [UIColor purpleColor];
    [self addChildViewController:publishVc];
    
    // 关注
    TWEFriendTrendViewController *friVc = [[TWEFriendTrendViewController alloc] init];
    friVc.view.backgroundColor = [UIColor magentaColor];
    UINavigationController *nav3 = [[UINavigationController alloc] initWithRootViewController:friVc];
    [self addChildViewController:nav3];
    
    // 我
    TWEMeViewController *meVc = [[TWEMeViewController alloc] init];
    meVc.view.backgroundColor = [UIColor brownColor];
    UINavigationController *nav4 = [[UINavigationController alloc] initWithRootViewController:meVc];
    [self addChildViewController:nav4];

    
}





@end
