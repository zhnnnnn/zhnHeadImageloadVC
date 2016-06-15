//
//  ViewController.m
//  zhnHeadImageloadVC
//
//  Created by zhn on 16/6/15.
//  Copyright © 2016年 zhn. All rights reserved.
//

#import "ViewController.h"
#import "ZHNheadImageLoadViewController.h"

@interface ViewController ()
@property (nonatomic,weak) UIImageView * tempImage;
@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    
    self.view.backgroundColor = [UIColor whiteColor];
    UIImageView * tempImage = [[UIImageView alloc]init];
    [self.view addSubview:tempImage];
    tempImage.frame = CGRectMake(0, 100, 100, 100);
    self.tempImage = tempImage;
}
- (IBAction)clickPresent:(id)sender {
    
    ZHNheadImageLoadViewController * headVC = [[ZHNheadImageLoadViewController alloc]init];
    headVC.oldImage = [UIImage imageNamed:@"meinv"];
    headVC.ZHNheadImageBlock = ^(UIImage * headimage){
        self.tempImage.image = headimage;
    };
    [self presentViewController:headVC animated:YES completion:nil];
    //    [self.navigationController pushViewController:headVC animated:YES];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
