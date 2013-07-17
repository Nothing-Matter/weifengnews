//
//  CustomNavigationBar.m
//  ZhiLian
//
//  Created by ibokan on 13-4-11.
//  Copyright (c) 2013年 ibokan. All rights reserved.
//

#import "CustomNavigationBar.h"


@implementation CustomNavigationBar

- (id)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    if (self) {
        // Initialization code
        
        //设置背景颜色
        [self setBackgroundColor:[UIColor colorWithPatternImage:[UIImage imageNamed:@"nav_bg.png"]]];
        //设置视图位置
        self.frame = CGRectMake(0, 0, 320*SIZE_WIDTH, 44*SIZE_HEIGHT);
        
        //创建标题显示框并设置
        UILabel * title = [CreateControl createLableWithFrame:CGRectMake(80*SIZE_WIDTH, (44-19)/2*SIZE_HEIGHT, 160*SIZE_WIDTH, 19*SIZE_HEIGHT)
                                                     andTitle:nil
                                                      andfont:[UIFont systemFontOfSize:20]
                                                andTitleColor:[UIColor colorWithRed:255/255 green:255/255 blue:255/255 alpha:1]
                                           andBackgroundColor:[UIColor clearColor]
                                             andTextAlignment:NSTextAlignmentCenter];
        self.titleLabel = title;
        //添加到导航栏上
        [self addSubview:title];
        
        
    }
    return self;
}

//rightBtn的设置器
-(void)setRightBtn:(UIButton *)rightBtn
{
    //判断是否为空
    if(_rightBtn != rightBtn)
    {
        //从父视图上移除
        [_rightBtn removeFromSuperview];
        //释放内存
        [_rightBtn release];
        _rightBtn=[rightBtn retain];
        //设置框架
        _rightBtn.frame = CGRectMake((320-7-48)*SIZE_WIDTH, 7*SIZE_HEIGHT, 48*SIZE_WIDTH, 30*SIZE_HEIGHT);
        [self addSubview:_rightBtn];
    }
    //添加分割图片
    UIImageView * img = [[UIImageView alloc]initWithFrame:CGRectMake((320-7-48-1)*SIZE_WIDTH, 7*SIZE_HEIGHT, 1*SIZE_WIDTH, 29*SIZE_HEIGHT)];
    img.image = [UIImage imageNamed:@"nav_center.png"];
    [self addSubview:img];
    [img release];
    
}

//liftBtn的设置器
-(void)setLeftBtn:(UIButton *)liftBtn
{
    //判断是否为空
    if(_leftBtn != liftBtn)
    {
         //从父视图上移除
        [_leftBtn removeFromSuperview];
         //释放内存
        [_leftBtn release];
        _leftBtn=[liftBtn retain];
        //设置框架
        _leftBtn.frame = CGRectMake((320-7-48*2-1)*SIZE_WIDTH, 7*SIZE_HEIGHT, 48*SIZE_WIDTH, 30*SIZE_HEIGHT);
        [self addSubview:_leftBtn];
    }
    
}

//backBtn的设置器
-(void)setBackBtn:(UIButton *)backBtn
{
    //判断是否为空
    if(_backBtn != backBtn)
    {
        //从父视图上移除
        [_backBtn removeFromSuperview];
        //释放内存
        [_backBtn release];
        _backBtn=[backBtn retain];
        //设置框架
        _backBtn.frame = CGRectMake(7*SIZE_WIDTH, 7*SIZE_HEIGHT, 48*SIZE_WIDTH, 30*SIZE_HEIGHT);
        [self addSubview:_backBtn];
    }
}

//title的设置器
-(void)setTitle:(NSString *)title
{
    self.titleLabel.text = title;
    //设置字体类型和大小
    self.titleLabel.font = [UIFont fontWithName:@"Helvetica-Bold" size:19*SIZE_HEIGHT];
}

/*
// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
- (void)drawRect:(CGRect)rect
{
    // Drawing code
}
*/

@end
