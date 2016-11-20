//
//  ViewController.m
//  EasyAlertView
//
//  Created by zhuxuhong on 2016/11/21.
//  Copyright © 2016年 zhuxh. All rights reserved.
//

#import "ViewController.h"
#import "EasyAlertView.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
}

- (IBAction)showAlert:(id)sender {
    EasyAlertView *alert = [EasyAlertView alertViewWithTitle:@"" message:nil style:EZAlertViewStyleAlert];
    [alert showWithBackgroundStyle:EZAlertViewBackgroundStyleDarkBlur animation:EZAlertViewAnimationStyleNone];
}

@end
