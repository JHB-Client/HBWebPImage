//
//  ViewController.m
//  HBWebPImageDemo
//
//  Created by admin on 2019/11/14.
//  Copyright © 2019 admin. All rights reserved.
//

#import "ViewController.h"
//#import "UIImageView+WebCache.h"
//#import "UIImage+WebP.h"
#import "UIImage+ImageLoad.h"
@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    UIImageView *imageView = [[UIImageView alloc] initWithFrame:CGRectMake(0, 0, 100, 100)];
        imageView.backgroundColor = [UIColor greenColor];
        [self.view addSubview:imageView];
        
        
    //    [imageView sd_setImageWithURL:[NSURL URLWithString:@"https://front-images.oss-cn-hangzhou.aliyuncs.com/i4/13810da801ebe0e30832123c96b18a28-42-54.webp!webp"]];
        
        imageView.image = [UIImage imageWebPLocalNamed:@"test3"];
}


@end
