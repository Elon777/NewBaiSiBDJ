
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

/**
 *  此时遇到的问题
    1.按钮被选中,图片被渲染成蓝色
    2.按钮被选中,文字被渲染成蓝色
    3.发布按钮显示不出来,而且位置不对
 
 */



@interface TWETabBarController ()

@end

@implementation TWETabBarController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    // 1.添加tabBarVc所有子控制器
    [self setupAllChildViewController];
    
    
    //2.设置tabBar上按钮内容(由对应的子控制器的tabBarItem决定)
    
    [self setupAllTabBarButton];
    
}

- (void)setupAllTabBarButton{
    
    //0
    UIViewController *vc = self.childViewControllers[0];
    vc.tabBarItem.title = @"精华";
    vc.tabBarItem.image = [UIImage imageNamed:@"tabBar_essence_icon"];
    vc.tabBarItem.selectedImage = [UIImage imageNamed:@"tabBar_essence_click_icon"];

    
    
    //1
    UIViewController *vc1 = self.childViewControllers[1];
    vc1.tabBarItem.title = @"新帖";
    vc1.tabBarItem.image = [UIImage imageNamed:@"tabBar_new_icon"];
    vc1.tabBarItem.selectedImage = [UIImage imageNamed:@"tabBar_new_click_icon"];
    
    
    
    //2
    UIViewController *vc2 = self.childViewControllers[2];
    vc2.tabBarItem.image = [UIImage imageNamed:@"tabBar_publish_icon"];
    vc2.tabBarItem.selectedImage = [UIImage imageNamed:@"tabBar_publish_click_icon"];
    
    
    //3
    UIViewController *vc3 = self.childViewControllers[3];
    vc3.tabBarItem.title = @"关注";
    vc3.tabBarItem.image = [UIImage imageNamed:@"tabBar_friendTrends_icon"];
    vc3.tabBarItem.selectedImage = [UIImage imageNamed:@"tabBar_friendTrends_click_icon"];
    
    
    //4
    UIViewController *vc4 = self.childViewControllers[4];
    vc4.tabBarItem.title = @"我";
    vc4.tabBarItem.image = [UIImage imageNamed:@"tabBar_me_icon"];
    vc4.tabBarItem.selectedImage = [UIImage imageNamed:@"tabBar_me_click_icon"];
    
    
    
    
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
