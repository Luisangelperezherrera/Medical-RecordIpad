//
//  MapViewController.m
//  RevealControllerStoryboardExample
//
//  Created by Nick Hodapp on 1/9/13.
//  Copyright (c) 2013 CoDeveloper. All rights reserved.
//

#import "BuscarViewController.h"
#import "SWRevealViewController.h"
#import "ColorViewController.h"
#import "RPFloatingPlaceholderTextField.h"
#import "SimpleTableCell.h"
#import "DatosGeneralesViewController.h"
#import "CrearConsultaViewController.h"
#import "AgendarViewController.h"
@interface BuscarViewController ()
{
    NSArray *tableData;
    NSArray *thumbnails;
    NSArray *prepTime;
}
@property (nonatomic) IBOutlet UIBarButtonItem* revealButtonItem;
@end


UITabBarController * tabBarController;
@implementation BuscarViewController

UIView * datosBusquedaBackground, *plecaHeader, *plecaBuscar, *headerTabla;
@synthesize curpField;
UILabel * textBuscar, *textNombre, *textNumRegistro, *textCurp, *textRFC;
int posicionCurp, posicionRfc, posicionNombre, posicionApellido;
UIButton * btnBuscar, *getToken, *datGralesBtn, *histClinicaBtn, *consultaBtn, *agendaConsulta,*btnCierraModal;
UIView *modal;
- (void)viewDidLoad
{
    [super viewDidLoad];
    [self customSetup];
    
//    self.content = @[ @"Monday", @"Tuesday", @"Wednesday",@"Thursday",@"Friday",@"Saturday",@"Sunday",@"Thursday",@"Friday",@"Saturday",@"Sunday"];
    
    posicionCurp=0;
    posicionRfc=0;
    posicionNombre=0;
    posicionApellido=0;
    
   // [self.navigationItem setTitle:@"Pacientes"];

    UIColor *logoHeader = [[UIColor alloc] initWithPatternImage:[UIImage imageNamed:@"background"]];
    self.view.backgroundColor=logoHeader;
    
    datosBusquedaBackground = [[UIView alloc] initWithFrame:CGRectMake(0,0, self.view.frame.size.width, (self.view.frame.size.height/2)-200)];
    [self.view addSubview:datosBusquedaBackground];
    
    textBuscar =[[UILabel alloc] initWithFrame:CGRectMake(50, 80, self.view.frame.size.width, 50)];
    textBuscar.text = @"Datos Generales";
    textBuscar.textColor = [UIColor colorWithRed:0 green:0.478431 blue:1 alpha:1];
    [textBuscar setFont:[UIFont fontWithName:@"Avenir-Roman" size:25]];
    [datosBusquedaBackground addSubview:textBuscar];
    
    btnBuscar = [UIButton buttonWithType:UIButtonTypeCustom];
    btnBuscar.frame = CGRectMake((self.view.frame.size.width-250), 80, 200, 40);
    [btnBuscar setBackgroundColor:[UIColor colorWithRed:80.0/255.0 green:143.0/255.0 blue:247.0/255.0 alpha:1.0]];
    [btnBuscar setTitle:@"Buscar" forState:UIControlStateNormal];
    [btnBuscar addTarget:self action:@selector(buscarDatos:) forControlEvents:UIControlEventTouchUpInside];
    [datosBusquedaBackground addSubview:btnBuscar];
    

    plecaHeader = [[UIView alloc] initWithFrame:CGRectMake(50,140, self.view.frame.size.width, 2)];
    UIColor *divHeader = [[UIColor alloc] initWithPatternImage:[UIImage imageNamed:@"pleca_divisiones"]];
    plecaHeader.backgroundColor = divHeader;
    [self.view addSubview:plecaHeader];
    
    
    posicionCurp =50;
    CGRect frame = CGRectMake(posicionCurp,160, ((self.view.frame.size.width-100)/4)-10, 40);
    RPFloatingPlaceholderTextField *flTextField = [[RPFloatingPlaceholderTextField alloc] initWithFrame:frame];
    flTextField.floatingLabelActiveTextColor = [UIColor blueColor];
    flTextField.floatingLabelInactiveTextColor = [UIColor grayColor];
    flTextField.placeholder = @"CURP";
    flTextField.font = [UIFont fontWithName:@"Avenir-Medium" size:16];
    flTextField.backgroundColor=[UIColor whiteColor];
    [datosBusquedaBackground addSubview:flTextField];
    
    
    posicionRfc = ((self.view.frame.size.width-100)/4)+10+posicionCurp;
    RPFloatingPlaceholderTextField *rfcField = [[RPFloatingPlaceholderTextField alloc] initWithFrame:CGRectMake(posicionRfc,160, ((self.view.frame.size.width-100)/4)-10, 40)];
    rfcField.floatingLabelActiveTextColor = [UIColor blueColor];
    rfcField.floatingLabelInactiveTextColor = [UIColor grayColor];
    rfcField.placeholder = @"RFC";
    rfcField.font = [UIFont fontWithName:@"Avenir-Medium" size:16];
    rfcField.backgroundColor=[UIColor whiteColor];
    //rfcField.animationDirection = RPFloatingPlaceholderAnimateDownward; // You can change animation direction
    [datosBusquedaBackground addSubview:rfcField];
    
    
    posicionNombre =(((self.view.frame.size.width-100)/4))*2+20+posicionCurp;
    RPFloatingPlaceholderTextField *nombreField = [[RPFloatingPlaceholderTextField alloc] initWithFrame:CGRectMake(posicionNombre,160, ((self.view.frame.size.width-100)/4)-10, 40)];
    nombreField.floatingLabelActiveTextColor = [UIColor blueColor];
    nombreField.floatingLabelInactiveTextColor = [UIColor grayColor];
    nombreField.placeholder = @"Nombre Paciente";
    nombreField.font = [UIFont fontWithName:@"Avenir-Medium" size:16];
    nombreField.backgroundColor=[UIColor whiteColor];
    //nombreField.animationDirection = RPFloatingPlaceholderAnimateDownward; // You can change animation direction
    [datosBusquedaBackground addSubview:nombreField];
    
    posicionApellido = (((self.view.frame.size.width-100)/4))*3+30+posicionCurp;
    RPFloatingPlaceholderTextField *apellidosField = [[RPFloatingPlaceholderTextField alloc] initWithFrame:CGRectMake(posicionApellido,160, ((self.view.frame.size.width-100)/4)-30, 40)];
    apellidosField.floatingLabelActiveTextColor = [UIColor blueColor];
    apellidosField.floatingLabelInactiveTextColor = [UIColor grayColor];
    apellidosField.placeholder = @"Apellidos Paciente";
    apellidosField.font = [UIFont fontWithName:@"Avenir-Medium" size:17];
    apellidosField.backgroundColor=[UIColor whiteColor];
    //nombreField.animationDirection = RPFloatingPlaceholderAnimateDownward; // You can change animation direction
    [datosBusquedaBackground addSubview:apellidosField];
    
    plecaBuscar = [[UIView alloc] initWithFrame:CGRectMake(50,220, self.view.frame.size.width, 2)];
    plecaBuscar.backgroundColor = divHeader;
    [self.view addSubview:plecaBuscar];
    
    headerTabla = [[UIView alloc] initWithFrame:CGRectMake(posicionCurp,240, self.view.frame.size.width-100, (self.view.frame.size.height/4)-140)];
    headerTabla.backgroundColor=[[UIColor alloc] initWithPatternImage:[UIImage imageNamed:@"footer"]];
    [self.view addSubview:headerTabla];
    
    
    textNumRegistro =[[UILabel alloc] initWithFrame:CGRectMake(10,5, ((self.view.frame.size.width-100)/4), 50)];
    //textNumRegistro.backgroundColor = [UIColor redColor];
    textNumRegistro.text = @"NÚMERO DE REGISTRO";
    textNumRegistro.textColor = [UIColor whiteColor];
    [textNumRegistro setFont:[UIFont fontWithName:@"Avenir-Roman" size:17]];
    [headerTabla addSubview:textNumRegistro];
    
    //self.table.tableHeaderView  = textNumRegistro;
    
    
    textNombre =[[UILabel alloc] initWithFrame:CGRectMake(((self.view.frame.size.width-100)/4), 5, (self.view.frame.size.width/4), 50)];
    textNombre.text = @"NOMBRE(s)";
    //textNombre.backgroundColor = [UIColor yellowColor];
    textNombre.textColor = [UIColor whiteColor];
    [textNombre setFont:[UIFont fontWithName:@"Avenir-Roman" size:17]];
    [headerTabla addSubview:textNombre];
    
    
    textCurp =[[UILabel alloc] initWithFrame:CGRectMake(((self.view.frame.size.width-100)/4)*2, 5, (self.view.frame.size.width/4), 50)];
    textCurp.text = @"CURP";
    //textCurp.backgroundColor = [UIColor yellowColor];
    textCurp.textColor = [UIColor whiteColor];
    [textCurp setFont:[UIFont fontWithName:@"Avenir-Roman" size:17]];
    [headerTabla addSubview:textCurp];
    
    textRFC =[[UILabel alloc] initWithFrame:CGRectMake(((self.view.frame.size.width-100)/4)*3, 5, (self.view.frame.size.width/4), 50)];
    textRFC.text = @"RFC";
    //textRFC.backgroundColor = [UIColor yellowColor];
    textRFC.textColor = [UIColor whiteColor];
    [textRFC setFont:[UIFont fontWithName:@"Avenir-Roman" size:17]];
    [headerTabla addSubview:textRFC];
    
    
    
    tableData = [NSArray arrayWithObjects:@"Egg Benedict", @"Mushroom Risotto", @"Full Breakfast", @"Hamburger", @"Ham and Egg Sandwich", @"Creme Brelee", @"White Chocolate Donut", @"Starbucks Coffee", @"Vegetable Curry", @"Instant Noodle with Egg", @"Noodle with BBQ Pork", @"Japanese Noodle with Pork", @"Green Tea", @"Thai Shrimp Cake", @"Angry Birds Cake", @"Ham and Cheese Panini", nil];
    
    // Initialize thumbnails
    thumbnails = [NSArray arrayWithObjects:@"egg_benedict.jpg", @"mushroom_risotto.jpg", @"full_breakfast.jpg", @"hamburger.jpg", @"ham_and_egg_sandwich.jpg", @"creme_brelee.jpg", @"white_chocolate_donut.jpg", @"starbucks_coffee.jpg", @"vegetable_curry.jpg", @"instant_noodle_with_egg.jpg", @"noodle_with_bbq_pork.jpg", @"japanese_noodle_with_pork.jpg", @"green_tea.jpg", @"thai_shrimp_cake.jpg", @"angry_birds_cake.jpg", @"ham_and_cheese_panini.jpg", nil];
    
    // Initialize Preparation Time
    prepTime = [NSArray arrayWithObjects:@"30 min", @"30 min", @"20 min", @"30 min", @"10 min", @"1 hour", @"45 min", @"5 min", @"30 min", @"8 min", @"20 min", @"20 min", @"5 min", @"1.5 hour", @"4 hours", @"10 min", nil];
    
    // Find out the path of recipes.plist
    NSString *path = [[NSBundle mainBundle] pathForResource:@"recipes" ofType:@"plist"];
    
    // Load the file content and read the data into arrays
    NSDictionary *dict = [[NSDictionary alloc] initWithContentsOfFile:path];
    tableData = [dict objectForKey:@"RecipeName"];
    thumbnails = [dict objectForKey:@"Thumbnail"];
    prepTime = [dict objectForKey:@"PrepTime"];
    
    flTextField.delegate = self;
    rfcField.delegate = self;
    nombreField.delegate = self;
    apellidosField.delegate=self;
    
}

