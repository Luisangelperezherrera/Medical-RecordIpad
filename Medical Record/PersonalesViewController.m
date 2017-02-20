//
//  PersonalesViewController.m
//  Medical Record
//
//  Created by vampiro on 20/2/17.
//  Copyright © 2017 meltsan. All rights reserved.
//

#import "PersonalesViewController.h"
#import "RPFloatingPlaceholderTextField.h"

@interface PersonalesViewController ()

@end

@implementation PersonalesViewController
UILabel *txtNombrePersonales, *datosPersonales, *txtHereditFam, *txtPerNoPat;
UIView *plecaPersonales;
UIButton *btnConsultasPadP, *btnAntecedentesP;
RPFloatingPlaceholderTextField *flHereditarias, *flPerNoPat;


- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    txtNombrePersonales =[[UILabel alloc] initWithFrame:CGRectMake(50, 100, 300, 20)];
    txtNombrePersonales.text = @"Paulino Mota Hernández/";
    txtNombrePersonales.textColor = [UIColor colorWithRed:29.0/255.0 green:132.0/255.0 blue:198.0/255.0 alpha:1.0];
    [txtNombrePersonales setFont:[UIFont fontWithName:@"Georgia-Italic" size:22]];
    [self.view addSubview:txtNombrePersonales];
    
    datosPersonales =[[UILabel alloc] initWithFrame:CGRectMake(310, 100, 400, 20)];
    datosPersonales.text = @"Edad: 31 años / O+";
    datosPersonales.textColor = [UIColor colorWithRed:36.0/255.0 green:198.0/255.0 blue:200.0/255.0 alpha:1.0];
    [datosPersonales setFont:[UIFont fontWithName:@"Georgia-Italic" size:22]];
    [self.view addSubview:datosPersonales];
    
    
    plecaPersonales = [[UIView alloc] initWithFrame:CGRectMake(50,140, self.view.frame.size.width, 2)];
    UIColor *divHeader = [[UIColor alloc] initWithPatternImage:[UIImage imageNamed:@"pleca_divisiones"]];
    plecaPersonales.backgroundColor = divHeader;
    [self.view addSubview:plecaPersonales];
    
    
    btnAntecedentesP = [UIButton buttonWithType:UIButtonTypeCustom];
    btnAntecedentesP.frame = CGRectMake(50, 160, 150, 40);
    [btnAntecedentesP setBackgroundColor:[UIColor colorWithRed:36.0/255.0 green:198.0/255.0 blue:200.0/255.0 alpha:1.0]];
    [btnAntecedentesP setTitle:@"Antecedentes" forState:UIControlStateNormal];
    [btnAntecedentesP addTarget:self action:@selector(showDatosAntecedentes:) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:btnAntecedentesP];
    
    btnConsultasPadP = [UIButton buttonWithType:UIButtonTypeCustom];
    btnConsultasPadP.frame = CGRectMake(200, 160, 150, 40);
    [btnConsultasPadP setBackgroundColor:[UIColor colorWithRed:80.0/255.0 green:143.0/255.0 blue:247.0/255.0 alpha:1.0]];
    [btnConsultasPadP setTitle:@"Consultas" forState:UIControlStateNormal];
    [btnConsultasPadP addTarget:self action:@selector(showConsulta:) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:btnConsultasPadP];
    
    
    txtHereditFam =[[UILabel alloc] initWithFrame:CGRectMake(50, 220, 400, 22)];
    txtHereditFam.text = @"Hereditarias y Familiares";
    txtHereditFam.textColor = [UIColor colorWithRed:36.0/255.0 green:198.0/255.0 blue:200.0/255.0 alpha:1.0];
    [txtHereditFam setFont:[UIFont fontWithName:@"Avenir-Medium" size:20]];
    [self.view addSubview:txtHereditFam];
    
    
    flHereditarias = [[RPFloatingPlaceholderTextField alloc] initWithFrame:CGRectMake(50,250, (self.view.frame.size.width-100), 100)];
    flHereditarias.floatingLabelActiveTextColor = [UIColor blueColor];
    flHereditarias.floatingLabelInactiveTextColor = [UIColor grayColor];
    flHereditarias.font = [UIFont fontWithName:@"Avenir-Medium" size:16];
    flHereditarias.layer.cornerRadius=3;
    flHereditarias.layer.borderColor=[[UIColor grayColor]CGColor];
    flHereditarias.layer.borderWidth= 1.0f;
    [flHereditarias setBorderStyle:UITextBorderStyleNone];
    [self.view addSubview:flHereditarias];

    
    txtPerNoPat =[[UILabel alloc] initWithFrame:CGRectMake(50, 380, 400, 22)];
    txtPerNoPat.text = @"Personales NO Patológicos";
    txtPerNoPat.textColor = [UIColor colorWithRed:36.0/255.0 green:198.0/255.0 blue:200.0/255.0 alpha:1.0];
    [txtPerNoPat setFont:[UIFont fontWithName:@"Avenir-Medium" size:20]];
    [self.view addSubview:txtPerNoPat];
    
    
    flPerNoPat = [[RPFloatingPlaceholderTextField alloc] initWithFrame:CGRectMake(50,410, (self.view.frame.size.width-100), 100)];
    flPerNoPat.floatingLabelActiveTextColor = [UIColor blueColor];
    flPerNoPat.floatingLabelInactiveTextColor = [UIColor grayColor];
    flPerNoPat.font = [UIFont fontWithName:@"Avenir-Medium" size:16];
    flPerNoPat.layer.cornerRadius=3;
    flPerNoPat.layer.borderColor=[[UIColor grayColor]CGColor];
    flPerNoPat.layer.borderWidth= 1.0f;
    [flPerNoPat setBorderStyle:UITextBorderStyleNone];
    [self.view addSubview:flPerNoPat];
    
    
    
    txtPerNoPat =[[UILabel alloc] initWithFrame:CGRectMake(50, 540, 400, 22)];
    txtPerNoPat.text = @"Personales Patológicos";
    txtPerNoPat.textColor = [UIColor colorWithRed:36.0/255.0 green:198.0/255.0 blue:200.0/255.0 alpha:1.0];
    [txtPerNoPat setFont:[UIFont fontWithName:@"Avenir-Medium" size:20]];
    [self.view addSubview:txtPerNoPat];
    
    
    flPerNoPat = [[RPFloatingPlaceholderTextField alloc] initWithFrame:CGRectMake(50,560, (self.view.frame.size.width-100), 100)];
    flPerNoPat.floatingLabelActiveTextColor = [UIColor blueColor];
    flPerNoPat.floatingLabelInactiveTextColor = [UIColor grayColor];
    flPerNoPat.font = [UIFont fontWithName:@"Avenir-Medium" size:16];
    flPerNoPat.layer.cornerRadius=3;
    flPerNoPat.layer.borderColor=[[UIColor grayColor]CGColor];
    flPerNoPat.layer.borderWidth= 1.0f;
    [flPerNoPat setBorderStyle:UITextBorderStyleNone];
    [self.view addSubview:flPerNoPat];
    
}

//persoCrearConsulta

-(IBAction)showConsulta:(id)sender{
    [self performSegueWithIdentifier:@"persoCrearConsulta" sender:nil];
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
