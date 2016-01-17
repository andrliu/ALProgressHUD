//
//  ALProgressHUD.m
//  ALProgressHUD
//
//  Created by Andrew Liu on 1/11/16.
//  Copyright © 2016 Andrew Liu. All rights reserved.
//

#import "ALProgressHUD.h"

#define kHUDWidth           100
#define kHUDRadius          10
#define kHUDBackgroundColor [UIColor lightGrayColor]
#define kHUDBackgroundAlpha 0.3
#define kHUDColor           [UIColor redColor]
#define kHUDAlpha           0.7


@implementation ALProgressHUD

+ (void)show {
    ALProgressHUD *HUD = [[self alloc] initWithFrame:[[UIScreen mainScreen] bounds]];
    HUD.backgroundColor = kHUDBackgroundColor;
    HUD.alpha = kHUDBackgroundAlpha;
    UIWindow* mainWindow = [[UIApplication sharedApplication] keyWindow];
    UIView *view = [[UIView alloc] initWithFrame:CGRectMake(HUD.center.x-kHUDWidth/2, HUD.center.y-kHUDWidth/2, kHUDWidth, kHUDWidth)];
    view.backgroundColor = kHUDColor;
    view.alpha = kHUDAlpha;
    view.layer.cornerRadius = kHUDRadius;
    view.layer.masksToBounds = YES;
    [HUD addSubview: view];
    [mainWindow addSubview: HUD];
}

+ (void)showMessage:(NSString *)message {
    ALProgressHUD *HUD = [[self alloc] initWithFrame:[[UIScreen mainScreen] bounds]];
    HUD.backgroundColor = kHUDBackgroundColor;
    HUD.alpha = kHUDBackgroundAlpha;
    UIWindow* mainWindow = [[UIApplication sharedApplication] keyWindow];
    UILabel *label = [[UILabel alloc] initWithFrame:CGRectMake(HUD.center.x-kHUDWidth/2, HUD.center.y-kHUDWidth/2, kHUDWidth, kHUDWidth)];
    label.text = message;
    label.font = [UIFont fontWithName:@"Avenir-Medium" size:17];
    label.textColor = [UIColor whiteColor];
    label.textAlignment = NSTextAlignmentCenter;
    label.backgroundColor = kHUDColor;
    label.alpha = kHUDAlpha;
    label.layer.cornerRadius = kHUDRadius;
    label.layer.masksToBounds = YES;
    [HUD addSubview: label];
    [mainWindow addSubview: HUD];
}

+ (void)dismiss {
    UIWindow* mainWindow = [[UIApplication sharedApplication] keyWindow];
    for (UIView *subview in [mainWindow subviews]) {
        if ([subview isKindOfClass:[ALProgressHUD class]]) {
            [subview removeFromSuperview];
            break;
        }
    }
}

@end
