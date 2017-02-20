//
//  ExploracionViewController.m
//  Medical Record
//
//  Created by vampiro on 19/2/17.
//  Copyright © 2017 meltsan. All rights reserved.
//

#import "ExploracionViewController.h"
#import "RPFloatingPlaceholderTextField.h"

@interface ExploracionViewController ()

@end
//

@implementation ExploracionViewController
UILabel * txtNombrePExp, *txtDatosPExp, *exploracionFis;
UIView *plecaExploracion, *bodyLeft, *plecaSignos, *plecaMedidas,*plecaExpFisica, *plecaCol, *bodyrigth, *plecaHemoglob, *expView;
UIButton *btnPAntecedentes, *btnConsultaExp;
UILabel *signosExp, *medidasExp, *colesterorExp, *hemoglobinaExp;




RPFloatingPlaceholderTextField  *flTa, *flTemp, *flPeso,*flTalla, *flCintura, *flCadera,
                                *flHabitus, *flTrigliceridos, *flColesterol, *flAc, *flFR, *flFC, *flGenitales;





- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    txtNombrePExp =[[UILabel alloc] initWithFrame:CGRectMake(50, 100, 300, 20)];
    txtNombrePExp.text = @"Paulino Mota Hernández/";
    txtNombrePExp.textColor = [UIColor colorWithRed:29.0/255.0 green:132.0/255.0 blue:198.0/255.0 alpha:1.0];
    [txtNombrePExp setFont:[UIFont fontWithName:@"Georgia-Italic" size:22]];
    [self.view addSubview:txtNombrePExp];
    
    txtDatosPExp =[[UILabel alloc] initWithFrame:CGRectMake(310, 100, 400, 20)];
    txtDatosPExp.text = @"Edad: 31 años / O+";
    txtDatosPExp.textColor = [UIColor colorWithRed:36.0/255.0 green:198.0/255.0 blue:200.0/255.0 alpha:1.0];
    [txtDatosPExp setFont:[UIFont fontWithName:@"Georgia-Italic" size:22]];
    [self.view addSubview:txtDatosPExp];
    
    
    plecaExploracion = [[UIView alloc] initWithFrame:CGRectMake(50,140, self.view.frame.size.width, 2)];
    UIColor *divHeader = [[UIColor alloc] initWithPatternImage:[UIImage imageNamed:@"pleca_divisiones"]];
    plecaExploracion.backgroundColor = divHeader;
    [self.view addSubview:plecaExploracion];
    
    btnPAntecedentes = [UIButton buttonWithType:UIButtonTypeCustom];
    btnPAntecedentes.frame = CGRectMake(50, 160, 150, 40);
    [btnPAntecedentes setBackgroundColor:[UIColor colorWithRed:80.0/255.0 green:143.0/255.0 blue:247.0/255.0 alpha:1.0]];
    [btnPAntecedentes setTitle:@"Antecedentes" forState:UIControlStateNormal];
    [btnPAntecedentes addTarget:self action:@selector(showAntecedentes:) forControlEvents:UIControlEventTouchUpInside];
    

    [self.view addSubview:btnPAntecedentes];
    
    btnConsultaExp = [UIButton buttonWithType:UIButtonTypeCustom];
    btnConsultaExp.frame = CGRectMake(200, 160, 150, 40);
    [btnConsultaExp setBackgroundColor:[UIColor colorWithRed:36.0/255.0 green:198.0/255.0 blue:200.0/255.0 alpha:1.0]];
    [btnConsultaExp setTitle:@"Consultas" forState:UIControlStateNormal];
    [btnConsultaExp addTarget:self action:@selector(registroAction:) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:btnConsultaExp];
    
    bodyLeft = [[UIView alloc]initWithFrame:CGRectMake(50, 220, (self.view.frame.size.width-100)/2, self.view.frame.size.height-100)];
    //bodyLeft.backgroundColor=[UIColor redColor];
    [self.view addSubview:bodyLeft];
    
    signosExp =[[UILabel alloc] initWithFrame:CGRectMake(0, 0, 400, 22)];
    signosExp.text = @"Signos Vitales";
    signosExp.textColor = [UIColor grayColor];
    [signosExp setFont:[UIFont fontWithName:@"Avenir-Medium" size:20]];
    [bodyLeft addSubview:signosExp];

    plecaSignos = [[UIView alloc] initWithFrame:CGRectMake(0,35, (self.view.frame.size.width/2)-45, 2)];
    UIColor *divSigno = [[UIColor alloc] initWithPatternImage:[UIImage imageNamed:@"pleca_divisiones"]];
    plecaSignos.backgroundColor = divSigno;
    [bodyLeft addSubview:plecaSignos];
    
    flTa = [[RPFloatingPlaceholderTextField alloc] initWithFrame:CGRectMake(0,60, ((self.view.frame.size.width-100)/4)-5, 50)];
    flTa.floatingLabelActiveTextColor = [UIColor blueColor];
    flTa.floatingLabelInactiveTextColor = [UIColor grayColor];
    flTa.placeholder = @"TA";
    flTa.font = [UIFont fontWithName:@"Avenir-Medium" size:16];
    flTa.backgroundColor=[UIColor whiteColor];
    flTa.layer.cornerRadius=5;
    flTa.layer.cornerRadius=3;
    flTa.layer.borderColor=[[UIColor grayColor]CGColor];
    flTa.layer.borderWidth= 1.0f;
    [bodyLeft addSubview:flTa];
    
    flTemp = [[RPFloatingPlaceholderTextField alloc] initWithFrame:CGRectMake(((self.view.frame.size.width-100)/4)+5,60, ((self.view.frame.size.width-100)/4)-5, 50)];
    flTemp.floatingLabelActiveTextColor = [UIColor blueColor];
    flTemp.floatingLabelInactiveTextColor = [UIColor grayColor];
    flTemp.placeholder = @"Temperatura";
    flTemp.font = [UIFont fontWithName:@"Avenir-Medium" size:16];
    flTemp.backgroundColor=[UIColor whiteColor];
    flTemp.layer.cornerRadius=5;
    flTemp.layer.cornerRadius=3;
    flTemp.layer.borderColor=[[UIColor grayColor]CGColor];
    flTemp.layer.borderWidth= 1.0f;
    [bodyLeft addSubview:flTemp];
    
    
    flFR = [[RPFloatingPlaceholderTextField alloc] initWithFrame:CGRectMake(0,130, ((self.view.frame.size.width-100)/4)-5, 50)];
    flFR.floatingLabelActiveTextColor = [UIColor blueColor];
    flFR.floatingLabelInactiveTextColor = [UIColor grayColor];
    flFR.placeholder = @"FR";
    flFR.font = [UIFont fontWithName:@"Avenir-Medium" size:16];
    flFR.backgroundColor=[UIColor whiteColor];
    flFR.layer.cornerRadius=5;
    flFR.layer.cornerRadius=3;
    flFR.layer.borderColor=[[UIColor grayColor]CGColor];
    flFR.layer.borderWidth= 1.0f;
    [bodyLeft addSubview:flFR];
    
    flFC = [[RPFloatingPlaceholderTextField alloc] initWithFrame:CGRectMake(((self.view.frame.size.width-100)/4)+5,130, ((self.view.frame.size.width-100)/4)-5, 50)];
    flFC.floatingLabelActiveTextColor = [UIColor blueColor];
    flFC.floatingLabelInactiveTextColor = [UIColor grayColor];
    flFC.placeholder = @"FC";
    flFC.font = [UIFont fontWithName:@"Avenir-Medium" size:16];
    flFC.backgroundColor=[UIColor whiteColor];
    flFC.layer.cornerRadius=5;
    flFC.layer.cornerRadius=3;
    flFC.layer.borderColor=[[UIColor grayColor]CGColor];
    flFC.layer.borderWidth= 1.0f;
    [bodyLeft addSubview:flFC];
    
    
    medidasExp =[[UILabel alloc] initWithFrame:CGRectMake(0, 190, 400, 22)];
    medidasExp.text = @"Medidas Antoprométicas";
    medidasExp.textColor = [UIColor grayColor];
    [medidasExp setFont:[UIFont fontWithName:@"Avenir-Medium" size:20]];
    [bodyLeft addSubview:medidasExp];
    
    plecaMedidas = [[UIView alloc] initWithFrame:CGRectMake(0,225, (self.view.frame.size.width/2)-45, 2)];
    UIColor *divMedidas = [[UIColor alloc] initWithPatternImage:[UIImage imageNamed:@"pleca_divisiones"]];
    plecaMedidas.backgroundColor = divMedidas;
    [bodyLeft addSubview:plecaMedidas];
    
    
    //25
    
    flTalla = [[RPFloatingPlaceholderTextField alloc] initWithFrame:CGRectMake(0,250, ((self.view.frame.size.width-100)/4)-5, 50)];
    flTalla.floatingLabelActiveTextColor = [UIColor blueColor];
    flTalla.floatingLabelInactiveTextColor = [UIColor grayColor];
    flTalla.placeholder = @"Talla";
    flTalla.font = [UIFont fontWithName:@"Avenir-Medium" size:16];
    flTalla.backgroundColor=[UIColor whiteColor];
    flTalla.layer.cornerRadius=5;
    flTalla.layer.cornerRadius=3;
    flTalla.layer.borderColor=[[UIColor grayColor]CGColor];
    flTalla.layer.borderWidth= 1.0f;
    [bodyLeft addSubview:flTalla];
    
    flPeso = [[RPFloatingPlaceholderTextField alloc] initWithFrame:CGRectMake(((self.view.frame.size.width-100)/4)+5,250, ((self.view.frame.size.width-100)/4)-5, 50)];
    flPeso.floatingLabelActiveTextColor = [UIColor blueColor];
    flPeso.floatingLabelInactiveTextColor = [UIColor grayColor];
    flPeso.placeholder = @"Peso";
    flPeso.font = [UIFont fontWithName:@"Avenir-Medium" size:16];
    flPeso.backgroundColor=[UIColor whiteColor];
    flPeso.layer.cornerRadius=5;
    flPeso.layer.cornerRadius=3;
    flPeso.layer.borderColor=[[UIColor grayColor]CGColor];
    flPeso.layer.borderWidth= 1.0f;
    [bodyLeft addSubview:flPeso];
    
    
    flCadera = [[RPFloatingPlaceholderTextField alloc] initWithFrame:CGRectMake(0,320, ((self.view.frame.size.width-100)/4)-5, 50)];
    flCadera.floatingLabelActiveTextColor = [UIColor blueColor];
    flCadera.floatingLabelInactiveTextColor = [UIColor grayColor];
    flCadera.placeholder = @"Cadera";
    flCadera.font = [UIFont fontWithName:@"Avenir-Medium" size:16];
    flCadera.backgroundColor=[UIColor whiteColor];
    flCadera.layer.cornerRadius=5;
    flCadera.layer.cornerRadius=3;
    flCadera.layer.borderColor=[[UIColor grayColor]CGColor];
    flCadera.layer.borderWidth= 1.0f;
    [bodyLeft addSubview:flCadera];
    
    flCintura = [[RPFloatingPlaceholderTextField alloc] initWithFrame:CGRectMake(((self.view.frame.size.width-100)/4)+5,320, ((self.view.frame.size.width-100)/4)-5, 50)];
    flCintura.floatingLabelActiveTextColor = [UIColor blueColor];
    flCintura.floatingLabelInactiveTextColor = [UIColor grayColor];
    flCintura.placeholder = @"Cintura";
    flCintura.font = [UIFont fontWithName:@"Avenir-Medium" size:16];
    flCintura.backgroundColor=[UIColor whiteColor];
    flCintura.layer.cornerRadius=5;
    flCintura.layer.cornerRadius=3;
    flCintura.layer.borderColor=[[UIColor grayColor]CGColor];
    flCintura.layer.borderWidth= 1.0f;
    [bodyLeft addSubview:flCintura];
    
    //80->    270+80
    exploracionFis =[[UILabel alloc] initWithFrame:CGRectMake(0, 400, 400, 22)];
    exploracionFis.text = @"Exploracion Física";
    exploracionFis.textColor = [UIColor grayColor];
    [exploracionFis setFont:[UIFont fontWithName:@"Avenir-Medium" size:20]];
    [bodyLeft addSubview:exploracionFis];
    
    plecaExpFisica = [[UIView alloc] initWithFrame:CGRectMake(0,425, (self.view.frame.size.width/2)-45, 2)];
    UIColor *divExploracion = [[UIColor alloc] initWithPatternImage:[UIImage imageNamed:@"pleca_divisiones"]];
    plecaExpFisica.backgroundColor = divExploracion;
    [bodyLeft addSubview:plecaExpFisica];
    
    
    flHabitus = [[RPFloatingPlaceholderTextField alloc] initWithFrame:CGRectMake(0,450, ((self.view.frame.size.width-100)/2)-5, 100)];
    flHabitus.floatingLabelActiveTextColor = [UIColor blueColor];
    flHabitus.floatingLabelInactiveTextColor = [UIColor grayColor];
    flHabitus.placeholder = @"Habitus Exterior";
    flHabitus.font = [UIFont fontWithName:@"Avenir-Medium" size:16];
    flHabitus.backgroundColor=[UIColor whiteColor];
    flHabitus.layer.cornerRadius=5;
    flHabitus.layer.cornerRadius=3;
    flHabitus.layer.borderColor=[[UIColor grayColor]CGColor];
    flHabitus.layer.borderWidth= 1.0f;
    [bodyLeft addSubview:flHabitus];
    
    
    
    
    
    //Body ritgh
    
    bodyrigth = [[UIView alloc]initWithFrame:CGRectMake(((self.view.frame.size.width-100)/2)+50, 220, (self.view.frame.size.width-100)/2, self.view.frame.size.height-100)];
    //bodyLeft.backgroundColor=[UIColor redColor];
    [self.view addSubview:bodyrigth];

    
    colesterorExp =[[UILabel alloc] initWithFrame:CGRectMake(25, 0, (self.view.frame.size.width/2)+50, 22)];
    colesterorExp.text = @"Colesterol y Trigliceridos";
    colesterorExp.textColor = [UIColor grayColor];
    [colesterorExp setFont:[UIFont fontWithName:@"Avenir-Medium" size:20]];
    [bodyrigth addSubview:colesterorExp];
    
    plecaCol = [[UIView alloc] initWithFrame:CGRectMake(25,35, (self.view.frame.size.width/2)-75, 2)];
    UIColor *divColesterol = [[UIColor alloc] initWithPatternImage:[UIImage imageNamed:@"pleca_divisiones"]];
    plecaCol.backgroundColor = divColesterol;
    [bodyrigth addSubview:plecaCol];
    
    
    flTrigliceridos = [[RPFloatingPlaceholderTextField alloc] initWithFrame:CGRectMake(25,60, ((self.view.frame.size.width-100)/4)-5, 50)];
    flTrigliceridos.floatingLabelActiveTextColor = [UIColor blueColor];
    flTrigliceridos.floatingLabelInactiveTextColor = [UIColor grayColor];
    flTrigliceridos.placeholder = @"Trigliceridos";
    flTrigliceridos.font = [UIFont fontWithName:@"Avenir-Medium" size:16];
    flTrigliceridos.backgroundColor=[UIColor whiteColor];
    flTrigliceridos.layer.cornerRadius=5;
    flTrigliceridos.layer.cornerRadius=3;
    flTrigliceridos.layer.borderColor=[[UIColor grayColor]CGColor];
    flTrigliceridos.layer.borderWidth= 1.0f;
    [bodyrigth addSubview:flTrigliceridos];
    
    
    //flColesterol
    
    flColesterol = [[RPFloatingPlaceholderTextField alloc] initWithFrame:CGRectMake(25,130, ((self.view.frame.size.width-100)/4)-5, 50)];
    flColesterol.floatingLabelActiveTextColor = [UIColor blueColor];
    flColesterol.floatingLabelInactiveTextColor = [UIColor grayColor];
    flColesterol.placeholder = @"Colesterol";
    flColesterol.font = [UIFont fontWithName:@"Avenir-Medium" size:16];
    flColesterol.backgroundColor=[UIColor whiteColor];
    flColesterol.layer.cornerRadius=5;
    flColesterol.layer.cornerRadius=3;
    flColesterol.layer.borderColor=[[UIColor grayColor]CGColor];
    flColesterol.layer.borderWidth= 1.0f;
    [bodyrigth addSubview:flColesterol];
    
    
    
    hemoglobinaExp =[[UILabel alloc] initWithFrame:CGRectMake(25, 190, 400, 22)];
    hemoglobinaExp.text = @"Hemoglobina";
    hemoglobinaExp.textColor = [UIColor grayColor];
    [hemoglobinaExp setFont:[UIFont fontWithName:@"Avenir-Medium" size:20]];
    [bodyrigth addSubview:hemoglobinaExp];
    
    plecaHemoglob = [[UIView alloc] initWithFrame:CGRectMake(25,225, (self.view.frame.size.width/2)-75, 2)];
    UIColor *divHemob = [[UIColor alloc] initWithPatternImage:[UIImage imageNamed:@"pleca_divisiones"]];
    plecaHemoglob.backgroundColor = divHemob;
    [bodyrigth addSubview:plecaHemoglob];
    
    
    flAc = [[RPFloatingPlaceholderTextField alloc] initWithFrame:CGRectMake(25,250, ((self.view.frame.size.width-100)/4)-5, 50)];
    flAc.floatingLabelActiveTextColor = [UIColor blueColor];
    flAc.floatingLabelInactiveTextColor = [UIColor grayColor];
    flAc.placeholder = @"A1C";
    flAc.font = [UIFont fontWithName:@"Avenir-Medium" size:16];
    flAc.backgroundColor=[UIColor whiteColor];
    flAc.layer.cornerRadius=5;
    flAc.layer.cornerRadius=3;
    flAc.layer.borderColor=[[UIColor grayColor]CGColor];
    flAc.layer.borderWidth= 1.0f;
    [bodyrigth addSubview:flAc];
    
    //expView
    
    expView = [[UIView alloc] initWithFrame:CGRectMake(0,425, (self.view.frame.size.width/2)-45, 2)];
    UIColor *divExpViewn = [[UIColor alloc] initWithPatternImage:[UIImage imageNamed:@"pleca_divisiones"]];
    expView.backgroundColor = divExpViewn;
    [bodyrigth addSubview:expView];
    
    flGenitales = [[RPFloatingPlaceholderTextField alloc] initWithFrame:CGRectMake(25,450, ((self.view.frame.size.width-100)/2)-15, 100)];
    flGenitales.floatingLabelActiveTextColor = [UIColor blueColor];
    flGenitales.floatingLabelInactiveTextColor = [UIColor grayColor];
    flGenitales.placeholder = @"Habitus Exterior";
    flGenitales.font = [UIFont fontWithName:@"Avenir-Medium" size:16];
    flGenitales.backgroundColor=[UIColor whiteColor];
    flGenitales.layer.cornerRadius=5;
    flGenitales.layer.cornerRadius=3;
    flGenitales.layer.borderColor=[[UIColor grayColor]CGColor];
    flGenitales.layer.borderWidth= 1.0f;
    [bodyrigth addSubview:flGenitales];
    
    
}

//expAntecedentes
-(IBAction)showAntecedentes:(id)sender{
    [self performSegueWithIdentifier:@"expAntecedentes" sender:nil];
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
