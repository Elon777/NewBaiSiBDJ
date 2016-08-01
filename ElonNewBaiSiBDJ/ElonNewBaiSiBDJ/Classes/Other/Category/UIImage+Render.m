//
//  UIImage+Render.m
//  ElonNewBaiSiBDJ
//
//  Created by Elon on 16/8/1.
//  Copyright © 2016年 Elon&Tweet. All rights reserved.
//

#import "UIImage+Render.h"

@implementation UIImage (Render)

+ (UIImage *)imageWithOriginalRender:(NSString *)imageName
{
    UIImage *image = [UIImage imageNamed:imageName];
    
    return [image imageWithRenderingMode:UIImageRenderingModeAlwaysOriginal];
    
}






@end
