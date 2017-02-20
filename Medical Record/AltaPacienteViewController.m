//
//  AltaPacienteViewController.m
//  Medical Record
//
//  Created by vampiro on 17/2/17.
//  Copyright © 2017 meltsan. All rights reserved.
//

#import "AltaPacienteViewController.h"



@interface AltaPacienteViewController ()

@end

@implementation AltaPacienteViewController
UIView * datosAlta, *plecaAgrega;
UIDatePicker *datePicker;
UILabel * textAlta;
RPFloatingPlaceholderTextField *flFechaField;
- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    
    
    datosAlta = [[UIView alloc] initWithFrame:CGRectMake(0,0, self.view.frame.size.width, (self.view.frame.size.height/2)-200)];
    UIColor *logoHeader = [[UIColor alloc] initWithPatternImage:[UIImage imageNamed:@"background"]];
    self.view.backgroundColor=logoHeader;

    [self.view addSubview:datosAlta];
    
    textAlta =[[UILabel alloc] initWithFrame:CGRectMake(50, 80, self.view.frame.size.width, 50)];
    textAlta.text = @"Datos del Paciente";
    textAlta.textColor = [UIColor colorWithRed:0 green:0.478431 blue:1 alpha:1];
    [textAlta setFont:[UIFont fontWithName:@"Avenir-Roman" size:20]];
    [datosAlta addSubview:textAlta];
    
    plecaAgrega = [[UIView alloc] initWithFrame:CGRectMake(0,140, self.view.frame.size.width, 2)];
    UIColor *divHeader = [[UIColor alloc] initWithPatternImage:[UIImage imageNamed:@"pleca_divisiones"]];
    plecaAgrega.backgroundColor = divHeader;
    [self.view addSubview:plecaAgrega];
    
    
    CGRect frame = CGRectMake(50,180, ((self.view.frame.size.width-100)/2)-10, 50);
    RPFloatingPlaceholderTextField *flNombresField = [[RPFloatingPlaceholderTextField alloc] initWithFrame:frame];
    flNombresField.floatingLabelActiveTextColor = [UIColor blueColor];
    flNombresField.floatingLabelInactiveTextColor = [UIColor grayColor];
    flNombresField.placeholder = @"Nombre(s)";
    flNombresField.font = [UIFont fontWithName:@"Avenir-Medium" size:16];
    flNombresField.backgroundColor=[UIColor whiteColor];
    flNombresField.layer.cornerRadius=5;
    [self.view addSubview:flNombresField];
    
    CGRect frameA = CGRectMake(((self.view.frame.size.width-100)/2)+60,180, ((self.view.frame.size.width-100)/2)-10, 50);
    RPFloatingPlaceholderTextField *flApellidoField = [[RPFloatingPlaceholderTextField alloc] initWithFrame:frameA];
    flApellidoField.floatingLabelActiveTextColor = [UIColor blueColor];
    flApellidoField.floatingLabelInactiveTextColor = [UIColor grayColor];
    flApellidoField.placeholder = @"Apellidos";
    flApellidoField.font = [UIFont fontWithName:@"Avenir-Medium" size:16];
    flApellidoField.backgroundColor=[UIColor whiteColor];
    flApellidoField.layer.cornerRadius=5;
    [self.view addSubview:flApellidoField];
    
    CGRect frameC = CGRectMake(50,270, ((self.view.frame.size.width-100)/2)-10, 50);
    RPFloatingPlaceholderTextField *flCurpField = [[RPFloatingPlaceholderTextField alloc] initWithFrame:frameC];
    flCurpField.floatingLabelActiveTextColor = [UIColor blueColor];
    flCurpField.floatingLabelInactiveTextColor = [UIColor grayColor];
    flCurpField.placeholder = @"CURP";
    flCurpField.font = [UIFont fontWithName:@"Avenir-Medium" size:16];
    flCurpField.backgroundColor=[UIColor whiteColor];
    flCurpField.layer.cornerRadius=5;
    [self.view addSubview:flCurpField];
    
    CGRect frameR = CGRectMake(((self.view.frame.size.width-100)/2)+60,270, ((self.view.frame.size.width-100)/2)-10, 50);
    RPFloatingPlaceholderTextField *flRFCField = [[RPFloatingPlaceholderTextField alloc] initWithFrame:frameR];
    flRFCField.floatingLabelActiveTextColor = [UIColor blueColor];
    flRFCField.floatingLabelInactiveTextColor = [UIColor grayColor];
    flRFCField.placeholder = @"RFC";
    flRFCField.font = [UIFont fontWithName:@"Avenir-Medium" size:16];
    flRFCField.backgroundColor=[UIColor whiteColor];
    flRFCField.layer.cornerRadius=5;
    [self.view addSubview:flRFCField];
    
    
    CGRect frameF = CGRectMake(50,360, ((self.view.frame.size.width-100)/2)-10, 50);
    flFechaField = [[RPFloatingPlaceholderTextField alloc] initWithFrame:frameF];
    flFechaField.floatingLabelActiveTextColor = [UIColor blueColor];
    flFechaField.floatingLabelInactiveTextColor = [UIColor grayColor];
    flFechaField.placeholder = @"Fecha de Nacimiento";
    
    flFechaField.font = [UIFont fontWithName:@"Avenir-Medium" size:16];
    flFechaField.backgroundColor=[UIColor whiteColor];
    flFechaField.layer.cornerRadius=5;
    [self.view addSubview:flFechaField];
        
    flFechaField.delegate=self;
    flFechaField.tag=111;
    
}


