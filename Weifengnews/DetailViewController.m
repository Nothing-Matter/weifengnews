//
//  DetailViewController.m
//  Weifengnews
//
//  Created by ibokan on 13-7-17.
//  Copyright (c) 2013年 ibokan. All rights reserved.
//

#import "DetailViewController.h"
#import "DetailView.h"
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
-(void)loadView
{
    DetailView * dv = [[DetailView alloc]initWithFrame: [UIScreen mainScreen].bounds];
    self.view = dv;
    //[dv ]
    //dv.backgroundColor = [UIColor redColor];
}
- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
