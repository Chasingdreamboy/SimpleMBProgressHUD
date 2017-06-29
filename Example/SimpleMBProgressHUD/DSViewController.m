//
//  DSViewController.m
//  SimpleMBProgressHUD
//
//  Created by acct<blob>=<NULL> on 06/23/2017.
//  Copyright (c) 2017 acct<blob>=<NULL>. All rights reserved.
//

#import "DSViewController.h"
#import <SimpleMBProgressHUD/MBProgressHUD+Expand.h>

@interface DSViewController ()

@end

@implementation DSViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
}
- (void)touchesBegan:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event {
//    [MBProgressHUD showLoading:@"你来咬我呀"];
    [MBProgressHUD showSuccess:@"AAAA" withDuration:1.2];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
