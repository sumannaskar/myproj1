//
//  AddEventViewController.h
//  WedingProj
//
//  Created by Micronix on 24/02/14.
//  Copyright (c) 2014 Micronix Technologies. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface AddEventViewController : UIViewController<UIPickerViewDataSource,UIPickerViewDelegate>
{
    NSArray *pkarray;
    IBOutlet UIScrollView *scroll;
}

@property (strong, nonatomic) IBOutlet UITextField *dresscodetxt;

@property (strong, nonatomic) IBOutlet UITextField *datetxt;

@property (strong, nonatomic) IBOutlet UITextField *dateendtxt;

@property (retain, nonatomic) IBOutlet UIView *respondingView;
- (IBAction)done:(id)sender;
- (IBAction)cancel:(UIBarButtonItem *)sender;
@property (retain, nonatomic) IBOutlet UIPickerView *pickerVw;

@property (retain, nonatomic) IBOutlet UIView *datepickerView;

@property (strong, nonatomic) IBOutlet UIDatePicker *datepickerVW;

- (IBAction)donedate:(id)sender;
- (IBAction)canceldate:(UIBarButtonItem *)sender;

@end
