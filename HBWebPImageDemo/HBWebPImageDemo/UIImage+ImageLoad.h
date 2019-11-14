//
//  UIImage+ImageLoad.h
//  YTWebPDemo
//
//  Created by admin on 2019/11/1.
//  Copyright © 2019 admin. All rights reserved.
//

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@interface UIImage (ImageLoad)
+ (UIImage *)imageLocalNamed:(NSString *)imageName;
+ (UIImage *)imageWebPLocalNamed:(NSString *)imageName;
@end

NS_ASSUME_NONNULL_END
