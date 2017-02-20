//
//  AntecedentesTabViewController.m
//  Medical Record
//
//  Created by vampiro on 20/2/17.
//  Copyright © 2017 meltsan. All rights reserved.
//

#import "AntecedentesTabViewController.h"
#import "SWRevealViewController.h"

@interface AntecedentesTabViewController ()

@end

@implementation AntecedentesTabViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    [self customSetup2];
    // Do any additional setup after loading the view.
    UIStoryboard*  sb = [UIStoryboard storyboardWithName:@"Main" bundle:nil];
    self.tabFont = [UIFont fontWithName:@"Avenir" size:15];
    self.barHeight = 50.0f;
    self.tabBarPosition = MCSlidingTabsPositionBottom;
    self.isAnimatedViews = YES;
    [self addTab:@"Personales y Familiares" forViewController:[sb instantiateViewControllerWithIdentifier:@"personales"]];
    [self addTab:@"Aparatos y Sistemas - Alergias" forViewController:[sb instantiateViewControllerWithIdentifier:@"aparatos"]];
    [self addTab:@"Vacunas" forViewController:[sb instantiateViewControllerWithIdentifier:@"vacunas"]];
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


- (void)customSetup2
{
    SWRevealViewController *revealViewController = self.revealViewController;
    if ( revealViewController )
    {
        // [self.revealButtonItem setTarget: revealViewController];
        // [self.revealButtonItem setAction: @selector( revealToggle: )];
        // [self.navigationController.navigationBar addGestureRecognizer:revealViewController.panGestureRecognizer];
    }
    
    /*_label.text = _text;
     _label.textColor = _color;*/
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
