//
//  DetailViewController.m
//  Weifengnews
//
//  Created by ibokan on 13-7-16.
//  Copyright (c) 2013年 ibokan. All rights reserved.
//

#import "DetailViewController.h"
#import "DetailCell.h"
@interface DetailViewController ()

@end

@implementation DetailViewController

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
	
   
   
}
-(float )boolLabelLength:(NSString *)strString
{
    CGSize labsize = [strString sizeWithFont:[UIFont systemFontOfSize:16] constrainedToSize:CGSizeMake(275, 9999) lineBreakMode:UILineBreakModeCharacterWrap];
    return labsize.height;
}
- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
