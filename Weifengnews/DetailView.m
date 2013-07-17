//
//  DetailView.m
//  Weifengnews
//
//  Created by ibokan on 13-7-17.
//  Copyright (c) 2013年 ibokan. All rights reserved.
//

#import "DetailView.h"
#import "CustomNavigationBar.h"
#import "CreateControl.h"
#import "DetailCell.h"
#import "Comment.h"
@implementation DetailView

- (id)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    if (self) {
        // Initialization code
        // 设置详细的视图背景
        UIImageView * news_background = [[[UIImageView alloc]initWithFrame:self.frame]autorelease];
        news_background.image = [UIImage imageNamed:@"cell_bg_press.png"];
        [self addSubview:news_background];
        // 设置为可交互
        news_background.userInteractionEnabled = YES;
        // 创建导航栏
        CustomNavigationBar * titleBar = [[[CustomNavigationBar alloc]init]autorelease];
        titleBar.title = @"威锋新闻";
        [news_background addSubview:titleBar];
        
        //创建返回按键
        UIButton * btnBack = [CreateControl createButtonWithFrame:CGRectZero
                                                         andTitle:nil
                                                    andTitleColor:nil
                                               andBackgroundImage:[UIImage imageNamed:@"nav_back.png"]
                                                        andTarget:self
                                                        andAction:@selector(btnBackAction:)
                                                          andType:UIButtonTypeCustom];
        [btnBack setImage:[UIImage imageNamed:@"nav_back_pressed.png"] forState:UIControlStateSelected];
        titleBar.backBtn = btnBack;
        
        //创建上一条新闻按键
        UIButton * btnLeft = [CreateControl createButtonWithFrame:CGRectZero
                                                         andTitle:nil
                                                    andTitleColor:nil
                                               andBackgroundImage:[UIImage imageNamed:@"nav_left.png"]
                                                        andTarget:self
                                                        andAction:@selector(btnLeftAction:)
                                                          andType:UIButtonTypeCustom];
              titleBar.leftBtn = btnLeft;
        
        
        //创建下一条新闻按键
        UIButton * btnRight = [CreateControl createButtonWithFrame:CGRectZero
                                                          andTitle:nil
                                                     andTitleColor:nil
                                                andBackgroundImage:[UIImage imageNamed:@"nav_right.png"]
                                                         andTarget:self
                                                         andAction:@selector(btnRightAction:)
                                                           andType:UIButtonTypeCustom];
        titleBar.rightBtn = btnRight;
        //加载控件
        [self loadControl];
        //加载评论面
        [self loadComment];
    }
    return self;
}
-(void)loadControl// 加载控件
{
  //创建滑动视图
    self.scrollView = [[[UIScrollView alloc]initWithFrame:CGRectMake(0, 44*SIZE_HEIGHT, 320*SIZE_WIDTH, (460-44)*SIZE_HEIGHT)]autorelease];
    //设置不为整页滑动
    self.scrollView.pagingEnabled = NO;
    // 设置滑动提示不可见
    self.scrollView.showsHorizontalScrollIndicator = NO;
    [self addSubview:self.scrollView];
    // 内容视图
    self.detailView = [[[UIView alloc]initWithFrame:CGRectMake(5, 5, 310, 300)]autorelease];
    self.detailView.backgroundColor = [UIColor whiteColor];
    // 设置圆角
    self.detailView.layer.cornerRadius = 10;
    //创建标题栏
    self.lal_title = [CreateControl createLableWithFrame:CGRectMake(11*SIZE_WIDTH, 10*SIZE_HEIGHT, (320-22)*SIZE_WIDTH, 17*SIZE_HEIGHT)
                                               andTitle:nil
                                                andfont:[UIFont boldSystemFontOfSize:17*SIZE_HEIGHT]
                                          andTitleColor:[UIColor colorWithRed:66/255.0 green:66/255.0 blue:66/255.0 alpha:1]
                                     andBackgroundColor:[UIColor clearColor]
                                       andTextAlignment:NSTextAlignmentCenter];
    //自动换行设置
    self.lal_title.lineBreakMode = UILineBreakModeCharacterWrap;
    self.lal_title.numberOfLines = 0;
    [self.detailView addSubview:self.lal_title];
    
    // 创建来源
    self.lab_source = [CreateControl createLableWithFrame:CGRectMake(11*SIZE_WIDTH, 44*SIZE_HEIGHT+22, (320-22)*SIZE_WIDTH, 12*SIZE_HEIGHT)
                                                andTitle:nil
                                                 andfont:[UIFont boldSystemFontOfSize:12*SIZE_HEIGHT]
                                           andTitleColor:[UIColor colorWithRed:171/255.0 green:171/255.0 blue:171/255.0 alpha:1]
                                      andBackgroundColor:[UIColor clearColor]
                                        andTextAlignment:NSTextAlignmentCenter];
    [self.detailView addSubview:self.lab_source];
    // 将内容视图添加到滚动视图上面
    [self.scrollView addSubview:self.detailView];
    
//    UILabel * lab = [[UILabel alloc]initWithFrame:CGRectMake(11*SIZE_WIDTH, (27+17+_webViewHeight1+_webViewHeight2+320)*SIZE_SCALE_HEIGHT, (320-22-20)*SIZE_SCALE_WIDTH, 17*SIZE_SCALE_HEIGHT)];
//    lab.font=[UIFont systemFontOfSize:15];
//    lab.text=@"更多精彩资讯，请访问";
//    self.lblMore1 = lab;
//    [self.detailView addSubview:lab];
//    [lab release];
}
// 加载评论
-(void)loadComment
{
    //评论视图
    self.commentView = [[[UIView alloc]initWithFrame:CGRectMake(5, self.detailView.frame.origin.y+self.detailView.frame.size.height+5, 310*SIZE_WIDTH, 0)]autorelease];
    self.commentView.backgroundColor = [UIColor whiteColor];
    self.commentView.layer.cornerRadius = 10;
    [self.scrollView addSubview:self.commentView];
    
    // 玩家点评
    self.comment_title = [CreateControl createLableWithFrame:CGRectMake(11*SIZE_WIDTH, 14*SIZE_HEIGHT, 100*SIZE_WIDTH, 14*SIZE_HEIGHT)
                                                    andTitle:nil
                                                     andfont:[UIFont systemFontOfSize:14*SIZE_HEIGHT]
                                               andTitleColor:[UIColor colorWithRed:66/255.0 green:66/255.0 blue:66/255.0 alpha:1]
                                          andBackgroundColor:[UIColor clearColor]
                                            andTextAlignment:NSTextAlignmentLeft];
    [self.commentView addSubview:self.comment_title];
    
  
    //添加评论列表
    //用tableView 显示
    self.commentTable = [[UITableView alloc] initWithFrame:CGRectZero style:UITableViewStylePlain];
    self.commentTable.delegate = self;
    self.commentTable.dataSource = self;
    self.commentTable.allowsSelection = NO;
    [self.commentView addSubview:self.commentTable];
    
}
#pragma mark tableViewDele
//设置行数
-(NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    return self.arrayComment.count;
}
// 设置行高
-(CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath
{
    DetailCell * cell = [[[DetailCell alloc]init]autorelease];
    float height = cell.goodOrBad.frame.origin.y+cell.goodOrBad.frame.size.height+11;
    return height;
}
//设置单元格
-(UITableViewCell * )tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    DetailCell * cell = [tableView dequeueReusableCellWithIdentifier:@"cell"];
    if (cell==nil) {
        cell = [[[DetailCell alloc]initWithStyle:UITableViewCellStyleDefault reuseIdentifier:@"cell"]autorelease];
    }
    Comment * coment = [self.arrayComment objectAtIndex:indexPath.row];
    cell.user_name.text = coment.user_name;
    cell.user_address.text = coment.source;
    cell.user_commentTime.text = coment.comment_time;
    
    
    return cell;
}
#pragma mark end

// 返回按钮的方法
-(void)btnBackAction:(UIButton * )button
{
  
}
// 下一条新闻的方法
-(void)btnRightAction:(UIButton * )button
{
 
}
// 上一条新闻的方法
-(void)btnLeftAction:(UIButton  * )button
{

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
