//
//  main.m
//  ElonNewBaiSiBDJ
//
//  Created by Elon on 16/7/31.
//  Copyright © 2016年 Elon&Tweet. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "AppDelegate.h"

//程序启动先进入main函数 .再进入UIApplicationMain
/**
 UIApplicationMain底层做了一些事
 1.创建UIApplication对象(应用级别操作 ①设置提醒数字 ②设置联网状态 ③打电话,发短信
 ④修改状态栏 ⑤应用之间跳转openURl)
 
 2.UIApplication对象代理(1.监听应用程序生命周期 2.监听内存警告)
 
 3.开启主允许循环(保证程序一直运行,监听事件) runloop
 
 4.判断下info.plist中,是否指定了main,如果指定了,就会去加载main.storyboard

 
 */





int main(int argc, char * argv[]) {
    @autoreleasepool {
        return UIApplicationMain(argc, argv, nil, NSStringFromClass([AppDelegate class]));
    }
}
