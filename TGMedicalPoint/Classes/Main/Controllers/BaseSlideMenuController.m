//
//  BaseSlideMenuController.m
//  TGMedicalPoint
//
//  Created by victor on 2016/10/28.
//  Copyright © 2016年 wsl. All rights reserved.
//

#import "BaseSlideMenuController.h"
#import "UIApplication+SlideMenuControllerOC.h"

#import "TGCheckViewController.h"
#import "TGSymptomViewController.h"
#import "TGMeViewController.h"
#import "TGHomeViewController.h"
@interface BaseSlideMenuController ()

@end

@implementation BaseSlideMenuController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.option.hideStatusBar=NO;
    self.option.leftViewWidth = 220;
    self.option.leftBezelWidth = 16.0;
    // Do any additional setup after loading the view.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

-(BOOL)isTagetViewController {
    UIViewController *vc = [UIApplication topViewController];
    if ([vc isKindOfClass:[TGHomeViewController class]]
        || [vc isKindOfClass:[TGSymptomViewController class]]
        || [vc isKindOfClass:[TGHomeViewController class]]
        ) {
        return YES;
    }
    return NO;
}

-(void)track:(TrackAction)action {
    switch (action) {
        case TrackActionLeftTapOpen:
            //self.option.hideStatusBar=YES;
            NSLog(@"TrackAction: left tap open.");
            break;
        case TrackActionLeftTapClose:
            //self.option.hideStatusBar=YES;
            NSLog(@"TrackAction: left tap close.");
            break;
        case TrackActionLeftFlickOpen:
            // self.option.hideStatusBar=YES;
            NSLog(@"TrackAction: left flick open.");
            break;
        case TrackActionLeftFlickClose:
           // self.option.hideStatusBar=YES;
            NSLog(@"TrackAction: left flick close.");
            break;
        case TrackActionRightTapOpen:
            //self.option.hideStatusBar=YES;
            NSLog(@"TrackAction: right tap open.");
            break;
        case TrackActionRightTapClose:
           // self.option.hideStatusBar=NO;
            NSLog(@"TrackAction: right tap close.");
            break;
        case TrackActionRightFlickOpen:
            //self.option.hideStatusBar=NO;
            NSLog(@"TrackAction: right flick open.");
            break;
        case TrackActionRightFlickClose:
            //self.option.hideStatusBar=NO;
            NSLog(@"TrackAction: right flick close.");
            break;
        default:
            break;
    }
}


@end
