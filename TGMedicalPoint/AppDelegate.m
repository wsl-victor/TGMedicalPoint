//
//  AppDelegate.m
//  TGMedicalPoint
//
//  Created by victor on 2016/10/28.
//  Copyright © 2016年 wsl. All rights reserved.
//

#import "AppDelegate.h"
#import "BaseSlideMenuController.h"
#import "BaseNavigationViewController.h"
#import "BaseLeftViewController.h"
#import "TGHomeViewController.h"
#import "TGMeViewController.h"

@interface AppDelegate ()

@property (nonatomic,weak) BaseLeftViewController *baseLeftVc;

@property (nonatomic,weak) TGHomeViewController *homeVc;



@end

@implementation AppDelegate


-(void)createMenuView
{
    BaseLeftViewController *baseLeftVc=[[BaseLeftViewController alloc] init];
    TGHomeViewController *homeVc=[[TGHomeViewController alloc] init];
    self.homeVc=homeVc;
 
    BaseNavigationViewController *baseNavVc=[[BaseNavigationViewController alloc] initWithRootViewController:homeVc];
    
    baseLeftVc.homeVc = baseNavVc;

    
    BaseSlideMenuController *slidemenuVC=[[BaseSlideMenuController alloc] initWithMainViewController:baseNavVc leftMenuViewController:baseLeftVc];
    slidemenuVC.automaticallyAdjustsScrollViewInsets = YES;
    slidemenuVC.delegate = homeVc;
    self.window=[[UIWindow alloc] initWithFrame:[UIScreen mainScreen].bounds];
    self.window.backgroundColor = [UIColor colorWithRed:236.0 green:238.0 blue:241.0 alpha:1.0];
   

    self.window.rootViewController = slidemenuVC;
    [self.window makeKeyAndVisible];

}

- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
    [self createMenuView];
    return YES;
}


- (void)applicationWillResignActive:(UIApplication *)application {
    // Sent when the application is about to move from active to inactive state. This can occur for certain types of temporary interruptions (such as an incoming phone call or SMS message) or when the user quits the application and it begins the transition to the background state.
    // Use this method to pause ongoing tasks, disable timers, and invalidate graphics rendering callbacks. Games should use this method to pause the game.
}


- (void)applicationDidEnterBackground:(UIApplication *)application {
    // Use this method to release shared resources, save user data, invalidate timers, and store enough application state information to restore your application to its current state in case it is terminated later.
    // If your application supports background execution, this method is called instead of applicationWillTerminate: when the user quits.
}


- (void)applicationWillEnterForeground:(UIApplication *)application {
    // Called as part of the transition from the background to the active state; here you can undo many of the changes made on entering the background.
}


- (void)applicationDidBecomeActive:(UIApplication *)application {
    // Restart any tasks that were paused (or not yet started) while the application was inactive. If the application was previously in the background, optionally refresh the user interface.
}


- (void)applicationWillTerminate:(UIApplication *)application {
    // Called when the application is about to terminate. Save data if appropriate. See also applicationDidEnterBackground:.
}


@end
