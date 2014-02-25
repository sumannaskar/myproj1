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
    _pickerVw.dataSource=self;
    _pickerVw.delegate=self;
    _pickerVw.showsSelectionIndicator=YES;
    [_datetxt setInputView:_datepickerView];
    [_categorytxt setInputView:_respondingView];
    
    
    
    _eventtxt.tag=2;
    _vendortxt.tag=3;
    _statustxt.tag=4;
    
    
    scroll.contentSize=CGSizeMake(320, 500);
    
    pkarray=[[NSArray alloc]initWithObjects:@"Category1",@"Category2",@"Category3",@"Category4",@"Category5",@"Category6", nil];
    
    eventarray=[[NSArray alloc]initWithObjects:@"Event1",@"Event2",@"Event3",@"Event4",@"Event5",@"Event6", nil];
}

- (void)textFieldDidBeginEditing:(UITextField *)textField
{
    if (textField.tag==2) {
        _pickerVw.tag=2;
        _donebtn.tag=2;
        _cancelbtn.tag=2;
    }
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
    if (_pickerVw.tag==2) {
        rowCount=[eventarray count];
    }
    rowCount=[pkarray count];
    return rowCount;
}



- (NSString *)pickerView:(UIPickerView *)pickerView titleForRow:(NSInteger)row forComponent:(NSInteger)component

{
    // return [location objectAtIndex:row];
    if (_pickerVw.tag==2) {
       return [eventarray objectAtIndex:row];
    }
    return [pkarray objectAtIndex:row];
}


- (void)pickerView:(UIPickerView *)pickerView didSelectRow:(NSInteger)row inComponent:(NSInteger)component
{

    if (_pickerVw.tag==2) {
        _eventtxt.text=[eventarray objectAtIndex:row];
    }
    _categorytxt.text=[pkarray objectAtIndex:row];
        
}

- (IBAction)done:(id)sender
{
    if (_donebtn.tag==2) {
        if (!(_eventtxt.text.length>0)) {
            
            _eventtxt.text=[eventarray objectAtIndex:0];
            
        }
        
        [_eventtxt resignFirstResponder];

    }
    if (!(_categorytxt.text.length>0)) {
        
        
        _categorytxt.text=[pkarray objectAtIndex:0];
        
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
