//
//  Comment.h
//  Weifengnews
//
//  Created by ibokan on 13-7-17.
//  Copyright (c) 2013年 ibokan. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Comment : NSObject

@property (copy,nonatomic)NSString * user_name;//评论用户名

@property (copy,nonatomic)NSString * comment_content;//评论内容

@property (copy,nonatomic)NSString * comment_time;//评论时间

@property (copy,nonatomic)NSString * good;// 好评

@property (copy,nonatomic)NSString * bad;// 差评

@property (copy,nonatomic)NSString * source;// 评论来自哪里



@end
