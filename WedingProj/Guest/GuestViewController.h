//
//  GuestViewController.h
//  WedingProj
//
//  Created by Micronix on 21/02/14.
//  Copyright (c) 2014 Micronix Technologies. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface GuestViewController : UIViewController<UIScrollViewDelegate>
{
    IBOutlet UITableView *GuestTable;
    IBOutlet UIScrollView *GuestScroll;
    
}

@end
