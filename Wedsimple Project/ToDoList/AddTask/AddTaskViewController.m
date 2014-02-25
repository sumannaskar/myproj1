//
//  AddTaskViewController.m
//  WedingProj
//
//  Created by Micronix on 24/02/14.
//  Copyright (c) 2014 Micronix Technologies. All rights reserved.
//

#import "AddTaskViewController.h"

@interface AddTaskViewController ()

@end

@implementation AddTaskViewController

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    // Do any additional setup after loading the view from its nib.
    
    nametxt.delegate=self;
    _datetxt.delegate=self;
    _categorytxt.delegate=self;
    _vendortxt.delegate=self;
    _eventtxt.delegate=self;
    _statustxt.delegate=self;
    [_datetxt setInputView:_datepickerView];
    [_categorytxt setInputView:_respondingView];
    
    
    
    scroll.contentSize=CGSizeMake(320, 500);
    
    pkarray=[[NSArray alloc]initWithObjects:@"Category1",@"Category2",@"Category3",@"Category4",@"Category5",@"Category6", nil];
}

#pragma mark -
#pragma mark - picker view delegates

- (NSInteger)numberOfComponentsInPickerView:(UIPickerView *)pickerView
{
    return 1;
}




- (NSInteger)pickerView:(UIPickerView *)pickerView numberOfRowsInComponent:(NSInteger)component
{
    NSInteger rowCount;
    //rowCount= [location count];
    rowCount=[pkarray count];
    return rowCount;
}



- (NSString *)pickerView:(UIPickerView *)pickerView titleForRow:(NSInteger)row forComponent:(NSInteger)component

{
    // return [location objectAtIndex:row];
    return [pkarray objectAtIndex:row];
}


- (void)pickerView:(UIPickerView *)pickerView didSelectRow:(NSInteger)row inComponent:(NSInteger)component
{
    
    _categorytxt.text=[pkarray objectAtIndex:row];
    //    locationSelect.text=[location objectAtIndex:row];
    //    loactionName=[location objectAtIndex:row];
    //    lati=[[latt objectAtIndex:row] floatValue];
    //    longi=[[longg objectAtIndex:row] floatValue];
    //    addressdetailsText.text=[address objectAtIndex:row];
    
}

- (IBAction)done:(id)sender
{
    
    if (!(_categorytxt.text.length>0)) {
        //        mytxtfield.text=[stateList objectAtIndex:0];
        //        self.stateName=[stateList objectAtIndex:0];
        
        _categorytxt.text=[pkarray objectAtIndex:0];
        //        addressdetailsText.text=[address objectAtIndex:0];
        //        loactionName=[location objectAtIndex:0];
    }
    
    [_categorytxt resignFirstResponder];
}
- (IBAction)cancel:(UIBarButtonItem *)sender
{
    _categorytxt.text=@"";
    
    //addressdetailsText.text=@"";
    
    
    [_categorytxt resignFirstResponder];
}

- (BOOL)textFieldShouldReturn:(UITextField *)textField {
    
    [textField resignFirstResponder];
    
    return YES;
}
- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)donedate:(id)sender
{
    _datetxt.text=[self formatDate:_datepickerVW.date];
    // _datetxt.text=[NSString stringWithFormat:@"%@",_datepickerVW.date];
    
    [_datetxt resignFirstResponder];
    
    
}
- (IBAction)canceldate:(UIBarButtonItem *)sender
{
    _datetxt.text=@"";
    [_datetxt resignFirstResponder];
}
- (NSString *)formatDate:(NSDate *)date
{
    NSDateFormatter *dateFormatter = [[NSDateFormatter alloc] init];
    [dateFormatter setDateStyle:NSDateFormatterShortStyle];
    [dateFormatter setDateFormat:@"dd'/'MM'/'yyyy"];
    NSString *formattedDate = [dateFormatter stringFromDate:date];
    return formattedDate;
}

@end
