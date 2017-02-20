//
//  RegistroViewController.m
//  Medical Record
//
//  Created by vampiro on 17/2/17.
//  Copyright © 2017 meltsan. All rights reserved.
//

#import "RegistroViewController.h"
#import "RPFloatingPlaceholderTextField.h"


@interface RegistroViewController ()

@end

@implementation RegistroViewController

UIView *headerRegistro, *bodyRegistro, *footerRegistroView;
UIButton *btnClose;
UILabel *tittle, *textFooterRegistro;
UIScrollView *bodyScroll;
RPFloatingPlaceholderTextField *flCedula, *flusername, *flNombre, *flPaterno, *flMaterno, *flRfc, *flCurp, *flFnacimiento, *flNacionalidad, *flSexo;
int coordYBody, coordXBody, marginCell, widthBody, sizeCeldas, sepCell;


- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    widthBody = self.view.frame.size.width-100;
    sepCell=10;
    sizeCeldas = (widthBody/3)-10;
    headerRegistro = [[UIView alloc] initWithFrame:CGRectMake(0,0, self.view.frame.size.width, (self.view.frame.size.height/4)-100)];
    UIColor *logoHeader = [[UIColor alloc] initWithPatternImage:[UIImage imageNamed:@"header_one"]];
    headerRegistro.backgroundColor= logoHeader;
    [self.view addSubview:headerRegistro];
    
    
    btnClose = [UIButton buttonWithType:UIButtonTypeCustom];
    btnClose.frame = CGRectMake(10, 20,30, 30);
    btnClose.titleLabel.font = [UIFont fontWithName:@"Helvetica-Bold" size:20];
    [btnClose setBackgroundImage:[UIImage imageNamed:@"close"] forState:UIControlStateNormal];
    [btnClose addTarget:self action:@selector(btnCloseAction:) forControlEvents:UIControlEventTouchUpInside];
    [headerRegistro addSubview:btnClose];
    
    tittle = [[UILabel alloc] initWithFrame:CGRectMake((self.view.frame.size.width/2), (self.view.frame.size.height/4)+150, 300, 100)];
    tittle.text=@"Crear una nueva cuenta";
    [self.view addSubview:tittle];
    
    bodyScroll = [[UIScrollView alloc] initWithFrame:CGRectMake(0, (self.view.frame.size.height/4), self.view.frame.size.width, self.view.frame.size.height-150)];
    bodyScroll.contentSize = CGSizeMake((self.view.frame.size.height/4)-100, (self.view.frame.size.height-150)+300);
    bodyScroll.backgroundColor = [[UIColor alloc] initWithPatternImage:[UIImage imageNamed:@"background"]];
    bodyScroll.showsVerticalScrollIndicator = YES;
    bodyScroll.showsHorizontalScrollIndicator = NO;
    bodyScroll.scrollEnabled = YES;
    [self.view addSubview: bodyScroll];
    
    bodyRegistro =[[UIView alloc] initWithFrame:CGRectMake(0, (self.view.frame.size.height/4)-100, self.view.frame.size.width, self.view.frame.size.height-150)];
    bodyRegistro.backgroundColor = [[UIColor alloc] initWithPatternImage:[UIImage imageNamed:@"background"]];
    [bodyScroll addSubview:bodyRegistro];
    
    coordYBody = 50;
    marginCell=50;
    flCedula = [[RPFloatingPlaceholderTextField alloc] initWithFrame:CGRectMake(50,coordYBody, ((self.view.frame.size.width-100)/2)-10, marginCell)];
    flCedula.floatingLabelActiveTextColor = [UIColor blueColor];
    flCedula.floatingLabelInactiveTextColor = [UIColor grayColor];
    flCedula.placeholder = @"Cédula Profecional(s)";
    flCedula.font = [UIFont fontWithName:@"Avenir-Medium" size:16];
    flCedula.backgroundColor=[UIColor whiteColor];
    flCedula.layer.cornerRadius=5;
    [bodyScroll addSubview:flCedula];
    
    
    flusername = [[RPFloatingPlaceholderTextField alloc] initWithFrame:CGRectMake(((self.view.frame.size.width-100)/2)+60,coordYBody, ((self.view.frame.size.width-100)/2)-10, marginCell)];
    flusername.floatingLabelActiveTextColor = [UIColor blueColor];
    flusername.floatingLabelInactiveTextColor = [UIColor grayColor];
    flusername.placeholder = @"Username";
    flusername.font = [UIFont fontWithName:@"Avenir-Medium" size:16];
    flusername.backgroundColor=[UIColor whiteColor];
    flusername.layer.cornerRadius=5;
    [bodyScroll addSubview:flusername];

    coordYBody+=80;
    coordXBody =50;
    flNombre = [[RPFloatingPlaceholderTextField alloc] initWithFrame:CGRectMake(coordXBody,coordYBody, sizeCeldas, marginCell)];
    flNombre.floatingLabelActiveTextColor = [UIColor blueColor];
    flNombre.floatingLabelInactiveTextColor = [UIColor grayColor];
    flNombre.placeholder = @"Nombre(s)";
    flNombre.font = [UIFont fontWithName:@"Avenir-Medium" size:16];
    flNombre.backgroundColor=[UIColor whiteColor];
    flNombre.layer.cornerRadius=5;
    [bodyScroll addSubview:flNombre];
    
    coordXBody=coordXBody+sizeCeldas+sepCell;
    
    flPaterno = [[RPFloatingPlaceholderTextField alloc] initWithFrame:CGRectMake(coordXBody,coordYBody, sizeCeldas, marginCell)];
    flPaterno.floatingLabelActiveTextColor = [UIColor blueColor];
    flPaterno.floatingLabelInactiveTextColor = [UIColor grayColor];
    flPaterno.placeholder = @"Apellido Paterno";
    flPaterno.font = [UIFont fontWithName:@"Avenir-Medium" size:16];
    flPaterno.backgroundColor=[UIColor whiteColor];
    flPaterno.layer.cornerRadius=5;
    [bodyScroll addSubview:flPaterno];

    coordXBody=coordXBody+sizeCeldas+sepCell;
    flMaterno = [[RPFloatingPlaceholderTextField alloc] initWithFrame:CGRectMake(coordXBody,coordYBody, sizeCeldas, marginCell)];
    flMaterno.floatingLabelActiveTextColor = [UIColor blueColor];
    flMaterno.floatingLabelInactiveTextColor = [UIColor grayColor];
    flMaterno.placeholder = @"Apellido Materno";
    flMaterno.font = [UIFont fontWithName:@"Avenir-Medium" size:16];
    flMaterno.backgroundColor=[UIColor whiteColor];
    flMaterno.layer.cornerRadius=5;
    [bodyScroll addSubview:flMaterno];
    
    coordYBody+=80;
    coordXBody =50;
    flRfc = [[RPFloatingPlaceholderTextField alloc] initWithFrame:CGRectMake(coordXBody,coordYBody, sizeCeldas, marginCell)];
    flRfc.floatingLabelActiveTextColor = [UIColor blueColor];
    flRfc.floatingLabelInactiveTextColor = [UIColor grayColor];
    flRfc.placeholder = @"RFC";
    flRfc.font = [UIFont fontWithName:@"Avenir-Medium" size:16];
    flRfc.backgroundColor=[UIColor whiteColor];
    flRfc.layer.cornerRadius=5;
    [bodyScroll addSubview:flRfc];
    
    coordXBody=coordXBody+sizeCeldas+sepCell;
    flCurp = [[RPFloatingPlaceholderTextField alloc] initWithFrame:CGRectMake(coordXBody,coordYBody, sizeCeldas, marginCell)];
    flCurp.floatingLabelActiveTextColor = [UIColor blueColor];
    flCurp.floatingLabelInactiveTextColor = [UIColor grayColor];
    flCurp.placeholder = @"CURP";
    flCurp.font = [UIFont fontWithName:@"Avenir-Medium" size:16];
    flCurp.backgroundColor=[UIColor whiteColor];
    flCurp.layer.cornerRadius=5;
    [bodyScroll addSubview:flCurp];
    
    coordXBody=coordXBody+sizeCeldas+sepCell;
    flFnacimiento = [[RPFloatingPlaceholderTextField alloc] initWithFrame:CGRectMake(coordXBody,coordYBody, sizeCeldas, marginCell)];
    flFnacimiento.floatingLabelActiveTextColor = [UIColor blueColor];
    flFnacimiento.floatingLabelInactiveTextColor = [UIColor grayColor];
    flFnacimiento.placeholder = @"Fecha de Nacimiento";
    flFnacimiento.font = [UIFont fontWithName:@"Avenir-Medium" size:16];
    flFnacimiento.backgroundColor=[UIColor whiteColor];
    flFnacimiento.layer.cornerRadius=5;
    [bodyScroll addSubview:flFnacimiento];
    
    coordYBody+=80;
    coordXBody =50;
    flNacionalidad = [[RPFloatingPlaceholderTextField alloc] initWithFrame:CGRectMake(coordXBody,coordYBody, sizeCeldas, marginCell)];
    flNacionalidad.floatingLabelActiveTextColor = [UIColor blueColor];
    flNacionalidad.floatingLabelInactiveTextColor = [UIColor grayColor];
    flNacionalidad.placeholder = @"Nacionalidad";
    flNacionalidad.font = [UIFont fontWithName:@"Avenir-Medium" size:16];
    flNacionalidad.backgroundColor=[UIColor whiteColor];
    flNacionalidad.layer.cornerRadius=5;
    [bodyScroll addSubview:flNacionalidad];
    
    coordXBody=coordXBody+sizeCeldas+sepCell;
    flSexo = [[RPFloatingPlaceholderTextField alloc] initWithFrame:CGRectMake(coordXBody,coordYBody, sizeCeldas, marginCell)];
    flSexo.floatingLabelActiveTextColor = [UIColor blueColor];
    flSexo.floatingLabelInactiveTextColor = [UIColor grayColor];
    flSexo.placeholder = @"Sexo";
    flSexo.font = [UIFont fontWithName:@"Avenir-Medium" size:16];
    flSexo.backgroundColor=[UIColor whiteColor];
    flSexo.layer.cornerRadius=5;
    [bodyScroll addSubview:flSexo];
    
    //Footer
    footerRegistroView = [[UIView alloc] initWithFrame:CGRectMake(0, ((self.view.frame.size.height/4)-100)+(self.view.frame.size.height-150), self.view.frame.size.width, 100)];
    footerRegistroView.backgroundColor = [[UIColor alloc] initWithPatternImage:[UIImage imageNamed:@"footer"]];
    [self.view addSubview:footerRegistroView];
    
    textFooterRegistro =[[UILabel alloc] initWithFrame:CGRectMake(50, 20, 200, 20)];
    textFooterRegistro.text = @"Copyright Medical Record, 2017";
    textFooterRegistro.textColor = [UIColor whiteColor];
    [textFooterRegistro setFont:[UIFont fontWithName:@"Baskerville" size:15]];
    [footerRegistroView addSubview:textFooterRegistro];
    
}


-(IBAction)btnCloseAction:(id)sender{
    [self performSegueWithIdentifier:@"login" sender:nil];
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
