//
//  MBProgressHUD.m
//  gongfudai
//
//  Created by David Lan on 15/7/24.
//  Copyright (c) 2015年 dashu. All rights reserved.
//

#import "MBProgressHUD+Expand.h"
#import <SimpleFontAwesomeKit/FAKIonIcons.h>
@implementation MBProgressHUD(Expand)

+(UIWindow*)getWindow{
    NSEnumerator *frontToBackWindows = [[[UIApplication sharedApplication]windows]reverseObjectEnumerator];
    
    for (UIWindow *window in frontToBackWindows){
        if (window.windowLevel == UIWindowLevelNormal && !window.hidden) {
            return window;
        }
    }
    return [UIApplication sharedApplication].keyWindow;
}


+(instancetype)showLoading:(NSString*)text{
    UIWindow* window=[self getWindow];
    MBProgressHUD* hud=[[MBProgressHUD alloc]initWithWindow:window];
    [window addSubview:hud];
    [hud showLoading:text];
    return hud;
}
+(instancetype)showSuccess:(NSString*)text withDuration:(NSTimeInterval)duration{
    UIWindow* window=[self getWindow];
    MBProgressHUD* hud=[[MBProgressHUD alloc]initWithWindow:window];
    [window addSubview:hud];
    [hud showSuccess:text withDuration:duration];
    return hud;
}
+(instancetype)showFail:(NSString*)text withDuration:(NSTimeInterval)duration{
    UIWindow* window=[self getWindow];
    MBProgressHUD* hud=[[MBProgressHUD alloc]initWithWindow:window];
    [window addSubview:hud];
    [hud showFail:text withDuration:duration];
    return hud;
}
-(void)showLoading:(NSString*)text{
    [self setMode:MBProgressHUDModeIndeterminate];
    self.labelText=text;
    [self show:YES];
}
-(void)showSuccess:(NSString*)text{
    [self setMode:MBProgressHUDModeCustomView];
    self.labelText=text;
    FAKIonIcons* icon=[FAKIonIcons iosCheckmarkOutlineIconWithSize:30];
    [icon addAttribute:NSForegroundColorAttributeName value:[UIColor whiteColor]];
    UIImage* image=[icon imageWithSize:CGSizeMake(30, 30)];
    [self setCustomView:[[UIImageView alloc] initWithImage:image]];
    [self show:YES];
}
-(void)showSuccess:(NSString*)text withDuration:(NSTimeInterval)duration{
    [self showSuccess:text];
    [self hide:YES afterDelay:duration];
}
-(void)showFail:(NSString*)text{
    [self setMode:MBProgressHUDModeCustomView];
    self.labelText=text;
    FAKIonIcons* icon=[FAKIonIcons iosCloseOutlineIconWithSize:30];
    [icon addAttribute:NSForegroundColorAttributeName value:[UIColor whiteColor]];
    UIImage* image=[icon imageWithSize:CGSizeMake(30, 30)];
    [self setCustomView:[[UIImageView alloc] initWithImage:image]];
    [self show:YES];
}
-(void)showFail:(NSString*)text withDuration:(NSTimeInterval)duration{
    [self showFail:text];
    [self hide:YES afterDelay:duration];
}
@end
