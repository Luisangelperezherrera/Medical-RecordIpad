//
//  AparatosViewController.m
//  Medical Record
//
//  Created by vampiro on 20/2/17.
//  Copyright © 2017 meltsan. All rights reserved.
//

#import "AparatosViewController.h"
#import "RPFloatingPlaceholderTextField.h"

@interface AparatosViewController ()

@end

@implementation AparatosViewController
UILabel *txtNombreAparatos, *datosAparatos, *txtInter;
UIView *plecaAparatos;
UIButton *btnAparatosP, *btnConsultasAP, *btnCancelarAp,*btnGuardarAp;
RPFloatingPlaceholderTextField *flInterrogatorio, *flAlergias, *txtAlergias;

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    txtNombreAparatos =[[UILabel alloc] initWithFrame:CGRectMake(50, 100, 300, 20)];
    txtNombreAparatos.text = @"Paulino Mota Hernández/";
    txtNombreAparatos.textColor = [UIColor colorWithRed:29.0/255.0 green:132.0/255.0 blue:198.0/255.0 alpha:1.0];
    [txtNombreAparatos setFont:[UIFont fontWithName:@"Georgia-Italic" size:22]];
    [self.view addSubview:txtNombreAparatos];
    
    datosAparatos =[[UILabel alloc] initWithFrame:CGRectMake(310, 100, 400, 20)];
    datosAparatos.text = @"Edad: 31 años / O+";
    datosAparatos.textColor = [UIColor colorWithRed:36.0/255.0 green:198.0/255.0 blue:200.0/255.0 alpha:1.0];
    [datosAparatos setFont:[UIFont fontWithName:@"Georgia-Italic" size:22]];
    [self.view addSubview:datosAparatos];
    
    plecaAparatos = [[UIView alloc] initWithFrame:CGRectMake(50,140, self.view.frame.size.width, 2)];
    UIColor *divHeader = [[UIColor alloc] initWithPatternImage:[UIImage imageNamed:@"pleca_divisiones"]];
    plecaAparatos.backgroundColor = divHeader;
    [self.view addSubview:plecaAparatos];
    
    btnAparatosP = [UIButton buttonWithType:UIButtonTypeCustom];
    btnAparatosP.frame = CGRectMake(50, 160, 150, 40);
    [btnAparatosP setBackgroundColor:[UIColor colorWithRed:36.0/255.0 green:198.0/255.0 blue:200.0/255.0 alpha:1.0]];
    [btnAparatosP setTitle:@"Antecedentes" forState:UIControlStateNormal];
    [btnAparatosP addTarget:self action:@selector(showDatosAntecedentes:) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:btnAparatosP];
    
    btnConsultasAP = [UIButton buttonWithType:UIButtonTypeCustom];
    btnConsultasAP.frame = CGRectMake(200, 160, 150, 40);
    [btnConsultasAP setBackgroundColor:[UIColor colorWithRed:80.0/255.0 green:143.0/255.0 blue:247.0/255.0 alpha:1.0]];
    [btnConsultasAP setTitle:@"Consultas" forState:UIControlStateNormal];
    [btnConsultasAP addTarget:self action:@selector(showConsulta:) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:btnConsultasAP];
    
    
    txtInter =[[UILabel alloc] initWithFrame:CGRectMake(50, 220, 400, 22)];
    txtInter.text = @"Interrogatorio por apararos y sistemas";
    txtInter.textColor = [UIColor colorWithRed:36.0/255.0 green:198.0/255.0 blue:200.0/255.0 alpha:1.0];
    [txtInter setFont:[UIFont fontWithName:@"Avenir-Medium" size:20]];
    [self.view addSubview:txtInter];
    
    
    
    flInterrogatorio = [[RPFloatingPlaceholderTextField alloc] initWithFrame:CGRectMake(50,250, (self.view.frame.size.width-100), 100)];
    flInterrogatorio.floatingLabelActiveTextColor = [UIColor blueColor];
    flInterrogatorio.floatingLabelInactiveTextColor = [UIColor grayColor];
    flInterrogatorio.font = [UIFont fontWithName:@"Avenir-Medium" size:16];
    flInterrogatorio.layer.cornerRadius=3;
    flInterrogatorio.layer.borderColor=[[UIColor grayColor]CGColor];
    flInterrogatorio.layer.borderWidth= 1.0f;
    [flInterrogatorio setBorderStyle:UITextBorderStyleNone];
    [self.view addSubview:flInterrogatorio];
    
    
    txtAlergias =[[UILabel alloc] initWithFrame:CGRectMake(50, 380, 400, 22)];
    txtAlergias.text = @"Alergias";
    txtAlergias.textColor = [UIColor colorWithRed:36.0/255.0 green:198.0/255.0 blue:200.0/255.0 alpha:1.0];
    [txtAlergias setFont:[UIFont fontWithName:@"Avenir-Medium" size:20]];
    [self.view addSubview:txtAlergias];
    
    
    flAlergias = [[RPFloatingPlaceholderTextField alloc] initWithFrame:CGRectMake(50,410, (self.view.frame.size.width-100), 100)];
    flAlergias.floatingLabelActiveTextColor = [UIColor blueColor];
    flAlergias.floatingLabelInactiveTextColor = [UIColor grayColor];
    flAlergias.font = [UIFont fontWithName:@"Avenir-Medium" size:16];
    flAlergias.layer.cornerRadius=3;
    flAlergias.layer.borderColor=[[UIColor grayColor]CGColor];
    flAlergias.layer.borderWidth= 1.0f;
    [flAlergias setBorderStyle:UITextBorderStyleNone];
    [self.view addSubview:flAlergias];

    
    
    btnGuardarAp = [UIButton buttonWithType:UIButtonTypeCustom];
    btnGuardarAp.frame = CGRectMake(self.view.frame.size.width-200, self.view.frame.size.height-200, 150, 40);
    [btnGuardarAp setBackgroundColor:[UIColor colorWithRed:80.0/255.0 green:143.0/255.0 blue:247.0/255.0 alpha:1.0]];
    [btnGuardarAp setTitle:@"Guardar" forState:UIControlStateNormal];
    [btnGuardarAp addTarget:self action:@selector(registroAction:) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:btnGuardarAp];
    
    btnCancelarAp = [UIButton buttonWithType:UIButtonTypeCustom];
    btnCancelarAp.frame = CGRectMake(self.view.frame.size.width-350, self.view.frame.size.height-200, 150, 40);
    [btnCancelarAp setBackgroundColor:[UIColor colorWithRed:192.0/255.0 green:192.0/255.0 blue:192.0/255.0 alpha:1.0]];
    [btnCancelarAp setTitle:@"Cancelar" forState:UIControlStateNormal];
    [btnCancelarAp addTarget:self action:@selector(registroAction:) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:btnCancelarAp];
    
    
    
}


-(IBAction)showConsulta:(id)sender{
    [self performSegueWithIdentifier:@"apaShowConsulta" sender:nil];
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
