//
//  ViewController.m
//  Medical Record
//
//  Created by vampiro on 8/2/17.
//  Copyright © 2017 meltsan. All rights reserved.
//

#import "LoginViewController.h"
#import "SWRevealViewController.h"

@interface LoginViewController ()

@end

@implementation LoginViewController

@synthesize usernameField, passwordField;
UIView * backgroundLogin, *dataLogin, *registroView, *logoView, *footerView, *backgroundLogin;
UIButton * forgotLabel, *btnLogin, *btnRegistro, *btnEscanear;
UITextField *nameField;
UILabel * textRegistro, *cuentaLabel,*textRegistroBenef, *textEslogan, *textEsloganInferior, *textFooter;

- (void)viewDidLoad {
    [super viewDidLoad];
    
    backgroundLogin = [[UIView alloc] initWithFrame:CGRectMake(0,0, self.view.frame.size.width, (self.view.frame.size.height/2)+30)];
    UIColor *logoHeader = [[UIColor alloc] initWithPatternImage:[UIImage imageNamed:@"header_one"]];
    backgroundLogin.backgroundColor= logoHeader;
    [self.view addSubview:backgroundLogin];
    
    logoView = [[UIView alloc] initWithFrame:CGRectMake((self.view.frame.size.height/2)-112, 100, 450, 151)];
    UIColor *logoLogin = [[UIColor alloc] initWithPatternImage:[UIImage imageNamed:@"LoginIcon"]];
    logoView.backgroundColor= logoLogin;
    [backgroundLogin addSubview:logoView];
    

    textEslogan =[[UILabel alloc] initWithFrame:CGRectMake((self.view.frame.size.width/2)-220, (self.view.frame.size.height/2)-65, 440, 20)];
    textEslogan.text = @"La información de tu expediente clínico";
    textEslogan.textColor = [UIColor colorWithRed:255.0/255.0 green:255.0/255.0 blue:255.0/255.0 alpha:1];
    [textEslogan setFont:[UIFont fontWithName:@"Georgia-Italic" size:25]];
    [backgroundLogin addSubview:textEslogan];
    
    textEsloganInferior =[[UILabel alloc] initWithFrame:CGRectMake((self.view.frame.size.width/2)-190, (self.view.frame.size.height/2)-25, 380, 25)];
    textEsloganInferior.text = @"disponible en cualquier momento";
    textEsloganInferior.textColor = [UIColor colorWithRed:255.0/255.0 green:255.0/255.0 blue:255.0/255.0 alpha:1];
    [textEsloganInferior setFont:[UIFont fontWithName:@"Georgia-Italic" size:25]];
    [backgroundLogin addSubview:textEsloganInferior];
    
    backgroundLogin = [[UIView alloc] initWithFrame:CGRectMake(0, (self.view.frame.size.height/2)+30, self.view.frame.size.width, (self.view.frame.size.height/2))];
    backgroundLogin.backgroundColor = [[UIColor alloc] initWithPatternImage:[UIImage imageNamed:@"background"]];
    [self.view addSubview:backgroundLogin];
    
    
    registroView = [[UIView alloc] initWithFrame:CGRectMake(0, 0, 450, 250)];
    [backgroundLogin addSubview:registroView];
    
    textRegistro =[[UILabel alloc] initWithFrame:CGRectMake(40, 120, 370, 20)];
    textRegistro.text = @"¿Aún no tienes una cuenta?";
    textRegistro.textColor = [UIColor colorWithRed:56.0/255.0 green:125.0/255.0 blue:184.0/255.0 alpha:1];
    [textRegistro setFont:[UIFont fontWithName:@"Avenir-Medium" size:17]];
    [registroView addSubview:textRegistro];
    
    
    textRegistroBenef =[[UILabel alloc] initWithFrame:CGRectMake(40, 150, 370, 20)];
    textRegistroBenef.text = @"Regístrate Ahora y obten los beneficios";
    textRegistroBenef.textColor = [UIColor colorWithRed:56.0/255.0 green:125.0/255.0 blue:184.0/255.0 alpha:1];
    [textRegistroBenef setFont:[UIFont fontWithName:@"Avenir-Medium " size:17]];
    [registroView addSubview:textRegistroBenef];
    
    btnRegistro = [UIButton buttonWithType:UIButtonTypeCustom];
    btnRegistro.frame = CGRectMake(40, 190, 370, 40);
    [btnRegistro setBackgroundColor:[UIColor colorWithRed:80.0/255.0 green:143.0/255.0 blue:247.0/255.0 alpha:1.0]];
    [btnRegistro setTitle:@"Registrarse" forState:UIControlStateNormal];
    [btnRegistro addTarget:self action:@selector(registroAction:) forControlEvents:UIControlEventTouchUpInside];
    [registroView addSubview:btnRegistro];
    

    //Datos del login
    dataLogin = [[UIView alloc] initWithFrame:CGRectMake((self.view.frame.size.width/2), 0, (self.view.frame.size.width/2), 350)];
    [backgroundLogin addSubview:dataLogin];
    usernameField = [[UITextField alloc] initWithFrame: CGRectMake(40, 60, (self.view.frame.size.width/2)-80, 40)];
    usernameField.backgroundColor=[UIColor colorWithRed:255.0/255.0 green:255.0/255.0 blue:255.0/255.0 alpha:0.3];
    usernameField.backgroundColor=[UIColor whiteColor];
    usernameField.layer.cornerRadius=3;
    usernameField.layer.borderColor=[[UIColor grayColor]CGColor];
    usernameField.layer.borderWidth= 1.0f;
    [usernameField setBorderStyle:UITextBorderStyleNone];
    usernameField.textColor = [UIColor grayColor];
    [usernameField setFont:[UIFont systemFontOfSize:15]];
    usernameField.attributedPlaceholder = [[NSAttributedString alloc] initWithString:@"   Username" attributes:@{NSForegroundColorAttributeName: [UIColor grayColor]}];
    [dataLogin addSubview:usernameField];
    
    
    passwordField = [[UITextField alloc] initWithFrame: CGRectMake(40, 125, (self.view.frame.size.width/2)-80, 40)];
    passwordField.backgroundColor=[UIColor whiteColor];
    passwordField.layer.cornerRadius=3;
    passwordField.layer.borderColor=[[UIColor grayColor]CGColor];
    passwordField.layer.borderWidth= 1.0f;
    passwordField.placeholder =@"Password";
    passwordField.textColor = [UIColor whiteColor];
    passwordField.secureTextEntry = YES;
    passwordField.returnKeyType = UIReturnKeyGo;
    [passwordField setFont:[UIFont systemFontOfSize:15]];
    passwordField.attributedPlaceholder = [[NSAttributedString alloc] initWithString:@"   Password" attributes:@{NSForegroundColorAttributeName: [UIColor grayColor]}];
    [dataLogin addSubview:passwordField];
    
    
    btnLogin = [UIButton buttonWithType:UIButtonTypeCustom];
    btnLogin.frame = CGRectMake(40, 190, (self.view.frame.size.width/2)-80, 40);
    [btnLogin setBackgroundColor:[UIColor colorWithRed:80.0/255.0 green:143.0/255.0 blue:247.0/255.0 alpha:1.0]];
    [btnLogin setTitle:@"Entrar" forState:UIControlStateNormal];
    [btnLogin addTarget:self action:@selector(logeoAction:) forControlEvents:UIControlEventTouchUpInside];
    [dataLogin addSubview:btnLogin];
    
    
     forgotLabel = [UIButton buttonWithType:UIButtonTypeCustom];
     forgotLabel.frame = CGRectMake(30, 250, 180, 10);
     [forgotLabel setTitleColor:[UIColor  colorWithRed:255.0/255.0 green:82.0/255.0 blue:7.0/255.0 alpha:1] forState:UIControlStateNormal];
     [forgotLabel setTitle:@"Olvidaste tu Password" forState:UIControlStateNormal];
     forgotLabel.titleLabel.font = [UIFont fontWithName:@"Avenir-Medium" size:16];
     [dataLogin addSubview:forgotLabel];
    /*Fin Datos Login*/
    

    //Footer
    footerView = [[UIView alloc] initWithFrame:CGRectMake(0, 720, self.view.frame.size.width, 100)];
    footerView.backgroundColor = [[UIColor alloc] initWithPatternImage:[UIImage imageNamed:@"footer"]];
    [self.view addSubview:footerView];
    
    textFooter =[[UILabel alloc] initWithFrame:CGRectMake(50, 15, 200, 20)];
    textFooter.text = @"Copyright Medical Record, 2017";
    textFooter.textColor = [UIColor whiteColor];
    [textFooter setFont:[UIFont fontWithName:@"Baskerville" size:15]];
    [footerView addSubview:textFooter];
    
    usernameField.delegate = self;
    passwordField.delegate = self;
}

-(IBAction)logeoAction:(id)sender{
    LoginViewController *secondViewController =
    [self.storyboard instantiateViewControllerWithIdentifier:@"SWRevealViewController"];
    [self presentViewController:secondViewController animated:YES completion:NULL];

}


-(IBAction)registroAction:(id)sender{
    [self performSegueWithIdentifier:@"registro" sender:nil];
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
   
    

}

@end
