//
//  EasyAlertView.m
//  EasyAlertView
//
//  Created by zhuxuhong on 2016/11/21.
//  Copyright © 2016年 zhuxh. All rights reserved.
//

#import "EasyAlertView.h"


#pragma mark ======== EZButton

@interface EZButton : UIButton

@end


#pragma mark ======== EasyAlertView
@interface EasyAlertView()

@property(nonatomic,strong)UIView *alertView;
@property(nonatomic,copy)NSString *title;
@property(nonatomic,copy)NSString *message;

@end


@implementation EasyAlertView

#pragma mark - initial method
+(instancetype)alertViewWithTitle:(NSString *)title
                          message:(NSString *)message
                            style:(EZAlertViewStyle)style{
    EasyAlertView *v = [[EasyAlertView alloc] initWithFrame:[UIScreen mainScreen].bounds];
    v.title = title;
    v.message = message;
    v.backgroundColor = [[UIColor blackColor] colorWithAlphaComponent:0.2];
    v.autoresizingMask = UIViewAutoresizingFlexibleWidth | UIViewAutoresizingFlexibleHeight;
    
    [v addSubview:v.alertView];
    
    return v;
}

#pragma mark - private method
-(void)touchesBegan:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event{
    [super touchesBegan:touches withEvent:event];
    [self dismiss];
}

#pragma mark - setters

#pragma mark - getters
-(UIView *)alertView{
    if (!_alertView) {
        _alertView = [[UIView alloc] initWithFrame:CGRectMake(0, 0, 500, 400)];
        _alertView.backgroundColor = [UIColor redColor];
        _alertView.center = self.center;
        _alertView.autoresizingMask = UIViewAutoresizingFlexibleTopMargin | UIViewAutoresizingFlexibleLeftMargin | UIViewAutoresizingFlexibleBottomMargin | UIViewAutoresizingFlexibleRightMargin;
    }
    return _alertView;
}


#pragma mark - tool method

#pragma mark - public method

-(void)addActionWithTitle:(NSString *)title style:(EZAlertViewActionStyle)style handler:(EZAlertViewActionHandler)handler{
    
}

-(void)showWithBackgroundStyle:(EZAlertViewBackgroundStyle)style animation:(EZAlertViewAnimationStyle)animation{
    [[UIApplication sharedApplication].keyWindow addSubview:self];
}

-(void)dismiss{
    [self removeFromSuperview];
}

@end
