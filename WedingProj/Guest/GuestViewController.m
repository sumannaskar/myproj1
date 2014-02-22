//
//  GuestViewController.m
//  WedingProj
//
//  Created by Micronix on 21/02/14.
//  Copyright (c) 2014 Micronix Technologies. All rights reserved.
//

#import "GuestViewController.h"
#import "Cell.h"
#define NIB_NAME @"Cell"
@interface GuestViewController ()

@end

@implementation GuestViewController
int a=0;
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
    //[GuestTable setRowHeight: 100.00];
    GuestScroll.delegate = self;
    GuestTable.scrollEnabled = NO;
    GuestScroll.frame=CGRectMake(0, 0, 320, 480);
    [self image];
    [GuestScroll addSubview:GuestTable];
    
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView
{
    // Return the number of sections.
    return 1;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    [GuestTable setRowHeight: 100.00];
    // Return the number of rows in the section.
    return 5;
}
//for normal table view....


//- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
// {
// 
//     static NSString *cellidentifire;
//     UITableViewCell *cell;
//     cell=[tableView dequeueReusableCellWithIdentifier:cellidentifire];
//     if(cell==nil)
//     {
//         cell= [[UITableViewCell alloc]initWithStyle:UITableViewCellStyleDefault reuseIdentifier:cellidentifire];
//         cell.textLabel.text=[NSString stringWithFormat:@"%d",a];
//         NSLog(@"%d",a);
//         a=a+1;
//         cell.accessoryType=UITableViewCellStyleDefault;
//         //[cell setSelectionStyle:UITableViewCellSelectionStyleGray];
//         return cell;
//     }
//     return cell;
//
////[NSString stringWithFormat:@"%d",a];
// 
// }

//for customize cell......


- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    static NSString *simpleTableIdentifier = @"SimpleTableCell";
    
    Cell *cell = (Cell *)[tableView dequeueReusableCellWithIdentifier:simpleTableIdentifier];
    if (cell == nil)
    {
        UINib* nib = [UINib nibWithNibName:NIB_NAME bundle:nil];
        NSArray* array = [nib instantiateWithOwner:self options:nil];
        cell = [array objectAtIndex:0];
    }
    cell.backgroundColor=[UIColor clearColor];
    // cell.nameLabel.text = [tableData objectAtIndex:indexPath.row];
    // cell.thumbnailImageView.image = [UIImage imageNamed:[thumbnails objectAtIndex:indexPath.row]];
    //cell.prepTimeLabel.text = [prepTime objectAtIndex:indexPath.row];
//    [cell.cellbkimgv setImage:[UIImage imageNamed:@"tp-bg.png"]];
//    cell.date.text=[date1 objectAtIndex:indexPath.row];
    
    return cell;
}



-(void)image
{
    if([[UIScreen mainScreen] bounds].size.height  < 600)
    {
        if ([[UIScreen mainScreen] bounds].size.height == 568)
        {
            int tableRowheight = 100*10;
            GuestTable.frame=CGRectMake(0, 0, 320, tableRowheight+10);
            GuestScroll.contentSize = CGSizeMake(320, tableRowheight+10);
        }
        else if ([[UIScreen mainScreen] bounds].size.height == 480)
        {
            int tableRowheight = 100*5;
            GuestTable.frame=CGRectMake(0, 0, 320, tableRowheight*2);
            GuestScroll.contentSize = CGSizeMake(320, tableRowheight);
            
        }
        else
        {
            int tableRowheight = 100*10;
            GuestTable.frame=CGRectMake(0, 0, 320, tableRowheight+10);
            GuestScroll.contentSize = CGSizeMake(320, tableRowheight+10);
        }
        
        
    }
    else
    {
         //[bgimgv setImage:[UIImage imageNamed:@"640-1136-inner.png"]];
        int tableRowheight = (GuestTable.rowHeight+10)*4;
        
        GuestTable.frame=CGRectMake(0, 0, 320, tableRowheight);
        GuestScroll.frame=CGRectMake(0, 0, 320, tableRowheight);
        GuestScroll.contentSize = CGSizeMake(320, tableRowheight);


    }
}


@end
