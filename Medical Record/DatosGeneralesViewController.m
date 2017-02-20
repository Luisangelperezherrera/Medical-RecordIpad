//
//  DatosGeneralesViewController.m
//  Medical Record
//
//  Created by vampiro on 19/2/17.
//  Copyright © 2017 meltsan. All rights reserved.
//

#import "DatosGeneralesViewController.h"

@interface DatosGeneralesViewController ()

@end

@implementation DatosGeneralesViewController

UIView *headerGrales, *bodyGrales;
UILabel * textNombreGrales, *gralesCurp,*patologicosGrales,*rfcGrales, *noPatologicoGrales, *gpoSanguineoGrales, *cirugiasGrales, *sexoGrales, *alergiasGrales;
int coordXBodyGrales, coordYBodyGrales, sizeLabel, incrementY;

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    headerGrales = [[UIView alloc] initWithFrame:CGRectMake((self.view.frame.size.width/2)-80, 80, 190, 150)];
    
    UIColor *logoLogin = [[UIColor alloc] initWithPatternImage:[UIImage imageNamed:@"generales"]];
    headerGrales.backgroundColor= logoLogin;
    [self.view addSubview:headerGrales];
    
    textNombreGrales =[[UILabel alloc] initWithFrame:CGRectMake((self.view.frame.size.width/2)-180, 240, 440, 20)];
    textNombreGrales.text = @"PAULINO MOTA HERNANDEZ";
    textNombreGrales.textColor = [UIColor grayColor];
    [textNombreGrales setFont:[UIFont fontWithName:@"Georgia-Italic" size:25]];
    [self.view addSubview:textNombreGrales];
    
    bodyGrales = [[UIView alloc] initWithFrame:CGRectMake(0, 300, self.view.frame.size.width, self.view.frame.size.height-400)];
    bodyGrales.backgroundColor = [[UIColor alloc] initWithPatternImage:[UIImage imageNamed:@"background"]];
    [self.view addSubview:bodyGrales];
    
    coordXBodyGrales = (self.view.frame.size.width-100)/4;
    coordYBodyGrales = 350;
    sizeLabel=(self.view.frame.size.width-100)/2;
    
    
    gralesCurp =[[UILabel alloc] initWithFrame:CGRectMake(50, coordYBodyGrales, sizeLabel, 50)];
    gralesCurp.text = @"CURP:MOHP1051231231231232";
    gralesCurp.textColor = [UIColor grayColor];
    [gralesCurp setFont:[UIFont fontWithName:@"Avenir-Medium" size:25]];
    [self.view addSubview:gralesCurp];
    
    patologicosGrales =[[UILabel alloc] initWithFrame:CGRectMake(sizeLabel+50, coordYBodyGrales, sizeLabel, 50)];
    patologicosGrales.text = @"Antecedentes Patológicos: Ninguno";
    patologicosGrales.textColor = [UIColor grayColor];
    [patologicosGrales setFont:[UIFont fontWithName:@"Avenir-Medium" size:25]];
    [self.view addSubview:patologicosGrales];
    
    incrementY = 70;
    coordYBodyGrales+=incrementY;
    
    rfcGrales =[[UILabel alloc] initWithFrame:CGRectMake(50, coordYBodyGrales, sizeLabel, 50)];
    rfcGrales.text = @"RFC:RFC123123123";
    rfcGrales.textColor = [UIColor grayColor];
    [rfcGrales setFont:[UIFont fontWithName:@"Avenir-Medium" size:25]];
    [self.view addSubview:rfcGrales];
    
    noPatologicoGrales =[[UILabel alloc] initWithFrame:CGRectMake(sizeLabel+50, coordYBodyGrales, sizeLabel, 50)];
    noPatologicoGrales.text = @"Antecedentes No Patológicos: Ninguno";
    noPatologicoGrales.textColor = [UIColor grayColor];
    [noPatologicoGrales setFont:[UIFont fontWithName:@"Avenir-Medium" size:25]];
    [self.view addSubview:noPatologicoGrales];
    
    coordYBodyGrales+=incrementY;
    
    gpoSanguineoGrales =[[UILabel alloc] initWithFrame:CGRectMake(50, coordYBodyGrales, sizeLabel, 50)];
    gpoSanguineoGrales.text = @"Grupo Sanguineo:O positovo";
    gpoSanguineoGrales.textColor = [UIColor grayColor];
    [gpoSanguineoGrales setFont:[UIFont fontWithName:@"Avenir-Medium" size:25]];
    [self.view addSubview:gpoSanguineoGrales];
    
    cirugiasGrales =[[UILabel alloc] initWithFrame:CGRectMake(sizeLabel+50, coordYBodyGrales, sizeLabel, 50)];
    cirugiasGrales.text = @"Cirugías: Ninguna";
    cirugiasGrales.textColor = [UIColor grayColor];
    [cirugiasGrales setFont:[UIFont fontWithName:@"Avenir-Medium" size:25]];
    [self.view addSubview:cirugiasGrales];
    
    coordYBodyGrales+=incrementY;
    
    sexoGrales =[[UILabel alloc] initWithFrame:CGRectMake(50, coordYBodyGrales, sizeLabel, 50)];
    sexoGrales.text = @"Sexo:Masculino";
    sexoGrales.textColor = [UIColor grayColor];
    [sexoGrales setFont:[UIFont fontWithName:@"Avenir-Medium" size:25]];
    [self.view addSubview:sexoGrales];
    
    alergiasGrales =[[UILabel alloc] initWithFrame:CGRectMake(sizeLabel+50, coordYBodyGrales, sizeLabel, 50)];
    alergiasGrales.text = @"Alergias: Ninguna";
    alergiasGrales.textColor = [UIColor grayColor];
    [alergiasGrales setFont:[UIFont fontWithName:@"Avenir-Medium" size:25]];
    [self.view addSubview:alergiasGrales];
    
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
