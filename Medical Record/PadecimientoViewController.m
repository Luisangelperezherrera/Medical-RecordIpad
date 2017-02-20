//
//  PadecimientoViewController.m
//  Medical Record
//
//  Created by vampiro on 19/2/17.
//  Copyright © 2017 meltsan. All rights reserved.
//

#import "PadecimientoViewController.h"
#import "RPFloatingPlaceholderTextField.h"
@interface PadecimientoViewController ()

@end

@implementation PadecimientoViewController
RPFloatingPlaceholderTextField *flSintomas;
UIView *headePadecimiento, *plecaPadecimiento;
UILabel *txtNombrePSintoma, *txtDatosSintomas, *txtSintomosPad;
UIButton *btnAntecedentes,*btnConsultasPad, *btnGuardarSint, *btnCancelarSint;

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.

    txtNombrePSintoma =[[UILabel alloc] initWithFrame:CGRectMake(50, 100, 300, 20)];
    txtNombrePSintoma.text = @"Paulino Mota Hernández/";
    txtNombrePSintoma.textColor = [UIColor colorWithRed:29.0/255.0 green:132.0/255.0 blue:198.0/255.0 alpha:1.0];
    [txtNombrePSintoma setFont:[UIFont fontWithName:@"Georgia-Italic" size:22]];
    [self.view addSubview:txtNombrePSintoma];

    txtDatosSintomas =[[UILabel alloc] initWithFrame:CGRectMake(310, 100, 400, 20)];
    txtDatosSintomas.text = @"Edad: 31 años / O+";
    txtDatosSintomas.textColor = [UIColor colorWithRed:36.0/255.0 green:198.0/255.0 blue:200.0/255.0 alpha:1.0];
    [txtDatosSintomas setFont:[UIFont fontWithName:@"Georgia-Italic" size:22]];
    [self.view addSubview:txtDatosSintomas];
    
    
    plecaPadecimiento = [[UIView alloc] initWithFrame:CGRectMake(50,140, self.view.frame.size.width, 2)];
    UIColor *divHeader = [[UIColor alloc] initWithPatternImage:[UIImage imageNamed:@"pleca_divisiones"]];
    plecaPadecimiento.backgroundColor = divHeader;
    [self.view addSubview:plecaPadecimiento];
    
    btnAntecedentes = [UIButton buttonWithType:UIButtonTypeCustom];
    btnAntecedentes.frame = CGRectMake(50, 160, 150, 40);
    [btnAntecedentes setBackgroundColor:[UIColor colorWithRed:80.0/255.0 green:143.0/255.0 blue:247.0/255.0 alpha:1.0]];
    [btnAntecedentes setTitle:@"Antecedentes" forState:UIControlStateNormal];
    [btnAntecedentes addTarget:self action:@selector(showDatosAntecedentes:) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:btnAntecedentes];
    
    btnConsultasPad = [UIButton buttonWithType:UIButtonTypeCustom];
    btnConsultasPad.frame = CGRectMake(200, 160, 150, 40);
    [btnConsultasPad setBackgroundColor:[UIColor colorWithRed:36.0/255.0 green:198.0/255.0 blue:200.0/255.0 alpha:1.0]];
    [btnConsultasPad setTitle:@"Consultas" forState:UIControlStateNormal];
    [btnConsultasPad addTarget:self action:@selector(registroAction:) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:btnConsultasPad];
    
    txtSintomosPad =[[UILabel alloc] initWithFrame:CGRectMake(50, 220, 400, 22)];
    txtSintomosPad.text = @"Sintomas que refiere el paciente";
    txtSintomosPad.textColor = [UIColor colorWithRed:36.0/255.0 green:198.0/255.0 blue:200.0/255.0 alpha:1.0];
    [txtSintomosPad setFont:[UIFont fontWithName:@"Avenir-Medium" size:20]];
    
    
    [self.view addSubview:txtSintomosPad];
    
    
    
    flSintomas = [[RPFloatingPlaceholderTextField alloc] initWithFrame:CGRectMake(50,250, (self.view.frame.size.width-100), 300)];
    flSintomas.floatingLabelActiveTextColor = [UIColor blueColor];
    flSintomas.floatingLabelInactiveTextColor = [UIColor grayColor];
    flSintomas.font = [UIFont fontWithName:@"Avenir-Medium" size:16];
    flSintomas.layer.cornerRadius=3;
    flSintomas.layer.borderColor=[[UIColor grayColor]CGColor];
    flSintomas.layer.borderWidth= 1.0f;
    [flSintomas setBorderStyle:UITextBorderStyleNone];
    
    [self.view addSubview:flSintomas];
    
    btnGuardarSint = [UIButton buttonWithType:UIButtonTypeCustom];
    btnGuardarSint.frame = CGRectMake(self.view.frame.size.width-200, self.view.frame.size.height-200, 150, 40);
    [btnGuardarSint setBackgroundColor:[UIColor colorWithRed:80.0/255.0 green:143.0/255.0 blue:247.0/255.0 alpha:1.0]];
    [btnGuardarSint setTitle:@"Guardar" forState:UIControlStateNormal];
    [btnGuardarSint addTarget:self action:@selector(registroAction:) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:btnGuardarSint];
    
    btnCancelarSint = [UIButton buttonWithType:UIButtonTypeCustom];
    btnCancelarSint.frame = CGRectMake(self.view.frame.size.width-350, self.view.frame.size.height-200, 150, 40);
    [btnCancelarSint setBackgroundColor:[UIColor colorWithRed:192.0/255.0 green:192.0/255.0 blue:192.0/255.0 alpha:1.0]];
    [btnCancelarSint setTitle:@"Cancelar" forState:UIControlStateNormal];
    [btnCancelarSint addTarget:self action:@selector(registroAction:) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:btnCancelarSint];
    
    
}
//antecedentes


-(IBAction)showDatosAntecedentes:(id)sender{
    [self performSegueWithIdentifier:@"antecedentes" sender:nil];
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
