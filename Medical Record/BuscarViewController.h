//
//  MapViewController.h
//  RevealControllerStoryboardExample
//
//  Created by Nick Hodapp on 1/9/13.
//  Copyright (c) 2013 CoDeveloper. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface BuscarViewController : UIViewController <UITableViewDelegate,UITableViewDataSource>
@property(strong,nonatomic) IBOutlet UITextField * curpField;
@property (strong,nonatomic) UITableView *table;
@property (strong,nonatomic) NSArray *content;
@end
