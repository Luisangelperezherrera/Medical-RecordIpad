//
//  AgendarViewController.m
//  Medical Record
//
//  Created by vampiro on 20/2/17.
//  Copyright © 2017 meltsan. All rights reserved.
//

#import "AgendarViewController.h"

@interface AgendarViewController ()

@end

@implementation AgendarViewController
UILabel *txtAgenda;

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    txtAgenda =[[UILabel alloc] initWithFrame:CGRectMake(50, 100, 300, 20)];
    txtAgenda.text = @"Agenda del día";
    txtAgenda.textColor = [UIColor colorWithRed:29.0/255.0 green:132.0/255.0 blue:198.0/255.0 alpha:1.0];
    [txtAgenda setFont:[UIFont fontWithName:@"Avenir-Medium" size:22]];
    [self.view addSubview:txtAgenda];
    
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
