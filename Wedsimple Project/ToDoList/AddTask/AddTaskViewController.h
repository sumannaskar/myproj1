//
//  AddTaskViewController.h
//  WedingProj
//
//  Created by Micronix on 24/02/14.
//  Copyright (c) 2014 Micronix Technologies. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface AddTaskViewController : UIViewController
{
    IBOutlet UIScrollView *scroll;
    
    
    IBOutlet UITextView *informationtxt;
    IBOutlet UITextField *nametxt;
}

@property (strong, nonatomic) IBOutlet UITextField *datetxt;

@property (strong, nonatomic) IBOutlet UITextField *categorytxt;
@property (strong, nonatomic) IBOutlet UITextField *eventtxt;
@property (strong, nonatomic) IBOutlet UITextField *vendortxt;
@property (strong, nonatomic) IBOutlet UITextField *statustxt;

@end
