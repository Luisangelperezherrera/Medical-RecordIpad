//
//  VacunasViewController.m
//  Medical Record
//
//  Created by vampiro on 20/2/17.
//  Copyright © 2017 meltsan. All rights reserved.
//

#import "VacunasViewController.h"
#import "RPFloatingPlaceholderTextField.h"

@interface VacunasViewController ()

@end

@implementation VacunasViewController
UILabel * txtNombreVacunas, *datosVacunas, *txtVacunas;
UIButton *btnConsultasVac, *btnVacunasP, *btnCancelarVac,*btnGuardarVac ;
UIView *plecaVacunas;
RPFloatingPlaceholderTextField *flVacunas;

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    txtNombreVacunas =[[UILabel alloc] initWithFrame:CGRectMake(50, 100, 300, 20)];
    txtNombreVacunas.text = @"Paulino Mota Hernández/";
    txtNombreVacunas.textColor = [UIColor colorWithRed:29.0/255.0 green:132.0/255.0 blue:198.0/255.0 alpha:1.0];
    [txtNombreVacunas setFont:[UIFont fontWithName:@"Georgia-Italic" size:22]];
    [self.view addSubview:txtNombreVacunas];
    
    datosVacunas =[[UILabel alloc] initWithFrame:CGRectMake(310, 100, 400, 20)];
    datosVacunas.text = @"Edad: 31 años / O+";
    datosVacunas.textColor = [UIColor colorWithRed:36.0/255.0 green:198.0/255.0 blue:200.0/255.0 alpha:1.0];
    [datosVacunas setFont:[UIFont fontWithName:@"Georgia-Italic" size:22]];
    [self.view addSubview:datosVacunas];
    
    plecaVacunas = [[UIView alloc] initWithFrame:CGRectMake(50,140, self.view.frame.size.width, 2)];
    UIColor *divHeader = [[UIColor alloc] initWithPatternImage:[UIImage imageNamed:@"pleca_divisiones"]];
    plecaVacunas.backgroundColor = divHeader;
    [self.view addSubview:plecaVacunas];
    
    
    btnVacunasP = [UIButton buttonWithType:UIButtonTypeCustom];
    btnVacunasP.frame = CGRectMake(50, 160, 150, 40);
    [btnVacunasP setBackgroundColor:[UIColor colorWithRed:36.0/255.0 green:198.0/255.0 blue:200.0/255.0 alpha:1.0]];
    [btnVacunasP setTitle:@"Antecedentes" forState:UIControlStateNormal];
    [btnVacunasP addTarget:self action:@selector(showDatosAntecedentes:) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:btnVacunasP];
    
    btnConsultasVac = [UIButton buttonWithType:UIButtonTypeCustom];
    btnConsultasVac.frame = CGRectMake(200, 160, 150, 40);
    [btnConsultasVac setBackgroundColor:[UIColor colorWithRed:80.0/255.0 green:143.0/255.0 blue:247.0/255.0 alpha:1.0]];
    [btnConsultasVac setTitle:@"Consultas" forState:UIControlStateNormal];
    [btnConsultasVac addTarget:self action:@selector(showConsulta:) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:btnConsultasVac];
    
    
    txtVacunas =[[UILabel alloc] initWithFrame:CGRectMake(50, 220, 400, 22)];
    txtVacunas.text = @"Vacunas";
    txtVacunas.textColor = [UIColor colorWithRed:36.0/255.0 green:198.0/255.0 blue:200.0/255.0 alpha:1.0];
    [txtVacunas setFont:[UIFont fontWithName:@"Avenir-Medium" size:20]];
    [self.view addSubview:txtVacunas];
    
    
    flVacunas = [[RPFloatingPlaceholderTextField alloc] initWithFrame:CGRectMake(50,250, (self.view.frame.size.width-100), 200)];
    flVacunas.floatingLabelActiveTextColor = [UIColor blueColor];
    flVacunas.floatingLabelInactiveTextColor = [UIColor grayColor];
    flVacunas.font = [UIFont fontWithName:@"Avenir-Medium" size:16];
    flVacunas.layer.cornerRadius=3;
    flVacunas.layer.borderColor=[[UIColor grayColor]CGColor];
    flVacunas.layer.borderWidth= 1.0f;
    [flVacunas setBorderStyle:UITextBorderStyleNone];
    [self.view addSubview:flVacunas];
    
    
    btnGuardarVac = [UIButton buttonWithType:UIButtonTypeCustom];
    btnGuardarVac.frame = CGRectMake(self.view.frame.size.width-200, self.view.frame.size.height-200, 150, 40);
    [btnGuardarVac setBackgroundColor:[UIColor colorWithRed:80.0/255.0 green:143.0/255.0 blue:247.0/255.0 alpha:1.0]];
    [btnGuardarVac setTitle:@"Guardar" forState:UIControlStateNormal];
    [btnGuardarVac addTarget:self action:@selector(registroAction:) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:btnGuardarVac];
    
    btnCancelarVac = [UIButton buttonWithType:UIButtonTypeCustom];
    btnCancelarVac.frame = CGRectMake(self.view.frame.size.width-350, self.view.frame.size.height-200, 150, 40);
    [btnCancelarVac setBackgroundColor:[UIColor colorWithRed:192.0/255.0 green:192.0/255.0 blue:192.0/255.0 alpha:1.0]];
    [btnCancelarVac setTitle:@"Cancelar" forState:UIControlStateNormal];
    [btnCancelarVac addTarget:self action:@selector(registroAction:) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:btnCancelarVac];
    
    
}




-(IBAction)showConsulta:(id)sender{
    [self performSegueWithIdentifier:@"vacShowConsulta" sender:nil];
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
