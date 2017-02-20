//
//  DiagnosticoViewController.m
//  Medical Record
//
//  Created by vampiro on 20/2/17.
//  Copyright © 2017 meltsan. All rights reserved.
//

#import "DiagnosticoViewController.h"
#import "RPFloatingPlaceholderTextField.h"
@interface DiagnosticoViewController ()

@end

@implementation DiagnosticoViewController

UILabel *txtDiagnostico;
RPFloatingPlaceholderTextField *flEnfermedad, *flDiagnostico;
UIButton *btnGuardarDiag, *btnCancelarDiag;
- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    txtnombreDiag =[[UILabel alloc] initWithFrame:CGRectMake(50, 100, 300, 20)];
    txtnombreDiag.text = @"Paulino Mota Hernández/";
    txtnombreDiag.textColor = [UIColor colorWithRed:29.0/255.0 green:132.0/255.0 blue:198.0/255.0 alpha:1.0];
    [txtnombreDiag setFont:[UIFont fontWithName:@"Georgia-Italic" size:22]];
    [self.view addSubview:txtnombreDiag];
    
    txtDatosDiag =[[UILabel alloc] initWithFrame:CGRectMake(310, 100, 400, 20)];
    txtDatosDiag.text = @"Edad: 31 años / O+";
    txtDatosDiag.textColor = [UIColor colorWithRed:36.0/255.0 green:198.0/255.0 blue:200.0/255.0 alpha:1.0];
    [txtDatosDiag setFont:[UIFont fontWithName:@"Georgia-Italic" size:22]];
    [self.view addSubview:txtDatosDiag];
    
    
    plecaDiasg = [[UIView alloc] initWithFrame:CGRectMake(50,140, self.view.frame.size.width, 2)];
    UIColor *divHeader = [[UIColor alloc] initWithPatternImage:[UIImage imageNamed:@"pleca_divisiones"]];
    plecaDiasg.backgroundColor = divHeader;
    [self.view addSubview:plecaDiasg];
    
    btnAntDiag = [UIButton buttonWithType:UIButtonTypeCustom];
    btnAntDiag.frame = CGRectMake(50, 160, 150, 40);
    [btnAntDiag setBackgroundColor:[UIColor colorWithRed:80.0/255.0 green:143.0/255.0 blue:247.0/255.0 alpha:1.0]];
    [btnAntDiag setTitle:@"Antecedentes" forState:UIControlStateNormal];
    [btnAntDiag addTarget:self action:@selector(antecedentesShow:) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:btnAntDiag];
    
    btnAntConsultas = [UIButton buttonWithType:UIButtonTypeCustom];
    btnAntConsultas.frame = CGRectMake(200, 160, 150, 40);
    [btnAntConsultas setBackgroundColor:[UIColor colorWithRed:36.0/255.0 green:198.0/255.0 blue:200.0/255.0 alpha:1.0]];
    [btnAntConsultas setTitle:@"Consultas" forState:UIControlStateNormal];
    [btnAntConsultas addTarget:self action:@selector(registroAction:) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:btnAntConsultas];
    
    txtEnfermDiag =[[UILabel alloc] initWithFrame:CGRectMake(50, 220, 400, 22)];
    txtEnfermDiag.text = @"Enfermedades Diagnosticadas";
    txtEnfermDiag.textColor = [UIColor colorWithRed:36.0/255.0 green:198.0/255.0 blue:200.0/255.0 alpha:1.0];
    [txtEnfermDiag setFont:[UIFont fontWithName:@"Avenir-Medium" size:20]];
    
    [self.view addSubview:txtEnfermDiag];
    
    flEnfermedad = [[RPFloatingPlaceholderTextField alloc] initWithFrame:CGRectMake(50,250, (self.view.frame.size.width-100), 50)];
    flEnfermedad.floatingLabelActiveTextColor = [UIColor blueColor];
    flEnfermedad.floatingLabelInactiveTextColor = [UIColor grayColor];
    flEnfermedad.font = [UIFont fontWithName:@"Avenir-Medium" size:16];
    flEnfermedad.layer.cornerRadius=3;
    flEnfermedad.layer.borderColor=[[UIColor grayColor]CGColor];
    flEnfermedad.layer.borderWidth= 1.0f;
    [flEnfermedad setBorderStyle:UITextBorderStyleNone];
    
    [self.view addSubview:flEnfermedad];
    
    txtDiagnostico =[[UILabel alloc] initWithFrame:CGRectMake(50, 320, 400, 22)];
    txtDiagnostico.text = @"Diagnostico(DX)*";
    txtDiagnostico.textColor = [UIColor grayColor];
    [txtDiagnostico setFont:[UIFont fontWithName:@"Avenir-Medium" size:20]];
    
    [self.view addSubview:txtDiagnostico];
    
    flDiagnostico = [[RPFloatingPlaceholderTextField alloc] initWithFrame:CGRectMake(50,350, (self.view.frame.size.width-100), 250)];
    flDiagnostico.floatingLabelActiveTextColor = [UIColor blueColor];
    flDiagnostico.floatingLabelInactiveTextColor = [UIColor grayColor];
    flDiagnostico.font = [UIFont fontWithName:@"Avenir-Medium" size:16];
    flDiagnostico.layer.cornerRadius=3;
    flDiagnostico.layer.borderColor=[[UIColor grayColor]CGColor];
    flDiagnostico.layer.borderWidth= 1.0f;
    [flDiagnostico setBorderStyle:UITextBorderStyleNone];
    
    [self.view addSubview:flDiagnostico];
    
    
    btnGuardarDiag = [UIButton buttonWithType:UIButtonTypeCustom];
    btnGuardarDiag.frame = CGRectMake(self.view.frame.size.width-200, self.view.frame.size.height-150, 150, 40);
    [btnGuardarDiag setBackgroundColor:[UIColor colorWithRed:80.0/255.0 green:143.0/255.0 blue:247.0/255.0 alpha:1.0]];
    [btnGuardarDiag setTitle:@"Guardar" forState:UIControlStateNormal];
    [btnGuardarDiag addTarget:self action:@selector(registroAction:) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:btnGuardarDiag];
    
    btnCancelarDiag = [UIButton buttonWithType:UIButtonTypeCustom];
    btnCancelarDiag.frame = CGRectMake(self.view.frame.size.width-350, self.view.frame.size.height-150, 150, 40);
    [btnCancelarDiag setBackgroundColor:[UIColor colorWithRed:192.0/255.0 green:192.0/255.0 blue:192.0/255.0 alpha:1.0]];
    [btnCancelarDiag setTitle:@"Cancelar" forState:UIControlStateNormal];
    [btnCancelarDiag addTarget:self action:@selector(registroAction:) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:btnCancelarDiag];
}

UILabel *txtnombreDiag, *txtDatosDiag, *txtEnfermDiag;
UIView *plecaDiasg;

UIButton * btnAntDiag, *btnAntConsultas;




-(IBAction)antecedentesShow:(id)sender{
    [self performSegueWithIdentifier:@"diagAntecedentes" sender:nil];
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
