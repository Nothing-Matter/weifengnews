//
//  DetailCell.h
//  Weifengnews
//  评论界面
//  Created by ibokan on 13-7-16.
//  Copyright (c) 2013年 ibokan. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "CreateControl.h"
@interface DetailCell : UITableViewCell
//{
//    UILabel *user_name;
//    UILabel *user_address;
//    UILabel *user_commentTime;
//    UILabel *user_commentContent;
//    UIImageView *uesr_head;
//    UILabel *commentActive; 
//    UILabel *more_comment;
//    UIButton *more_btnComment;
//    UILabel *more_commentNumber;
//    UILabel *goodOrBad;
//}
@property (retain,nonatomic)UILabel *user_name;//用户名

@property (retain,nonatomic)UILabel *user_address;//用户来自哪个网站

@property (retain,nonatomic)UILabel *user_commentTime;//用户评论时间

@property (retain,nonatomic)UILabel *user_commentContent;//用户评论内容

@property (retain,nonatomic)UIImageView *uesr_head;// 用户头像

@property (retain,nonatomic)UILabel *commentActive; // 显示热门

@property (retain,nonatomic)UILabel *goodOrBad;//显示顶踩的数量

@property (retain,nonatomic)UIImageView * goodOrBadBlackgound; // 顶踩背景图片
@end
