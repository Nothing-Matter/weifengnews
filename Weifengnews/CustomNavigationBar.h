//
//  CustomNavigationBar.h
//  ZhiLian
//
//  Created by ibokan on 13-4-11.
//  Copyright (c) 2013年 ibokan. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "CreateControl.h"

@interface CustomNavigationBar : UIView

//导航栏的标题显示框
@property(retain,nonatomic)UILabel * titleLabel;

//导航的标题
@property(copy,nonatomic)NSString * title;

//左边按钮
@property(retain,nonatomic)UIButton * backBtn;

//下一页
@property(retain,nonatomic)UIButton * rightBtn;

//上一页
@property(retain,nonatomic)UIButton * leftBtn;

//liftBtn的设置器
-(void)setLeftBtn:(UIButton *)liftBtn;
//rightBtn的设置器
-(void)setRightBtn:(UIButton *)rightBtn;
//title的设置器
-(void)setTitle:(NSString *)title;
//backBtn的设置器
-(void)setBackBtn:(UIButton *)backBtn;
@end
