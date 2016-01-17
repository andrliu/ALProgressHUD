//
//  ViewController.m
//  ALProgressHUD
//
//  Created by Andrew Liu on 1/11/16.
//  Copyright © 2016 Andrew Liu. All rights reserved.
//

#import "ViewController.h"
#import "ALProgressHUD.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
}

- (IBAction)tap:(UIButton *)sender {
    [ALProgressHUD showMessage:@"ERROR"];
    dispatch_after(dispatch_time(DISPATCH_TIME_NOW, 10 * NSEC_PER_SEC), dispatch_get_main_queue(), ^{
        [ALProgressHUD dismiss];
    });
}

@end
