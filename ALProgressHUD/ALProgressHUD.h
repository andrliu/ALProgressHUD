//
//  ALProgressHUD.h
//  ALProgressHUD
//
//  Created by Andrew Liu on 1/11/16.
//  Copyright © 2016 Andrew Liu. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ALProgressHUD : UIView

+ (void)show;

+ (void)showMessage:(NSString *)message;

+ (void)dismiss;

@end
