//
//  MBProgressHUD.h
//  gongfudai
//
//  Created by David Lan on 15/7/24.
//  Copyright (c) 2015年 dashu. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "MBProgressHUD.h"

@interface MBProgressHUD (Expand)
+(instancetype)showLoading:(NSString*)text;
+(instancetype)showSuccess:(NSString*)text withDuration:(NSTimeInterval)duration;
+(instancetype)showFail:(NSString*)text withDuration:(NSTimeInterval)duration;

-(void)showLoading:(NSString*)text;
-(void)showSuccess:(NSString*)text;
-(void)showSuccess:(NSString*)text withDuration:(NSTimeInterval)duration;
-(void)showFail:(NSString*)text;
-(void)showFail:(NSString*)text withDuration:(NSTimeInterval)duration;
@end
