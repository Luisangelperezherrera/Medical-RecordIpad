//
//  EstudiosViewController.m
//  Medical Record
//
//  Created by vampiro on 20/2/17.
//  Copyright © 2017 meltsan. All rights reserved.
//

#import "EstudiosViewController.h"
#import "RPFloatingPlaceholderTextField.h"
@interface EstudiosViewController ()

@end

@implementation EstudiosViewController
UILabel *txtnombreEst, *txtDatosEst, *headerTablaTextNombre, *headerTablaTextNota, *headerTablaContNota, *textNotaCont, *txtGeneralesEst;
UIView * plecaEst, *headerTablaEst, *plecaEstudios;
UIButton *btnAntEst, *btnGuardarEst, *btnCancelarEst;

RPFloatingPlaceholderTextField *flNombreEstudio, *flDosisDuracion, *flGenerales;

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    txtnombreEst =[[UILabel alloc] initWithFrame:CGRectMake(50, 100, 300, 20)];
    txtnombreEst.text = @"Paulino Mota Hernández/";
    txtnombreEst.textColor = [UIColor colorWithRed:29.0/255.0 green:132.0/255.0 blue:198.0/255.0 alpha:1.0];
    [txtnombreEst setFont:[UIFont fontWithName:@"Georgia-Italic" size:22]];
    [self.view addSubview:txtnombreEst];
    
    txtDatosEst =[[UILabel alloc] initWithFrame:CGRectMake(310, 100, 400, 20)];
    txtDatosEst.text = @"Edad: 31 años / O+";
    txtDatosEst.textColor = [UIColor colorWithRed:36.0/255.0 green:198.0/255.0 blue:200.0/255.0 alpha:1.0];
    [txtDatosEst setFont:[UIFont fontWithName:@"Georgia-Italic" size:22]];
    [self.view addSubview:txtDatosEst];
    
    
    plecaEst = [[UIView alloc] initWithFrame:CGRectMake(50,140, self.view.frame.size.width, 2)];
    UIColor *divHeader = [[UIColor alloc] initWithPatternImage:[UIImage imageNamed:@"pleca_divisiones"]];
    plecaEst.backgroundColor = divHeader;
    [self.view addSubview:plecaEst];
    
    btnAntEst = [UIButton buttonWithType:UIButtonTypeCustom];
    btnAntEst.frame = CGRectMake(50, 160, 150, 40);
    [btnAntEst setBackgroundColor:[UIColor colorWithRed:80.0/255.0 green:143.0/255.0 blue:247.0/255.0 alpha:1.0]];
    [btnAntEst setTitle:@"Antecedentes" forState:UIControlStateNormal];
    [btnAntEst addTarget:self action:@selector(estAntecedentesShow:) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:btnAntEst];
    
    btnAntEst = [UIButton buttonWithType:UIButtonTypeCustom];
    btnAntEst.frame = CGRectMake(200, 160, 150, 40);
    [btnAntEst setBackgroundColor:[UIColor colorWithRed:36.0/255.0 green:198.0/255.0 blue:200.0/255.0 alpha:1.0]];
    [btnAntEst setTitle:@"Consultas" forState:UIControlStateNormal];
    [btnAntEst addTarget:self action:@selector(registroAction:) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:btnAntEst];
    
    
    flNombreEstudio = [[RPFloatingPlaceholderTextField alloc] initWithFrame:CGRectMake(50,250, (self.view.frame.size.width/2), 50)];
    flNombreEstudio.floatingLabelActiveTextColor = [UIColor blueColor];
    flNombreEstudio.floatingLabelInactiveTextColor = [UIColor grayColor];
    flNombreEstudio.font = [UIFont fontWithName:@"Avenir-Medium" size:16];
    flNombreEstudio.placeholder = @"Teclee el nombre del estudio";
    flNombreEstudio.layer.cornerRadius=3;
    flNombreEstudio.layer.borderColor=[[UIColor grayColor]CGColor];
    flNombreEstudio.layer.borderWidth= 1.0f;
    [flNombreEstudio setBorderStyle:UITextBorderStyleNone];
    
    [self.view addSubview:flNombreEstudio];
    
    
    flDosisDuracion = [[RPFloatingPlaceholderTextField alloc] initWithFrame:CGRectMake((self.view.frame.size.width/2)+100,250, (self.view.frame.size.width/2)-150, 50)];
    flDosisDuracion.floatingLabelActiveTextColor = [UIColor blueColor];
    flDosisDuracion.floatingLabelInactiveTextColor = [UIColor grayColor];
    flDosisDuracion.font = [UIFont fontWithName:@"Avenir-Medium" size:16];
    flDosisDuracion.placeholder = @"Dosis y Duración";
    flDosisDuracion.layer.cornerRadius=3;
    flDosisDuracion.layer.borderColor=[[UIColor grayColor]CGColor];
    flDosisDuracion.layer.borderWidth= 1.0f;
    [flDosisDuracion setBorderStyle:UITextBorderStyleNone];
    
    [self.view addSubview:flDosisDuracion];
    
    headerTablaEst = [[UIView alloc] initWithFrame:CGRectMake(50,320, self.view.frame.size.width-100, (self.view.frame.size.height/4)-140)];
    [self.view addSubview:headerTablaEst];
    headerTablaTextNombre =[[UILabel alloc] initWithFrame:CGRectMake(10,0, ((self.view.frame.size.width-100)/4), 20)];
    headerTablaTextNombre.text = @"Nombre";
    headerTablaTextNombre.textColor = [UIColor grayColor];
    [headerTablaTextNombre setFont:[UIFont fontWithName:@"Avenir-Roman" size:17]];
    [headerTablaEst addSubview:headerTablaTextNombre];
    
    
    
    
    headerTablaTextNota =[[UILabel alloc] initWithFrame:CGRectMake(((self.view.frame.size.width-100)/4), 0, (self.view.frame.size.width/4), 20)];
    headerTablaTextNota.text = @"Nota";
    //textNombre.backgroundColor = [UIColor yellowColor];
    headerTablaTextNota.textColor = [UIColor grayColor];
    [headerTablaTextNota setFont:[UIFont fontWithName:@"Avenir-Roman" size:17]];
    [headerTablaEst addSubview:headerTablaTextNota];
    
    
    
    plecaEstudios = [[UIView alloc] initWithFrame:CGRectMake(0,25, self.view.frame.size.width-100, 2)];
    UIColor *divDosis = [[UIColor alloc] initWithPatternImage:[UIImage imageNamed:@"pleca_divisiones"]];
    plecaEstudios.backgroundColor = divDosis;
    
    [headerTablaEst addSubview:plecaEstudios];
    
    
    headerTablaContNota =[[UILabel alloc] initWithFrame:CGRectMake(10,50, ((self.view.frame.size.width-100)/4), 20)];
    headerTablaContNota.text = @"Gon..";
    headerTablaContNota.textColor = [UIColor grayColor];
    [headerTablaContNota setFont:[UIFont fontWithName:@"Avenir-Roman" size:17]];
    [headerTablaEst addSubview:headerTablaContNota];
    
    textNotaCont =[[UILabel alloc] initWithFrame:CGRectMake(((self.view.frame.size.width-100)/4), 50, (self.view.frame.size.width/2), 20)];
    textNotaCont.text = @"Tomar el estudio antes del último día del mes en ayunas";
    textNotaCont.textColor = [UIColor grayColor];
    [textNotaCont setFont:[UIFont fontWithName:@"Avenir-Roman" size:17]];
    [headerTablaEst addSubview:textNotaCont];
    
    

    
    txtGeneralesEst =[[UILabel alloc] initWithFrame:CGRectMake(50, 430, 400, 22)];
    txtGeneralesEst.text = @"Ingresa notas generales del estudio:";
    txtGeneralesEst.textColor = [UIColor grayColor];
    [txtGeneralesEst setFont:[UIFont fontWithName:@"Avenir-Medium" size:20]];
    [self.view addSubview:txtGeneralesEst];
    
    
    flGenerales = [[RPFloatingPlaceholderTextField alloc] initWithFrame:CGRectMake(50,450, (self.view.frame.size.width-100), 150)];
    flGenerales.floatingLabelActiveTextColor = [UIColor blueColor];
    flGenerales.floatingLabelInactiveTextColor = [UIColor grayColor];
    flGenerales.font = [UIFont fontWithName:@"Avenir-Medium" size:16];
    flGenerales.layer.cornerRadius=3;
    flGenerales.layer.borderColor=[[UIColor grayColor]CGColor];
    flGenerales.layer.borderWidth= 1.0f;
    [flGenerales setBorderStyle:UITextBorderStyleNone];
    
    [self.view addSubview:flGenerales];
    
    
    btnGuardarEst = [UIButton buttonWithType:UIButtonTypeCustom];
    btnGuardarEst.frame = CGRectMake(self.view.frame.size.width-200, self.view.frame.size.height-150, 150, 40);
    [btnGuardarEst setBackgroundColor:[UIColor colorWithRed:80.0/255.0 green:143.0/255.0 blue:247.0/255.0 alpha:1.0]];
    [btnGuardarEst setTitle:@"Guardar" forState:UIControlStateNormal];
    [btnGuardarEst addTarget:self action:@selector(registroAction:) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:btnGuardarEst];
    
    btnCancelarEst = [UIButton buttonWithType:UIButtonTypeCustom];
    btnCancelarEst.frame = CGRectMake(self.view.frame.size.width-350, self.view.frame.size.height-150, 150, 40);
    [btnCancelarEst setBackgroundColor:[UIColor colorWithRed:192.0/255.0 green:192.0/255.0 blue:192.0/255.0 alpha:1.0]];
    [btnCancelarEst setTitle:@"Cancelar" forState:UIControlStateNormal];
    [btnCancelarEst addTarget:self action:@selector(registroAction:) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:btnCancelarEst];

}

-(IBAction)estAntecedentesShow:(id)sender{
    [self performSegueWithIdentifier:@"estAntecedentes" sender:nil];
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
