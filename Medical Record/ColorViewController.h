//
//  ColorViewController.h
//  RevealControllerStoryboardExample
//
//  Created by Nick Hodapp on 1/9/13.
//  Copyright (c) 2013 CoDeveloper. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "MCSlidingTabs.h"

@interface ColorViewController : MCSlidingTabs
@property (nonatomic, strong) IBOutlet UILabel* label;
@property (nonatomic, strong) UIColor* color;
@property (nonatomic, strong) NSString* text;
@end
