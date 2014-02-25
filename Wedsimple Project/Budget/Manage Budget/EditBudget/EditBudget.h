//
//  EditBudget.h
//  WedingProj
//
//  Created by macmini2 on 2/25/14.
//  Copyright (c) 2014 Micronix Technologies. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface EditBudget : UIViewController
{
    
    IBOutlet UIImageView *background;
    IBOutlet UILabel *eventname;
    IBOutlet UITextField *eventnametext;
    IBOutlet UILabel *paymentduedate;
    IBOutlet UITextField *paymentduedatetext;
    IBOutlet UILabel *totalamountdue;
    IBOutlet UITextField *totalamountduetext;
    IBOutlet UILabel *amountpaidtodate;
    IBOutlet UITextField *amountpaidtodatetext;
    IBOutlet UILabel *info;
    IBOutlet UITextView *infotext;
    IBOutlet UIButton *save;
    

    
}
- (IBAction)save:(id)sender;



@end
