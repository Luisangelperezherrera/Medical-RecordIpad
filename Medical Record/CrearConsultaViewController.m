//
//  CrearConsultaViewController.m
//  Medical Record
//
//  Created by vampiro on 19/2/17.
//  Copyright © 2017 meltsan. All rights reserved.
//

#import "CrearConsultaViewController.h"
#import "SWRevealViewController.h"

@interface CrearConsultaViewController ()

@end

@implementation CrearConsultaViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    [self customSetup1];
    
    UIStoryboard*  sb = [UIStoryboard storyboardWithName:@"Main" bundle:nil];
    self.tabFont = [UIFont fontWithName:@"Avenir" size:15];
    self.barHeight = 50.0f;
    self.tabBarPosition = MCSlidingTabsPositionBottom;
    self.isAnimatedViews = YES;
    [self addTab:@"Padecimiento" forViewController:[sb instantiateViewControllerWithIdentifier:@"padecimientos"]];
    [self addTab:@"Exploracion" forViewController:[sb instantiateViewControllerWithIdentifier:@"exploracion"]];
    [self addTab:@"Diagnostico" forViewController:[sb instantiateViewControllerWithIdentifier:@"diagnostico"]];
    [self addTab:@"Tratamiento" forViewController:[sb instantiateViewControllerWithIdentifier:@"tratamiento"]];
    [self addTab:@"Estudios" forViewController:[sb instantiateViewControllerWithIdentifier:@"estudios"]];

}

- (void)customSetup1
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

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}
//creaConsulta
/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
