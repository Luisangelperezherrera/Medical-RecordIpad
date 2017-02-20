//
//  HistoriaClinicaViewController.m
//  Medical Record
//
//  Created by vampiro on 19/2/17.
//  Copyright © 2017 meltsan. All rights reserved.
//

#import "HistoriaClinicaViewController.h"

@interface HistoriaClinicaViewController ()

@end

@implementation HistoriaClinicaViewController
UIView *histClinica, *bodyHistClinica;
UILabel *tittleHistClinica,  *histFecha, *diagnosticoHist, *estudiosHist, *tratamientoHist;
int coordXBodyHist, coordYBodyHist, sizeLabelHist, incrementYHist;
- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    histClinica = [[UIView alloc] initWithFrame:CGRectMake((self.view.frame.size.width/2)-80, 80, 190, 150)];
    UIColor *logoLogin = [[UIColor alloc] initWithPatternImage:[UIImage imageNamed:@"generales"]];
    histClinica.backgroundColor= logoLogin;
    [self.view addSubview:histClinica];
    
    tittleHistClinica =[[UILabel alloc] initWithFrame:CGRectMake((self.view.frame.size.width/2)-75, 240, 440, 20)];
    tittleHistClinica.text = @"Historia Clínica";
    tittleHistClinica.textColor = [UIColor grayColor];
    [tittleHistClinica setFont:[UIFont fontWithName:@"Georgia-Italic" size:25]];
    [self.view addSubview:tittleHistClinica];
    
    bodyHistClinica = [[UIView alloc] initWithFrame:CGRectMake(0, 300, self.view.frame.size.width, self.view.frame.size.height-400)];
    bodyHistClinica.backgroundColor = [[UIColor alloc] initWithPatternImage:[UIImage imageNamed:@"background"]];
    [self.view addSubview:bodyHistClinica];
    
    coordXBodyHist = (self.view.frame.size.width-100)/4;
    coordYBodyHist = 350;
    sizeLabelHist=(self.view.frame.size.width-100);
    
    
    histFecha =[[UILabel alloc] initWithFrame:CGRectMake(50, coordYBodyHist, sizeLabelHist, 50)];
    histFecha.text = @"Fecha: 12/21/2016";
    histFecha.textColor = [UIColor grayColor];
    [histFecha setFont:[UIFont fontWithName:@"Avenir-Medium" size:25]];
    [self.view addSubview:histFecha];

    
    incrementYHist = 70;
    coordYBodyHist+=incrementYHist;
    
    diagnosticoHist =[[UILabel alloc] initWithFrame:CGRectMake(50, coordYBodyHist, sizeLabelHist, 50)];
    diagnosticoHist.text = @"Diagnostico: tos, secreción de moco por la nariz, dolor de cabeza, dolor de garganta, dificultad respiratoria, dolores musculares, malestar general";
    diagnosticoHist.textColor = [UIColor grayColor];
    [diagnosticoHist setFont:[UIFont fontWithName:@"Avenir-Medium" size:25]];
    [self.view addSubview:diagnosticoHist];
    
    
    coordYBodyHist+=incrementYHist;
    
    tratamientoHist =[[UILabel alloc] initWithFrame:CGRectMake(50, coordYBodyHist, sizeLabelHist, 50)];
    tratamientoHist.text = @"Tratamiento: Antigripales, no fumar, tomar líquidos en abundancia y seguir una alimentación adecuada, rica en verduras y frutas, que tienen mucha vitamina C, como el tomate, la naranja, las fresas,";
    tratamientoHist.textColor = [UIColor grayColor];
    [tratamientoHist setFont:[UIFont fontWithName:@"Avenir-Medium" size:25]];
    [self.view addSubview:tratamientoHist];
    
    coordYBodyHist+=incrementYHist;
    
    estudiosHist =[[UILabel alloc] initWithFrame:CGRectMake(50, coordYBodyHist, sizeLabelHist, 50)];
    estudiosHist.text = @"Estudios: Ninguno";
    estudiosHist.textColor = [UIColor grayColor];
    [estudiosHist setFont:[UIFont fontWithName:@"Avenir-Medium" size:25]];
    [self.view addSubview:estudiosHist];
    
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
