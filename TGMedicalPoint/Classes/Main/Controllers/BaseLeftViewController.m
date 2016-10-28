//
//  BaseLeftViewController.m
//  TGMedicalPoint
//
//  Created by victor on 2016/10/28.
//  Copyright © 2016年 wsl. All rights reserved.
//

#import "BaseLeftViewController.h"

#import "SlideMenuController.h"


#import "TGHomeViewController.h"
#import "TGCheckViewController.h"
#import "TGSymptomViewController.h"


@interface BaseLeftViewController ()

@property (weak, nonatomic) IBOutlet UITableView *baseLeftTableView;
@end

@implementation BaseLeftViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.view.backgroundColor=[UIColor whiteColor];
    // Do any additional setup after loading the view.
}


-(void)changeViewController:(LeftMenu) menu {
    switch (menu) {
        case LeftMenuHome:
            [self.slideMenuController  changeMainViewController:self.homeVc close:YES];
            break;
        case LeftMenuCheck:
            [self.slideMenuController changeMainViewController:self.checkVc close:YES];
            break;
        case LeftMenuSymptom:
            [self.slideMenuController changeMainViewController:self.symptomVc close:YES];
            break;
        case LeftMenuOne:
            [self.slideMenuController changeMainViewController:self.oneVc close:YES];
            break;
        case LeftMenuTwo:
            [self.slideMenuController changeMainViewController:self.twoVc close:YES];
            break;
        case LeftMenuThree:
            [self.slideMenuController changeMainViewController:self.threeVc close:YES];
            break;
        case LeftMenuFour:
            [self.slideMenuController changeMainViewController:self.fourVc close:YES];
            break;
        case LeftMenuFive:
            [self.slideMenuController changeMainViewController:self.fiveVc close:YES];
            break;
    }
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