- (void)customSetup
{
    SWRevealViewController *revealViewController = self.revealViewController;
    if ( revealViewController )
    {
        [self.revealButtonItem setTarget: self.revealViewController];
        [self.revealButtonItem setAction: @selector( revealToggle: )];
        [self.navigationController.navigationBar addGestureRecognizer: self.revealViewController.panGestureRecognizer];
    }
}

-(void)cofigureTableview
{
    
//    self.table = [[UITableView alloc] initWithFrame:self.view.bounds style:UITableViewStylePlain];
    self.table = [[UITableView alloc] initWithFrame:CGRectMake(50,(self.view.frame.size.height/4)+100, self.view.frame.size.width-100, (self.view.frame.size.height-((self.view.frame.size.height/4)+100)-50)) style:UITableViewStylePlain];
    self.table.delegate = self;
    self.table.dataSource = self;
    [self.view addSubview:self.table];
    
}

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {
    return 1;
}
- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    return _content.count;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    static NSString *simpleTableIdentifier = @"SimpleTableCell";

    
    self.automaticallyAdjustsScrollViewInsets = NO;

    SimpleTableCell *cell = (SimpleTableCell *)[tableView dequeueReusableCellWithIdentifier:simpleTableIdentifier];
    if (cell == nil)
    {
        NSArray *nib = [[NSBundle mainBundle] loadNibNamed:@"SimpleTableCell" owner:self options:nil];
        cell = [nib objectAtIndex:0];
    }
    
    cell.nameLabel.text = [tableData objectAtIndex:indexPath.row];
    cell.thumbnailImageView.image = [UIImage imageNamed:[thumbnails objectAtIndex:indexPath.row]];
    cell.prepTimeLabel.text = [prepTime objectAtIndex:indexPath.row];
    
    cell.preservesSuperviewLayoutMargins = false;
    cell.separatorInset = UIEdgeInsetsZero;
    cell.layoutMargins = UIEdgeInsetsZero;
    cell.preservesSuperviewLayoutMargins = NO;
    
    cell.backgroundColor = [UIColor clearColor];

    
    
    
    return cell;
}

- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath;
{
    NSLog(@"title of cell %@", [_content objectAtIndex:indexPath.row]);
    NSLog(@"didSelectRowAtIndexPath");
    /*UIAlertView *messageAlert = [[UIAlertView alloc]
     initWithTitle:@"Row Selected" message:@"You've selected a row" delegate:nil cancelButtonTitle:@"OK" otherButtonTitles:nil];*/
    /*UIAlertView *messageAlert = [[UIAlertView alloc]
                                 initWithTitle:@"¿Solicitar Token?" message:[tableData objectAtIndex:indexPath.row] delegate:nil cancelButtonTitle:@"OK" otherButtonTitles:@"Cancel"];*/
    
    UIAlertView *messageAlert = [[UIAlertView alloc] initWithTitle:@"¿Solicitar Token?"
                                                    message:@""
                                                   delegate:self    // <------
                                          cancelButtonTitle:@"Cancel"
                                          otherButtonTitles:@"OK", nil];
    modal = [[UIView alloc]initWithFrame:CGRectMake((self.view.frame.size.height/2)-100, (self.view.frame.size.height/2)-120, 450, 250)];
    modal.backgroundColor = [[UIColor alloc] initWithPatternImage:[UIImage imageNamed:@"background"]];
    [self.view addSubview: modal];
    //*getToken, *datGralesBtn, *histClinicaBtn, *consultaBtn, *agendaConsulta;
    /*
     [btnLogin addTarget:self action:@selector(logeoAction:) forControlEvents:UIControlEventTouchUpInside];
     -(IBAction)logeoAction:(id)sender{
     LoginViewController *secondViewController =
     [self.storyboard instantiateViewControllerWithIdentifier:@"SWRevealViewController"];
     [self presentViewController:secondViewController animated:YES completion:NULL];
     }

     */
    
    
    
    
    
    
    
    getToken = [[UIButton alloc] initWithFrame:CGRectMake(0, 10, 450, 50)];
   // getToken.backgroundColor =  [UIColor blueColor];
    [getToken setTitle:@"Token" forState:UIControlStateNormal];
    //[getToken addTarget:self action:@selector(requestToken:) forControlEvents:UIControlEventTouchUpInside];
    [getToken setTitleColor:[UIColor colorWithRed:80.0/255.0 green:143.0/255.0 blue:247.0/255.0 alpha:1.0] forState:UIControlStateNormal];

    //UIColor colorWithRed:80.0/255.0 green:143.0/255.0 blue:247.0/255.0 alpha:1.0

    [modal addSubview: getToken];
    
    //textBuscar.textColor = [UIColor colorWithRed:0 green:0.478431 blue:1 alpha:1];
    
    datGralesBtn = [[UIButton alloc] initWithFrame:CGRectMake(0, 50, 450, 50)];
    //datGralesBtn.backgroundColor =  [UIColor redColor];
    [datGralesBtn setTitle:@"Datos Generales" forState:UIControlStateNormal];
    [datGralesBtn addTarget:self action:@selector(showDatosGrales:) forControlEvents:UIControlEventTouchUpInside];
    [datGralesBtn setTitleColor:[UIColor colorWithRed:80.0/255.0 green:143.0/255.0 blue:247.0/255.0 alpha:1.0] forState:UIControlStateNormal];
    [modal addSubview: datGralesBtn];
    
    histClinicaBtn = [[UIButton alloc] initWithFrame:CGRectMake(0, 100, 450, 50)];
    //histClinicaBtn.backgroundColor =  [UIColor greenColor];
    [histClinicaBtn setTitle:@"Historia Clínica" forState:UIControlStateNormal];
    [histClinicaBtn addTarget:self action:@selector(showHistClinica:) forControlEvents:UIControlEventTouchUpInside];
    [histClinicaBtn setTitleColor:[UIColor colorWithRed:80.0/255.0 green:143.0/255.0 blue:247.0/255.0 alpha:1.0] forState:UIControlStateNormal];
    [modal addSubview: histClinicaBtn];
    
    consultaBtn = [[UIButton alloc] initWithFrame:CGRectMake(0, 150, 450, 50)];
    //consultaBtn.backgroundColor =  [UIColor orangeColor];
    [consultaBtn setTitle:@"Consulta" forState:UIControlStateNormal];
    [consultaBtn addTarget:self action:@selector(showcreaConsulta:) forControlEvents:UIControlEventTouchUpInside];
    [consultaBtn setTitleColor:[UIColor colorWithRed:80.0/255.0 green:143.0/255.0 blue:247.0/255.0 alpha:1.0] forState:UIControlStateNormal];
    [modal addSubview: consultaBtn];
    
    agendaConsulta = [[UIButton alloc] initWithFrame:CGRectMake(0, 200, 450, 50)];
    //agendaConsulta.backgroundColor =  [UIColor purpleColor];
    [agendaConsulta setTitle:@"Agendar Consulta" forState:UIControlStateNormal];
    [agendaConsulta setTitleColor:[UIColor colorWithRed:80.0/255.0 green:143.0/255.0 blue:247.0/255.0 alpha:1.0] forState:UIControlStateNormal];
    [agendaConsulta addTarget:self action:@selector(showAgenda:) forControlEvents:UIControlEventTouchUpInside];
    [modal addSubview: agendaConsulta];
    
    
    
    
    
    // Display the Hello World Message
    //[messageAlert show];
    
    // Checked the selected row
   // UITableViewCell *cell = [tableView cellForRowAtIndexPath:indexPath];
    //cell.accessoryType = UITableViewCellAccessoryCheckmark;
    
    [tableView deselectRowAtIndexPath:indexPath animated:YES];
    
    
    btnCierraModal = [UIButton buttonWithType:UIButtonTypeCustom];
    btnCierraModal.frame = CGRectMake(-10, -20, 40, 40);
    btnCierraModal.titleLabel.font = [UIFont fontWithName:@"Helvetica-Bold" size:20];
    [btnCierraModal setBackgroundImage:[UIImage imageNamed:@"close"] forState:UIControlStateNormal];
    //btnCierraModal.backgroundColor = [UIColor redColor];
    
    [btnCierraModal addTarget:self action:@selector(closeModal:) forControlEvents:UIControlEventTouchUpInside];
    [getToken addSubview:btnCierraModal];
    
}
-(IBAction)closeModal:(id)sender{
    NSLog(@"Close Modal");
    [modal setHidden:YES];
}

