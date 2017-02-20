//
//  TratamientoViewController.m
//  Medical Record
//
//  Created by vampiro on 20/2/17.
//  Copyright © 2017 meltsan. All rights reserved.
//

#import "TratamientoViewController.h"
#import "RPFloatingPlaceholderTextField.h"

@interface TratamientoViewController ()

@end

@implementation TratamientoViewController
UILabel * txtnombreTrat, *txtDatosTrat, *txtEnfermTrat, *textNombrePTrat, *textSustancia, *textPresentacion, *textDosis, *textMedPTrat, *textSustanciaT, *textSolucion, *textDosisT, *txtIndicaciones;
UIView *plecaTrat, *plecaDosis;
UIButton *btnAntTrat, *btnAntTrat, *btnGuardarTrat, *btnCancelarTrat;
RPFloatingPlaceholderTextField *flMarca, *flDosis, *flIndicaciones;
UIView *headerTablaTrat;
- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    txtnombreTrat =[[UILabel alloc] initWithFrame:CGRectMake(50, 100, 300, 20)];
    txtnombreTrat.text = @"Paulino Mota Hernández/";
    txtnombreTrat.textColor = [UIColor colorWithRed:29.0/255.0 green:132.0/255.0 blue:198.0/255.0 alpha:1.0];
    [txtnombreTrat setFont:[UIFont fontWithName:@"Georgia-Italic" size:22]];
    [self.view addSubview:txtnombreTrat];
    
    txtDatosTrat =[[UILabel alloc] initWithFrame:CGRectMake(310, 100, 400, 20)];
    txtDatosTrat.text = @"Edad: 31 años / O+";
    txtDatosTrat.textColor = [UIColor colorWithRed:36.0/255.0 green:198.0/255.0 blue:200.0/255.0 alpha:1.0];
    [txtDatosTrat setFont:[UIFont fontWithName:@"Georgia-Italic" size:22]];
    [self.view addSubview:txtDatosTrat];
    
    
    plecaTrat = [[UIView alloc] initWithFrame:CGRectMake(50,140, self.view.frame.size.width, 2)];
    UIColor *divHeader = [[UIColor alloc] initWithPatternImage:[UIImage imageNamed:@"pleca_divisiones"]];
    plecaTrat.backgroundColor = divHeader;
    [self.view addSubview:plecaTrat];
    
    btnAntTrat = [UIButton buttonWithType:UIButtonTypeCustom];
    btnAntTrat.frame = CGRectMake(50, 160, 150, 40);
    [btnAntTrat setBackgroundColor:[UIColor colorWithRed:80.0/255.0 green:143.0/255.0 blue:247.0/255.0 alpha:1.0]];
    [btnAntTrat setTitle:@"Antecedentes" forState:UIControlStateNormal];
    [btnAntTrat addTarget:self action:@selector(tratAntecedentesShow:) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:btnAntTrat];
    
    btnAntTrat = [UIButton buttonWithType:UIButtonTypeCustom];
    btnAntTrat.frame = CGRectMake(200, 160, 150, 40);
    [btnAntTrat setBackgroundColor:[UIColor colorWithRed:36.0/255.0 green:198.0/255.0 blue:200.0/255.0 alpha:1.0]];
    [btnAntTrat setTitle:@"Consultas" forState:UIControlStateNormal];
    [btnAntTrat addTarget:self action:@selector(registroAction:) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:btnAntTrat];
    
    
    flMarca = [[RPFloatingPlaceholderTextField alloc] initWithFrame:CGRectMake(50,250, (self.view.frame.size.width/2), 50)];
    flMarca.floatingLabelActiveTextColor = [UIColor blueColor];
    flMarca.floatingLabelInactiveTextColor = [UIColor grayColor];
    flMarca.font = [UIFont fontWithName:@"Avenir-Medium" size:16];
    flMarca.placeholder = @"Marca o sustancia activa";
    flMarca.layer.cornerRadius=3;
    flMarca.layer.borderColor=[[UIColor grayColor]CGColor];
    flMarca.layer.borderWidth= 1.0f;
    [flMarca setBorderStyle:UITextBorderStyleNone];
    
    [self.view addSubview:flMarca];
    
    
    flDosis = [[RPFloatingPlaceholderTextField alloc] initWithFrame:CGRectMake((self.view.frame.size.width/2)+100,250, (self.view.frame.size.width/2)-150, 50)];
    flDosis.floatingLabelActiveTextColor = [UIColor blueColor];
    flDosis.floatingLabelInactiveTextColor = [UIColor grayColor];
    flDosis.font = [UIFont fontWithName:@"Avenir-Medium" size:16];
    flDosis.placeholder = @"Dosis y Duración";
    flDosis.layer.cornerRadius=3;
    flDosis.layer.borderColor=[[UIColor grayColor]CGColor];
    flDosis.layer.borderWidth= 1.0f;
    [flDosis setBorderStyle:UITextBorderStyleNone];
    
    [self.view addSubview:flDosis];
    
    headerTablaTrat = [[UIView alloc] initWithFrame:CGRectMake(50,320, self.view.frame.size.width-100, (self.view.frame.size.height/4)-140)];
    //headerTablaTrat.backgroundColor=[[UIColor alloc] initWithPatternImage:[UIImage imageNamed:@"footer"]];
    [self.view addSubview:headerTablaTrat];
    
    textNombrePTrat =[[UILabel alloc] initWithFrame:CGRectMake(10,0, ((self.view.frame.size.width-100)/4), 20)];
    //textNumRegistro.backgroundColor = [UIColor redColor];
    textNombrePTrat.text = @"Nombre";
    textNombrePTrat.textColor = [UIColor grayColor];
    [textNombrePTrat setFont:[UIFont fontWithName:@"Avenir-Roman" size:17]];
    [headerTablaTrat addSubview:textNombrePTrat];
    
    //self.table.tableHeaderView  = textNumRegistro;
    
    
    textSustancia =[[UILabel alloc] initWithFrame:CGRectMake(((self.view.frame.size.width-100)/4), 0, (self.view.frame.size.width/4), 20)];
    textSustancia.text = @"Sustancia";
    //textNombre.backgroundColor = [UIColor yellowColor];
    textSustancia.textColor = [UIColor grayColor];
    [textSustancia setFont:[UIFont fontWithName:@"Avenir-Roman" size:17]];
    [headerTablaTrat addSubview:textSustancia];
    
    
    textPresentacion =[[UILabel alloc] initWithFrame:CGRectMake(((self.view.frame.size.width-100)/4)*2, 0, (self.view.frame.size.width/4), 20)];
    textPresentacion.text = @"Presentacion";
    //textCurp.backgroundColor = [UIColor yellowColor];
    textPresentacion.textColor = [UIColor grayColor];
    [textPresentacion setFont:[UIFont fontWithName:@"Avenir-Roman" size:17]];
    [headerTablaTrat addSubview:textPresentacion];
    
    textDosis =[[UILabel alloc] initWithFrame:CGRectMake(((self.view.frame.size.width-100)/4)*3, 0, (self.view.frame.size.width/4), 20)];
    textDosis.text = @"Dosis";
    //textRFC.backgroundColor = [UIColor yellowColor];
    textDosis.textColor = [UIColor grayColor];
    [textDosis setFont:[UIFont fontWithName:@"Avenir-Roman" size:17]];
    [headerTablaTrat addSubview:textDosis];
    
    
    plecaDosis = [[UIView alloc] initWithFrame:CGRectMake(0,25, self.view.frame.size.width-100, 2)];
    UIColor *divDosis = [[UIColor alloc] initWithPatternImage:[UIImage imageNamed:@"pleca_divisiones"]];
    plecaDosis.backgroundColor = divDosis;
    
    [headerTablaTrat addSubview:plecaDosis];
    
    
    textMedPTrat =[[UILabel alloc] initWithFrame:CGRectMake(10,50, ((self.view.frame.size.width-100)/4), 20)];
    textMedPTrat.text = @"Dolac";
    textMedPTrat.textColor = [UIColor grayColor];
    [textMedPTrat setFont:[UIFont fontWithName:@"Avenir-Roman" size:17]];
    [headerTablaTrat addSubview:textMedPTrat];

    textSustanciaT =[[UILabel alloc] initWithFrame:CGRectMake(((self.view.frame.size.width-100)/4), 50, (self.view.frame.size.width/4), 20)];
    textSustanciaT.text = @"Ketorolaco";
    //textNombre.backgroundColor = [UIColor yellowColor];
    textSustanciaT.textColor = [UIColor grayColor];
    [textSustanciaT setFont:[UIFont fontWithName:@"Avenir-Roman" size:17]];
    [headerTablaTrat addSubview:textSustanciaT];
    

    textSolucion =[[UILabel alloc] initWithFrame:CGRectMake(((self.view.frame.size.width-100)/4)*2, 50, (self.view.frame.size.width/4), 20)];
    textSolucion.text = @"Solución";
    //textCurp.backgroundColor = [UIColor yellowColor];
    textSolucion.textColor = [UIColor grayColor];
    [textSolucion setFont:[UIFont fontWithName:@"Avenir-Roman" size:17]];
    [headerTablaTrat addSubview:textSolucion];
    
    
    textDosisT =[[UILabel alloc] initWithFrame:CGRectMake(((self.view.frame.size.width-100)/4)*3, 50, (self.view.frame.size.width/4), 20)];
    textDosisT.text = @"100 mg durante 8 días";
    //textRFC.backgroundColor = [UIColor yellowColor];
    textDosisT.textColor = [UIColor grayColor];
    [textDosisT setFont:[UIFont fontWithName:@"Avenir-Roman" size:17]];
    [headerTablaTrat addSubview:textDosisT];
    
    
    txtIndicaciones =[[UILabel alloc] initWithFrame:CGRectMake(50, 430, 400, 22)];
    txtIndicaciones.text = @"Escriba indicaciones sobre el tratamiento";
    txtIndicaciones.textColor = [UIColor grayColor];
    [txtIndicaciones setFont:[UIFont fontWithName:@"Avenir-Medium" size:20]];
    [self.view addSubview:txtIndicaciones];

    
    flIndicaciones = [[RPFloatingPlaceholderTextField alloc] initWithFrame:CGRectMake(50,450, (self.view.frame.size.width-100), 150)];
    flIndicaciones.floatingLabelActiveTextColor = [UIColor blueColor];
    flIndicaciones.floatingLabelInactiveTextColor = [UIColor grayColor];
    flIndicaciones.font = [UIFont fontWithName:@"Avenir-Medium" size:16];
    flIndicaciones.layer.cornerRadius=3;
    flIndicaciones.layer.borderColor=[[UIColor grayColor]CGColor];
    flIndicaciones.layer.borderWidth= 1.0f;
    [flIndicaciones setBorderStyle:UITextBorderStyleNone];
    
    [self.view addSubview:flIndicaciones];
    
    
    btnGuardarTrat = [UIButton buttonWithType:UIButtonTypeCustom];
    btnGuardarTrat.frame = CGRectMake(self.view.frame.size.width-200, self.view.frame.size.height-150, 150, 40);
    [btnGuardarTrat setBackgroundColor:[UIColor colorWithRed:80.0/255.0 green:143.0/255.0 blue:247.0/255.0 alpha:1.0]];
    [btnGuardarTrat setTitle:@"Guardar" forState:UIControlStateNormal];
    [btnGuardarTrat addTarget:self action:@selector(registroAction:) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:btnGuardarTrat];
    
    btnCancelarTrat = [UIButton buttonWithType:UIButtonTypeCustom];
    btnCancelarTrat.frame = CGRectMake(self.view.frame.size.width-350, self.view.frame.size.height-150, 150, 40);
    [btnCancelarTrat setBackgroundColor:[UIColor colorWithRed:192.0/255.0 green:192.0/255.0 blue:192.0/255.0 alpha:1.0]];
    [btnCancelarTrat setTitle:@"Cancelar" forState:UIControlStateNormal];
    [btnCancelarTrat addTarget:self action:@selector(registroAction:) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:btnCancelarTrat];
    
    
    
}

-(IBAction)tratAntecedentesShow:(id)sender{
    [self performSegueWithIdentifier:@"tratAntecedentes" sender:nil];
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
