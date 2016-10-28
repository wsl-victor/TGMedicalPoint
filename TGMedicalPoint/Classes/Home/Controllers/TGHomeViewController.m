//
//  TGHomeViewController.m
//  TGMedicalPoint
//
//  Created by victor on 2016/10/28.
//  Copyright © 2016年 wsl. All rights reserved.
//

#import "TGHomeViewController.h"
#import "UIViewController+SlideMenuControllerOC.h"
@interface TGHomeViewController ()

@end

@implementation TGHomeViewController

- (void)viewDidLoad {
    [super viewDidLoad];
     self.view.backgroundColor=[UIColor whiteColor];

    // Do any additional setup after loading the view from its nib.
}

-(void)viewWillAppear:(BOOL)animated
{
    [super viewWillAppear:animated];
     [self setNavigationBarItem];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
