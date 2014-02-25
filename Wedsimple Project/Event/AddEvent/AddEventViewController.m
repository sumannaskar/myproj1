//
//  AddEventViewController.m
//  WedingProj
//
//  Created by Micronix on 24/02/14.
//  Copyright (c) 2014 Micronix Technologies. All rights reserved.
//

#import "AddEventViewController.h"

@interface AddEventViewController ()

@end

@implementation AddEventViewController

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
    
    
    _datetxt.delegate=self;
     _dateendtxt.delegate=self;
    _datetxt.tag=1;
    _dateendtxt.tag=2;
    
    
    scroll.contentSize=CGSizeMake(320, 500);
    _pickerVw.dataSource=self;
    _pickerVw.delegate=self;
    _pickerVw.showsSelectionIndicator=YES;
    [_dresscodetxt setInputView:_respondingView];
    [_datetxt setInputView:_datepickerView];
    [_dateendtxt setInputView:_datepickerView];
    
    [_datepickerVW setDate:[NSDate date]];
    
    pkarray=[[NSArray alloc]initWithObjects:@"Formal",@"Casual", nil];
    _donedatebtn.tag=1;
    
}
- (void)textFieldDidBeginEditing:(UITextField *)textField
{
    if (textField.tag==1) {
        _donedatebtn.tag=1;
        _canceldatebtn.tag=1;
    }
    if (textField.tag==2) {
        _donedatebtn.tag=2;
        _canceldatebtn.tag=2;
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
    
     _dresscodetxt.text=[pkarray objectAtIndex:row];
//    locationSelect.text=[location objectAtIndex:row];
//    loactionName=[location objectAtIndex:row];
//    lati=[[latt objectAtIndex:row] floatValue];
//    longi=[[longg objectAtIndex:row] floatValue];
//    addressdetailsText.text=[address objectAtIndex:row];
    
}

- (IBAction)done:(id)sender
{
    
    if (!(_dresscodetxt.text.length>0)) {
        //        mytxtfield.text=[stateList objectAtIndex:0];
        //        self.stateName=[stateList objectAtIndex:0];
        
        _dresscodetxt.text=[pkarray objectAtIndex:0];
//        addressdetailsText.text=[address objectAtIndex:0];
//        loactionName=[location objectAtIndex:0];
    }
    
    [_dresscodetxt resignFirstResponder];
}
- (IBAction)cancel:(UIBarButtonItem *)sender
{
    _dresscodetxt.text=@"";
    
    //addressdetailsText.text=@"";
    
    
    [_dresscodetxt resignFirstResponder];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)donedate:(id)sender
{

    if (_donedatebtn.tag==1) {
        _datetxt.text=[self formatDate:_datepickerVW.date];
        // _datetxt.text=[NSString stringWithFormat:@"%@",_datepickerVW.date];
        
        [_datetxt resignFirstResponder];
    }
    else
    {
    
     _dateendtxt.text=[self formatDate:_datepickerVW.date];
     [_dateendtxt resignFirstResponder];
   // [_dateendtxt resignFirstResponder];
    }

}
- (IBAction)canceldate:(UIBarButtonItem *)sender
{
    if (_canceldatebtn.tag==1)
    {
        _datetxt.text=@"";
        [_datetxt resignFirstResponder];
    }
    else
    {
        _dateendtxt.text=@"";
        [_dateendtxt resignFirstResponder];
    }
   }
- (NSString *)formatDate:(NSDate *)date
{
    NSDateFormatter *dateFormatter = [[NSDateFormatter alloc] init];
    [dateFormatter setDateStyle:NSDateFormatterShortStyle];
    [dateFormatter setDateFormat:@"MM'/'dd'/'yyyy hh:mm a"];
    NSString *formattedDate = [dateFormatter stringFromDate:date];
    return formattedDate;
}

@end
