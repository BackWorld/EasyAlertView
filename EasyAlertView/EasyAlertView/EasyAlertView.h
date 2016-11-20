//
//  EasyAlertView.h
//  EasyAlertView
//
//  Created by zhuxuhong on 2016/11/21.
//  Copyright © 2016年 zhuxh. All rights reserved.
//

#import <UIKit/UIKit.h>

// view样式
typedef NS_ENUM(NSUInteger, EZAlertViewStyle){
    EZAlertViewStyleAlert = 0, //弹框
    EZAlertViewStyleActionSheet, //动作表单
};

// 背景样式
typedef NS_ENUM(NSUInteger, EZAlertViewBackgroundStyle){
    EZAlertViewBackgroundStyleDarkBlur = 0, //暗色模糊
    EZAlertViewBackgroundStyleLightBlur, //亮色模糊
    EZAlertViewBackgroundStyleTransparent //半透明
};

// 按钮样式
typedef NS_ENUM(NSUInteger, EZAlertViewActionStyle){
    EZAlertViewActionStyleDefault = 0, //默认
    EZAlertViewActionStyleCancel, //取消
    EZAlertViewActionStyleDestructive //警告
};

// 动画样式
typedef NS_ENUM(NSUInteger, EZAlertViewAnimationStyle){
    EZAlertViewAnimationStyleNone = 0,
    EZAlertViewAnimationStyleZoomIn,
    EZAlertViewAnimationStyleFlipHorizontal,
    EZAlertViewAnimationStyleFlipVertical,
    EZAlertViewAnimationStyleFlyInFromLeft,
    EZAlertViewAnimationStyleFlyInFromRight,
    EZAlertViewAnimationStyleFlyInFromTop,
    EZAlertViewAnimationStyleFlyInFromBottom
};


@interface EasyAlertView : UIView

typedef void(^EZAlertViewActionHandler)(NSString *title,
                                     EZAlertViewActionStyle style,
                                     BOOL enabled);

@property(nonatomic,strong)UIImage *image;
@property(nonatomic,strong)UIFont *titleFont;
@property(nonatomic,strong)UIColor *titleColor;
@property(nonatomic,strong)UIFont *messageFont;
@property(nonatomic,strong)UIColor *messageColor;


/*
    title 标题
    message 主要内容
    style 样式
 */
+(instancetype)alertViewWithTitle: (NSString*)title
                          message: (NSString*)message
                            style: (EZAlertViewStyle)style;

/*
    title 按钮标题
    style 按钮样式
    handler 回调
 */
-(void)addActionWithTitle: (NSString*)title
                    style: (EZAlertViewActionStyle)style
                  handler: (EZAlertViewActionHandler) handler;

// show
-(void)showWithBackgroundStyle: (EZAlertViewBackgroundStyle)style
                        animation: (EZAlertViewAnimationStyle)animation;
// dismiss
-(void)dismiss;

@end