-(IBAction)showAgenda:(id)sender{
    NSLog(@"Close Modal");
    [modal setHidden:YES];
    //[self performSegueWithIdentifier:@"agenda" sender:nil];
}

//


-(IBAction)buscarDatos:(id)sender{
    NSLog(@"Buscar Pacientes");
    self.content = @[ @"Monday", @"Tuesday", @"Wednesday",@"Thursday",@"Friday",@"Saturday",@"Sunday",@"Thursday",@"Friday",@"Saturday",@"Sunday"];
    [self cofigureTableview];
    
}

-(IBAction)showDatosGrales:(id)sender{
    [modal setHidden:YES];
    [self performSegueWithIdentifier:@"datosGenerales" sender:nil];
}

-(IBAction)showHistClinica:(id)sender{
    [modal setHidden:YES];
    [self performSegueWithIdentifier:@"historiaClinica" sender:nil];
}

-(IBAction)showcreaConsulta:(id)sender{
    [modal setHidden:YES];
    [self performSegueWithIdentifier:@"creaConsulta" sender:nil];
}

#pragma mark state preservation / restoration

- (void)encodeRestorableStateWithCoder:(NSCoder *)coder
{
    NSLog(@"%s", __PRETTY_FUNCTION__);

    // Save what you need here
    
    [super encodeRestorableStateWithCoder:coder];
}


- (void)decodeRestorableStateWithCoder:(NSCoder *)coder
{
    NSLog(@"%s", __PRETTY_FUNCTION__);
    
    // Restore what you need here
    
    [super decodeRestorableStateWithCoder:coder];
}


- (void)applicationFinishedRestoringState
{
    NSLog(@"%s", __PRETTY_FUNCTION__);
    
    // Call whatever function you need to visually restore
    [self customSetup];
}

@end
