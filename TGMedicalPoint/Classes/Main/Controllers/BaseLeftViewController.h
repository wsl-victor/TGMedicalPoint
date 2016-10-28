//
//  BaseLeftViewController.h
//  TGMedicalPoint
//
//  Created by victor on 2016/10/28.
//  Copyright © 2016年 wsl. All rights reserved.
//

#import <UIKit/UIKit.h>

typedef enum : NSInteger{
    LeftMenuHome = 0,
    LeftMenuCheck,
    LeftMenuSymptom,
    LeftMenuOne,
    LeftMenuTwo,
    LeftMenuThree,
    LeftMenuFour,
    LeftMenuFive
} LeftMenu;


@interface BaseLeftViewController : UIViewController

@property (retain, nonatomic) UIViewController *homeVc;

@property (retain, nonatomic) UIViewController *checkVc;

@property (retain, nonatomic) UIViewController *symptomVc;

@property (retain, nonatomic) UIViewController *oneVc;

@property (retain, nonatomic) UIViewController *twoVc;

@property (retain, nonatomic) UIViewController *threeVc;

@property (retain, nonatomic) UIViewController *fourVc;

@property (retain, nonatomic) UIViewController *fiveVc;



@end