-(BOOL)textFieldShouldBeginEditing:(UITextField *)textField
{
    if(textField.tag==111)
    {
        [self showDatePicker];
    }
    return YES;
}

-(void)showDatePicker
{
    
    datePicker = [[UIDatePicker alloc] init];
    
    datePicker.backgroundColor=[UIColor whiteColor];
    
    UIToolbar *toolBar=[[UIToolbar alloc]init];
    
    [toolBar sizeToFit];
    
    UIBarButtonItem *doneBtn=[[UIBarButtonItem alloc]initWithTitle:@"Done" style:UIBarButtonItemStyleDone target:self action:@selector(btnCloseAction:)];
    
    //[doneBtn addTarget:self action:@selector(yourRefreshMethod:) forControlEvents:UIControlEventValueChanged];

    
    doneBtn.tintColor=[UIColor whiteColor];
    
    UIBarButtonItem *flexibleSpaceLeft = [[UIBarButtonItem alloc] initWithBarButtonSystemItem:UIBarButtonSystemItemFlexibleSpace
                                                                                       target:nil action:nil];
    
    toolBar.backgroundColor=[UIColor colorWithRed:5.0/255.0 green:110.0/255.0 blue:170.0/255.0 alpha:1];
    
    [toolBar setItems:[NSArray arrayWithObjects:flexibleSpaceLeft,doneBtn ,nil]];  
    
    [flFechaField setInputAccessoryView:toolBar];
    
    flFechaField.inputView=datePicker;
    
}
-(IBAction)btnCloseAction:(id)sender{
    NSLog(@"Select Date");
    NSDateFormatter* dateFormatter = [[NSDateFormatter alloc] init];
    [dateFormatter setTimeZone:[NSTimeZone timeZoneWithAbbreviation:@"UTC"]];
    [dateFormatter setDateFormat:@"yyyy-MM-dd'T'HH:mm:ss'Z'"];
    
    NSDate* newTime = [dateFormatter dateFromString:@"2011-10-20T01:10:50Z"];
    NSLog(@"original time: %@", newTime);
    
    //Add the following line to display the time in the local time zone
    [dateFormatter setTimeZone:[NSTimeZone systemTimeZone]];
    [dateFormatter setDateFormat:@"M/d/yy 'at' h:mma"];
    NSString* finalTime = [dateFormatter stringFromDate:newTime];
    NSLog(@"%@", finalTime);    

    flFechaField.text= [NSString stringWithFormat:@"%@", finalTime];
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
