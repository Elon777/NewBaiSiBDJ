//
//  UIImage+Render.h
//  ElonNewBaiSiBDJ
//
//  Created by Elon on 16/8/1.
//  Copyright © 2016年 Elon&Tweet. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface UIImage (Render)

// 技巧:声明完一个方法之后,不要急于实现,应该在外界先调用

//传递一个图片名称给我,返回一个没有渲染的图片

+(UIImage *)imageWithOriginalRender:(NSString *)imageName;

 

@end
