//
//  DetailCell.m
//  Weifengnews
//
//  Created by ibokan on 13-7-16.
//  Copyright (c) 2013年 ibokan. All rights reserved.
//

#import "DetailCell.h"
//#import "DetailViewController.h"

@implementation DetailCell

- (id)initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier
{
    self = [super initWithStyle:style reuseIdentifier:reuseIdentifier];
    if (self) {
        // Initialization code
        [self addToCell];
    }
    return self;
}
// 添加
-(void)addToCell
{
  // 设置头像
    self.uesr_head = [[[UIImageView alloc]initWithFrame:CGRectMake(11*SIZE_WIDTH, 8*SIZE_HEIGHT, 42*SIZE_WIDTH, 60*SIZE_HEIGHT)]autorelease];
    self.uesr_head.image = [UIImage imageNamed:@"head.png"];
    [self addSubview:self.uesr_head];
    
    //设置用户名
    self.user_name = [CreateControl createLableWithFrame:CGRectMake(64*SIZE_WIDTH, 11*SIZE_HEIGHT,100*SIZE_WIDTH,12*SIZE_HEIGHT)
                                                andTitle:nil
                                                 andfont:[UIFont systemFontOfSize:12*SIZE_HEIGHT]
                                           andTitleColor:[UIColor blackColor]
                                      andBackgroundColor:[UIColor clearColor]
                                        andTextAlignment:NSTextAlignmentLeft];
    
    [self addSubview:self.user_name];
    
    
    //设置发送评论来自哪里
    self.user_address = [CreateControl createLableWithFrame:CGRectMake(130*SIZE_WIDTH, 11*SIZE_HEIGHT,100*SIZE_WIDTH , 12*SIZE_HEIGHT)
                                                   andTitle:nil
                                                    andfont:[UIFont systemFontOfSize:12*SIZE_HEIGHT]
                                              andTitleColor:[UIColor colorWithRed:189/255.0 green:189/255.0 blue:189/255.0 alpha:1]
                                         andBackgroundColor:[UIColor clearColor] andTextAlignment:NSTextAlignmentLeft];
    [self addSubview:self.user_address];
    
    //设置评论时间
    self.user_commentTime = [CreateControl createLableWithFrame:CGRectMake(229*SIZE_WIDTH, 8*SIZE_HEIGHT, 70*SIZE_WIDTH, 12*SIZE_HEIGHT)
                                                       andTitle:nil
                                                        andfont:[UIFont systemFontOfSize:12*SIZE_HEIGHT]
                                                  andTitleColor:[UIColor colorWithRed:189/255.0 green:189/255.0 blue:189/255.0 alpha:1]
                                             andBackgroundColor:[UIColor clearColor] andTextAlignment:NSTextAlignmentRight];
    [self addSubview:self.user_commentTime];
    //设置热门
    self.commentActive = [CreateControl createLableWithFrame:CGRectMake(11*SIZE_WIDTH, 70*SIZE_HEIGHT,42*SIZE_WIDTH , 10*SIZE_HEIGHT)
                                                    andTitle:@"热门"
                                                     andfont:[UIFont systemFontOfSize:10*SIZE_HEIGHT]
                                               andTitleColor:[UIColor whiteColor]
                                          andBackgroundColor:[UIColor orangeColor] andTextAlignment:NSTextAlignmentCenter];
    [self addSubview:self.commentActive];
    
    // 评论内容
    self.user_commentContent = [CreateControl createLableWithFrame:CGRectMake(64*SIZE_WIDTH, 35.5*SIZE_HEIGHT, 245*SIZE_WIDTH, 0*SIZE_HEIGHT)
                                              andTitle:nil
                                               andfont:[UIFont systemFontOfSize:13]
                                         andTitleColor:[UIColor colorWithRed:119/255.0 green:119/255.0 blue:119/255.0 alpha:1]
                                    andBackgroundColor:[UIColor clearColor]
                                      andTextAlignment:NSTextAlignmentLeft];
    self.user_commentContent.lineBreakMode = UILineBreakModeWordWrap;
    self.user_commentContent.numberOfLines = 0;
    [self addSubview:self.user_commentContent];
    
    // 顶踩背景图片
    self.goodOrBadBlackgound = [[UIImageView alloc]init];
    self.goodOrBadBlackgound.image = [UIImage imageNamed:@"cell_bg_press.png"];
    [self addSubview:self.goodOrBadBlackgound];
  // 顶踩的数量
    self.goodOrBad = [CreateControl createLableWithFrame:CGRectMake(11*SIZE_WIDTH, 11*SIZE_HEIGHT, self.goodOrBadBlackgound.frame.size.width-22, 11*SIZE_HEIGHT)
                                                andTitle:nil
                                                 andfont:[UIFont systemFontOfSize:11*SIZE_HEIGHT]
                                           andTitleColor:[UIColor colorWithRed:51/255.0 green:51/255.0 blue:51/255.0 alpha:1]
                                      andBackgroundColor:[UIColor clearColor]
                                        andTextAlignment:NSTextAlignmentLeft];
    [self.goodOrBadBlackgound  addSubview:self.goodOrBad];
    
    
    
   
    
}



- (void)setSelected:(BOOL)selected animated:(BOOL)animated
{
    [super setSelected:selected animated:animated];

    // Configure the view for the selected state
}
-(void)dealloc
{
    [_uesr_head release];
    [_user_address release];
    [_user_commentTime release];
    [_user_commentContent release];
    [_commentActive release];
    [_goodOrBad release];
    [_user_name release];
    [_goodOrBadBlackgound release];
    [super dealloc];
}
@end
