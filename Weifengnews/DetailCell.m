//
//  DetailCell.m
//  Weifengnews
//
//  Created by ibokan on 13-7-16.
//  Copyright (c) 2013年 ibokan. All rights reserved.
//

#import "DetailCell.h"
#import "DetailViewController.h"

@implementation DetailCell

- (id)initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier
{
    self = [super initWithStyle:style reuseIdentifier:reuseIdentifier];
    if (self) {
        // Initialization code
    }
    return self;
}
// 添加
-(void)addToCell
{
  // 设置头像
    self.uesr_head = [[UIImageView alloc]initWithFrame:CGRectMake(11*SIZE_WIDTH, 8*SIZE_HEIGHT, 42*SIZE_WIDTH, 60*SIZE_HEIGHT)];
    self.uesr_head.image = [UIImage imageNamed:@"head.png"];
    [self addSubview:self.uesr_head];
    
    //设置用户名
  //  float x =
   /* self.user_name = [CreateControl createLableWithFrame:CGRectMake(64*SIZE_WIDTH, 11*SIZE_HEIGHT,  , 12*SIZE_HEIGHT)
                                                andTitle:nil
                                                 andfont:[UIFont systemFontOfSize:12*SIZE_HEIGHT] andTitleColor:[UIColor blackColor]
                                      andBackgroundColor:[UIColor clearColor]
                                        andTextAlignment:NSTextAlignmentLeft];
    
    [self addSubview:self.user_name];*/
    
    
    // 设置发送来自哪里
   /* self.user_address = [CreateControl createLableWithFrame:CGRectMake(130*SIZE_WIDTH, 11*SIZE_HEIGHT,100*SIZE_WIDTH , 12*SIZE_HEIGHT) andTitle:nil andfont:[UIFont systemFontOfSize:12*SIZE_HEIGHT] andTitleColor:[UIColor colorWithRed:189/255.0 green:189/255.0 blue:189/255.0 alpha:1] andBackgroundColor:[UIColor clearColor] andTextAlignment:<#(NSTextAlignment)#>]*/
    
   
}



- (void)setSelected:(BOOL)selected animated:(BOOL)animated
{
    [super setSelected:selected animated:animated];

    // Configure the view for the selected state
}

@end
