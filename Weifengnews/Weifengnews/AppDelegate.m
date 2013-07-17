//
//  AppDelegate.m
//  Weifengnews
//
//  Created by ibokan on 13-7-16.
//  Copyright (c) 2013年 ibokan. All rights reserved.
//

#import "AppDelegate.h"
#import "WeifengViewController.h"

#import "ViewController.h"

#import "DetailViewController.h"

@implementation AppDelegate

- (void)dealloc
{
    [_window release];
    [_viewController release];
    [super dealloc];
}

- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions
{
    self.window = [[[UIWindow alloc] initWithFrame:[[UIScreen mainScreen] bounds]] autorelease];
    // Override point for customization after application launch.
<<<<<<< HEAD
    
    //创建主视图控制器
    WeifengViewController * wf = [[WeifengViewController alloc]init];
    //创建系统导航栏控制器
    UINavigationController * nc = [[UINavigationController alloc]initWithRootViewController:wf];
    //隐藏导航栏
    nc.navigationBarHidden = YES;
    //添加为根视图控制器
    self.window.rootViewController = nc;
    
    //释放内存
    [wf release];
    [nc release];
    
    
    
=======
    //self.viewController = [[[ViewController alloc] initWithNibName:@"ViewController" bundle:nil] autorelease];
   // self.window.rootViewController = self.viewController;
    DetailViewController * dvc = [[DetailViewController alloc]init];
    self.window.rootViewController = dvc;
    [dvc release];
>>>>>>> 3facab799573a165433f56912043b33f448cdda0
    [self.window makeKeyAndVisible];
    return YES;
}

- (void)applicationWillResignActive:(UIApplication *)application
{
    // Sent when the application is about to move from active to inactive state. This can occur for certain types of temporary interruptions (such as an incoming phone call or SMS message) or when the user quits the application and it begins the transition to the background state.
    // Use this method to pause ongoing tasks, disable timers, and throttle down OpenGL ES frame rates. Games should use this method to pause the game.
}

- (void)applicationDidEnterBackground:(UIApplication *)application
{
    // Use this method to release shared resources, save user data, invalidate timers, and store enough application state information to restore your application to its current state in case it is terminated later. 
    // If your application supports background execution, this method is called instead of applicationWillTerminate: when the user quits.
}

- (void)applicationWillEnterForeground:(UIApplication *)application
{
    // Called as part of the transition from the background to the inactive state; here you can undo many of the changes made on entering the background.
}

- (void)applicationDidBecomeActive:(UIApplication *)application
{
    // Restart any tasks that were paused (or not yet started) while the application was inactive. If the application was previously in the background, optionally refresh the user interface.
}

- (void)applicationWillTerminate:(UIApplication *)application
{
    // Called when the application is about to terminate. Save data if appropriate. See also applicationDidEnterBackground:.
}

@end
