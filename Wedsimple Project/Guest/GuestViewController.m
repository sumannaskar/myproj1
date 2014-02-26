//
//  GuestViewController.m
//  WedingProj
//
//  Created by Micronix on 21/02/14.
//  Copyright (c) 2014 Micronix Technologies. All rights reserved.
//

#import "GuestViewController.h"
#import "AddGuestViewController.h"
#define NIB_NAME @"Cell"
@interface GuestViewController ()

@end

@implementation GuestViewController
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
    
    
}

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView
{
    // Return the number of sections.
    return 1;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    // Return the number of rows in the section.
    return 10;
}
//for normal table view....


- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
 {
 
 static NSString *identifire=@"cellidentifire";
 UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:identifire];
 if (cell == nil) {
 cell = [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:identifire];
 
     cell.textLabel.text=@"Guest";
     cell.textLabel.textAlignment = NSTextAlignmentCenter;
     UIButton *detailsButton = [UIButton buttonWithType:UIButtonTypeRoundedRect];
     detailsButton.frame = CGRectMake(0, 0, 72, 37);
     [detailsButton setTitle:@"Details" forState:UIControlStateNormal];
     [detailsButton addTarget:self action:@selector(ViewDetails:) forControlEvents:UIControlEventTouchUpInside];
     detailsButton.tag = indexPath.row;
     cell.accessoryType = UITableViewCellAccessoryNone;
     cell.accessoryView = detailsButton;
     return cell;
 }
 
 //cell.textLabel.text = [tableData objectAtIndex:indexPath.row];
 //cell.imageView.image = [UIImage imageNamed:[thumbnails objectAtIndex:indexPath.row]];
     
     
 return cell;
 
 }

//for customize cell......


//- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
//{
//    static NSString *simpleTableIdentifier = @"SimpleTableCell";
//    
//    Cell *cell = (Cell *)[tableView dequeueReusableCellWithIdentifier:simpleTableIdentifier];
//    if (cell == nil)
//    {
//        UINib* nib = [UINib nibWithNibName:NIB_NAME bundle:nil];
//        NSArray* array = [nib instantiateWithOwner:self options:nil];
//        cell = [array objectAtIndex:0];
//    }
//    cell.backgroundColor=[UIColor clearColor];
//    // cell.nameLabel.text = [tableData objectAtIndex:indexPath.row];
//    // cell.thumbnailImageView.image = [UIImage imageNamed:[thumbnails objectAtIndex:indexPath.row]];
//    //cell.prepTimeLabel.text = [prepTime objectAtIndex:indexPath.row];
//    [cell.cellbkimgv setImage:[UIImage imageNamed:@"tp-bg.png"]];
//    cell.date.text=[date1 objectAtIndex:indexPath.row];
//    //[cell.date setFont:[UIFont fontWithName:@"Arial" size:10]];
//    if ([[read objectAtIndex:indexPath.row]  isEqual: @"unread"]) {
//        if([[UIScreen mainScreen] bounds].size.height  < 600)
//        {
//            cell.lebel.text=[subject objectAtIndex:indexPath.row];
//            [cell.lebel setFont:[UIFont fontWithName:@"Arial-BoldMT" size:16]];
//            [cell.date setFont:[UIFont fontWithName:@"Arial" size:10]];
//            
//        }
//        else
//        {
//            cell.lebel.text=[subject objectAtIndex:indexPath.row];
//            [cell.lebel setFont:[UIFont fontWithName:@"Arial-BoldMT" size:30]];
//            [cell.date setFont:[UIFont fontWithName:@"Arial" size:16]];
//            
//        }
//        
//        
//        
//    }
//    
//    else
//    {
//        if([[UIScreen mainScreen] bounds].size.height  < 600)
//        {
//            
//            cell.lebel.text=[subject objectAtIndex:indexPath.row];
//            [cell.lebel setFont:[UIFont fontWithName:@"Arial" size:16]];
//            [cell.date setFont:[UIFont fontWithName:@"Arial" size:10]];
//        }
//        
//        else
//        {
//            cell.lebel.text=[subject objectAtIndex:indexPath.row];
//            [cell.lebel setFont:[UIFont fontWithName:@"Arial" size:30]];
//            [cell.date setFont:[UIFont fontWithName:@"Arial" size:16]];
//            
//        }
//        
//    }
//    return cell;
//}


- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath
{
    
}


- (CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath
{
    //return 60;
    int cellheight=60;
    if([[UIScreen mainScreen] bounds].size.height  < 600)
    {
        if ([[UIScreen mainScreen] bounds].size.height == 568)
        {
            
            cellheight=cellheight+20;
            
            
        }
        else if ([[UIScreen mainScreen] bounds].size.height == 480)
        {
            
            //no change
            
        }
        else
        {
            //no change
            
        }
        
        
    }
    else
    {
        if ([[UIScreen mainScreen] bounds].size.height == 1024)
        {
            
            cellheight=cellheight+10;
            
        }
        else
        {
            
            cellheight=cellheight+10;
        }
    }
    // NSLog(@"cellheight-- %d",cellheight);
    return cellheight;
    
    
}

-(void)ViewDetails:(UIButton*)button
{
    NSLog(@"%ld",(long)button.tag);
}
- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

//-(void)image
//{
//    if([[UIScreen mainScreen] bounds].size.height  < 600)
//    {
//        if ([[UIScreen mainScreen] bounds].size.height == 568)
//        {
//            int tableRowheight = 100*10;
//            GuestTable.frame=CGRectMake(0, 0, 320, tableRowheight+10);
//            GuestScroll.contentSize = CGSizeMake(320, tableRowheight+10);
//        }
//        else if ([[UIScreen mainScreen] bounds].size.height == 480)
//        {
//            int tableRowheight = 100*50;
//            GuestTable.frame=CGRectMake(0, 0, 320, tableRowheight*2);
//            GuestScroll.contentSize = CGSizeMake(320, tableRowheight);
//            
//        }
//        else
//        {
//            int tableRowheight = 100*10;
//            GuestTable.frame=CGRectMake(0, 0, 320, tableRowheight+10);
//            GuestScroll.contentSize = CGSizeMake(320, tableRowheight+10);
//        }
//        
//        
//    }
//    else
//    {
//         //[bgimgv setImage:[UIImage imageNamed:@"640-1136-inner.png"]];
//        int tableRowheight = 100*10;
//        GuestTable.frame=CGRectMake(0, 0, 320, tableRowheight+10);
//        GuestScroll.contentSize = CGSizeMake(320, tableRowheight+10);
//
//
//    }
//}
//
//
- (IBAction)DeleteAction:(UIBarButtonItem *)sender {
}

- (IBAction)AddAction:(UIBarButtonItem *)sender {
    AddGuestViewController *AddguestVc=[[AddGuestViewController alloc] init];
    [self.navigationController pushViewController:AddguestVc animated:YES];
}
@end
