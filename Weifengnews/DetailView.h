//
//  DetailView.h
//  Weifengnews
//
//  Created by ibokan on 13-7-17.
//  Copyright (c) 2013年 ibokan. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <QuartzCore/QuartzCore.h>
@interface DetailView : UIView<UITableViewDelegate,UITableViewDataSource>
@property (retain,nonatomic)UIView * detailView;
@property (retain,nonatomic)UILabel * lal_title;// 标题
@property (retain,nonatomic)UILabel * lab_source;// 来源
@property (retain,nonatomic)UIView * commentView;//评论视图
@property (retain,nonatomic)UIScrollView * scrollView;
@property (retain,nonatomic)UILabel * comment_title;// 评论数量
@property (retain,nonatomic)UITableView * commentTable;//
@property (retain,nonatomic)NSMutableArray * arrayComment;// 评论数

@end
