//
//  UIImage+ImageLoad.m
//  YTWebPDemo
//
//  Created by admin on 2019/11/1.
//  Copyright © 2019 admin. All rights reserved.
//

#import "UIImage+ImageLoad.h"
#import "UIImage+WebP.h"
@implementation UIImage (ImageLoad)
+ (UIImage *)imageLocalNamed:(NSString *)imageName imageType:(NSString *)imageType {
    UIImage *image = nil;
    if (imageType == nil) {
        NSString *path = [[NSBundle mainBundle] pathForResource:imageName ofType:@"png"];
        if (path == nil) {
            path = [[NSBundle mainBundle] pathForResource:imageName ofType:@"jpg"];
        }
        NSData *data = [[NSData alloc] initWithContentsOfFile:path];
        image = [UIImage imageWithData:data];
    } else {
        imageType = @"webp";
        NSString *path = [[NSBundle mainBundle] pathForResource:imageName ofType:@"webp"];
        NSData *data = [[NSData alloc] initWithContentsOfFile:path];
        image = [UIImage sd_imageWithWebPData:data];
    }
    
    
    return image;
}
+ (UIImage *)imageLocalNamed:(NSString *)imageName {
    return [self imageLocalNamed:imageName imageType:nil];
}

+ (UIImage *)imageWebPLocalNamed:(NSString *)imageName {
    return [self imageLocalNamed:imageName imageType:@"webp"];
}
@end
