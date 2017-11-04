//
//  InformationViewController.m
//  Shorecrest Maps
//
//  Created by admin on 5/1/14.
//  Copyright (c) 2014 SPS. All rights reserved.
//

#import "InformationViewController.h"
#import "BuildingStore.h"
#import "Building.h"
#import "TableViewController.h"
#import "MapViewController.h"
#import "ImageStore.h"
#import "EmployeeStore.h"
#import "Employee.h"



@interface InformationViewController()

@end

@implementation InformationViewController

@synthesize imageView, building, informationTableView, nameLabel;



- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        

        
        UIColor *newCellColor = [UIColor colorWithRed:254.0/255 green:255.0/255 blue:192.0/255 alpha:1];
        
        UIColor *newBackgroundColor = [UIColor colorWithRed:46.0/255 green:81.0/255 blue:47.0/255 alpha:1];
        
        NSShadow *shadow = [NSShadow new];
        shadow.shadowColor = newCellColor;
        
        [[UINavigationBar appearance] setTitleTextAttributes: @{
                                                                NSForegroundColorAttributeName: newCellColor,
                                                                NSFontAttributeName: [UIFont fontWithName:@"Kohinoor Devanagari" size:20.0f],
                                                                NSShadowAttributeName: shadow
                                                                }];
    
                [UITabBarItem.appearance setTitleTextAttributes:@{
                                                                  NSForegroundColorAttributeName : newCellColor } forState:UIControlStateNormal];
//        UITabBarItem *item = [self tabBarItem];

//        [UITabBarItem.appearance setTitleTextAttributes:@{
//                                                                  NSForegroundColorAttributeName :newCellColor } forState:UIControlStateSelected];
        

        
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    
//    UIColor *newBackgroundColor = [UIColor colorWithRed:46.0/255 green:81.0/255 blue:47.0/255 alpha:1];
    UIColor *newCellColor = [UIColor colorWithRed:254.0/255 green:255.0/255 blue:192.0/255 alpha:1];
    
    self.navigationController.navigationBar.tintColor = newCellColor;
        [[UITabBar appearance] setTintColor:newCellColor];
//   self.navigationController.navigationBar.backgroundColor = newCellColor;


//    for ( Employee *e in [[EmployeeStore sharedStore]allEmployees])
//        
//    {
//        if ([[e buildingName] isEqualToString:[building name]])
//        {
//            [[building employeesInBuilding]addObject:e];
//            [[building employeesInBuilding] insertObject:e atIndex:0];
//        }
//    }
    
    NSLog(@"Employees: %@",[building employeesInBuilding]);

    // Do any additional setup after loading the view from its nib.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

-(void)viewWillAppear:(BOOL)animated
{
    UIFont *newFont = [UIFont fontWithName:@"Kohinoor Devanagari" size:18.0f];
    UIColor *newBackgroundColor = [UIColor colorWithRed:46.0/255 green:81.0/255 blue:47.0/255 alpha:1];
    
    [nameLabel setText:[building name]];
    [nameLabel setFont:newFont];
    [nameLabel setTextColor:newBackgroundColor];
    
    ImageStore *imageStore = [ImageStore sharedStore];
    [imageView setImage:[imageStore imageForKey:[building name]]];

    
}

-(void)viewWillDisappear:(BOOL)animated
{
    imageView.image = nil;
}

-(void)setBuilding:(Building *)b
{
    building = b;
    NSLog(@"setting title to: %@", [b name]);
    
    [[self navigationItem]setTitle:[building name]];
}

- (IBAction)backButton:(id)sender
{
    UIViewController *vc = [self presentingViewController];
    
    [vc dismissViewControllerAnimated:YES completion:Nil];
}
-(NSInteger)numberOfSectionsInTableView:(UITableView *)tableView
{
    NSLog(@"%@",[building departments]);
    NSLog(@"%lu",[[building departments]count] + 1);
    return [[building departments]count] + 1;
//    return 4;

}
-(NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
  
    if (section == 0)
    {
        return 1;
        
    }else if (section == 1)
    {
        NSString *deptName = [[[building employeesInBuilding]objectAtIndex:0]department];
        
        for (int i = 0; i<[[building employeesInBuilding]count];i++)
        {
            if (![deptName isEqualToString:[[[building employeesInBuilding] objectAtIndex:i] department]] ) {
                NSLog(@"num rows: %d", i);
                return i;
            }
        }
        
        return [[building employeesInBuilding]count];
        
        
        
    }else if (section == 2)
    {
        
        int offset = (int)([self tableView:tableView numberOfRowsInSection:1]) ;
        int end = offset;
        NSString *name = [[[building employeesInBuilding]objectAtIndex:offset] department];
        NSLog(@"section 2, offset = %d", offset);
        
        for (int i = offset+1; i<[[building employeesInBuilding]count];i++)
        {
            Employee *e = [[building employeesInBuilding] objectAtIndex:i];
            if ([name isEqualToString:[e department]] ) {
                end = i;
            }else{
                end = (end - offset) + 1;
                return end;
                
            }
            
        }
        
        return (end - offset) + 1;

    }else if (section == 3)
    {
        
        int offset = (int)([self tableView:tableView numberOfRowsInSection:1] + [self tableView:tableView numberOfRowsInSection:2]);
        int end = offset;
        NSString *name = [[[building employeesInBuilding]objectAtIndex:offset] department];
        NSLog(@"section 3, offset = %d", offset);
        for (int i = offset+1; i<[[building employeesInBuilding]count];i++)
        {
            Employee *e = [[building employeesInBuilding] objectAtIndex:i];
            if ([name isEqualToString:[e department]] ) {
                end = i;
            } else {
                end = (end - offset) + 1;
                return end;
            }

        }
        
        return (end - offset) + 1;
        
    }else if (section == 4)
    {
        
        int offset = (int)([self tableView:tableView numberOfRowsInSection:1] + [self tableView:tableView numberOfRowsInSection:2] + [self tableView:tableView numberOfRowsInSection:3]);
        int end = offset;
        NSString *name = [[[building employeesInBuilding]objectAtIndex:offset] department];
        NSLog(@"section 4, offset = %d", offset);
        for (int i = offset+1; i<[[building employeesInBuilding]count];i++)
        {
            Employee *e = [[building employeesInBuilding] objectAtIndex:i];
            if ([name isEqualToString:[e department]] ) {
                end = i;
            } else {
                end = (end - offset) + 1;
                return end;
            }
        }
        
        return (end - offset) + 1;


    }else if (section == 5)
    {
        
        int offset = (int)([self tableView:tableView numberOfRowsInSection:1] + [self tableView:tableView numberOfRowsInSection:2] + [self tableView:tableView numberOfRowsInSection:3] + [self tableView:tableView numberOfRowsInSection:4]);
        int end = offset;
        NSString *name = [[[building employeesInBuilding]objectAtIndex:offset] department];
        NSLog(@"section 5, offset = %d", offset);
        for (int i = offset+1; i<[[building employeesInBuilding]count];i++)
        {
            Employee *e = [[building employeesInBuilding] objectAtIndex:i];
            if ([name isEqualToString:[e department]] ) {
                end = i;
            } else {
                end = (end - offset) + 1;
                return end;
            }
            
        }
        
        return (end - offset) + 1;
        
    }else if (section == 6)
    {
        
        int offset = (int)([self tableView:tableView numberOfRowsInSection:1] + [self tableView:tableView numberOfRowsInSection:2] + [self tableView:tableView numberOfRowsInSection:3] + [self tableView:tableView numberOfRowsInSection:4] + [self tableView:tableView numberOfRowsInSection:5]);
        int end = offset;
        NSString *name = [[[building employeesInBuilding]objectAtIndex:offset] department];
        NSLog(@"count; %lu",[[building employeesInBuilding]count]);
        for (int i = offset+1; i<[[building employeesInBuilding]count];i++)
        {
            NSLog(@"section 6, i = %d", i);
            Employee *e = [[building employeesInBuilding] objectAtIndex:i];
            if ([name isEqualToString:[e department]] ) {
                end = i;
            } else {
                end = (end - offset) + 1;
                return end;
            }
        
        }
        NSLog(@"Section 6 has:%d rows",(end - offset) + 1);
        return (end - offset) + 1;
    
    
    }
        else if (section == 7)
    {
        
        int offset = (int)([self tableView:tableView numberOfRowsInSection:1] + [self tableView:tableView numberOfRowsInSection:2] + [self tableView:tableView numberOfRowsInSection:3] + [self tableView:tableView numberOfRowsInSection:4] + [self tableView:tableView numberOfRowsInSection:5] + [self tableView:tableView numberOfRowsInSection:6]);
        int end = offset;
        NSLog(@"section 7, offset = %d", offset);
        NSString *name = [[[building employeesInBuilding]objectAtIndex:offset] department];
        
        for (int i = offset+1; i<[[building employeesInBuilding]count];i++)
        {
            Employee *e = [[building employeesInBuilding] objectAtIndex:i];
            if ([name isEqualToString:[e department]] ) {
                end = i;
            } else {
                end = (end - offset) + 1;
                return end;
            }
            
        }
        
        return (end - offset) + 1;



    
    }
    else if (section == 8)
    {
        
        int offset = (int)([self tableView:tableView numberOfRowsInSection:1] + [self tableView:tableView numberOfRowsInSection:2] + [self tableView:tableView numberOfRowsInSection:3] + [self tableView:tableView numberOfRowsInSection:4] + [self tableView:tableView numberOfRowsInSection:5] + [self tableView:tableView numberOfRowsInSection:6] + [self tableView:tableView numberOfRowsInSection:7]);
        int end = offset;
        NSString *name = [[[building employeesInBuilding]objectAtIndex:offset] department];
        
        for (int i = offset+1; i<[[building employeesInBuilding]count];i++)
        {
            Employee *e = [[building employeesInBuilding] objectAtIndex:i];
            if ([name isEqualToString:[e department]] ) {
                end = i;
            } else {
                end = (end - offset) + 1;
                return end;
            }
            
        }
        return (end - offset) + 1;
    }
//    else if (section == 9)
//    {
//        
//        int offset = (int)([self tableView:tableView numberOfRowsInSection:1] + [self tableView:tableView numberOfRowsInSection:2] + [self tableView:tableView numberOfRowsInSection:3] + [self tableView:tableView numberOfRowsInSection:4] + [self tableView:tableView numberOfRowsInSection:5] + [self tableView:tableView numberOfRowsInSection:6] + [self tableView:tableView numberOfRowsInSection:7] + [self tableView:tableView numberOfRowsInSection:8]);
//        int end = offset;
//        NSString *name = [[[building employeesInBuilding]objectAtIndex:offset] department];
//        
//        for (int i = offset+1; i<[[building employeesInBuilding]count];i++)
//        {
//            Employee *e = [[building employeesInBuilding] objectAtIndex:i];
//            if ([name isEqualToString:[e department]] ) {
//                end = i;
//            } else {
//                end = (end - offset) + 1;
//                return end;
//            }
//            
//        }
//        return (end - offset) +1;
//    }
//        else if (section == 10)
//    {
//        
//        int offset = (int)([self tableView:tableView numberOfRowsInSection:1] + [self tableView:tableView numberOfRowsInSection:2] + [self tableView:tableView numberOfRowsInSection:3] + [self tableView:tableView numberOfRowsInSection:4] + [self tableView:tableView numberOfRowsInSection:5] + [self tableView:tableView numberOfRowsInSection:6] + [self tableView:tableView numberOfRowsInSection:7] + [self tableView:tableView numberOfRowsInSection:8] + [self tableView:tableView numberOfRowsInSection:9]);
//        int end = offset;
//        NSString *name = [[[building employeesInBuilding]objectAtIndex:offset] department];
//        
//        for (int i = offset+1; i<[[building employeesInBuilding]count];i++)
//        {
//            Employee *e = [[building employeesInBuilding] objectAtIndex:i];
//            if ([name isEqualToString:[e department]] ) {
//                end = i;
//            } else {
//                end = (end - offset) + 1;
//                return end;
//            }
//            
//        }
//
//    }else if (section == 11)
//    {
//        
//        int offset = (int)([self tableView:tableView numberOfRowsInSection:1] + [self tableView:tableView numberOfRowsInSection:2] + [self tableView:tableView numberOfRowsInSection:3] + [self tableView:tableView numberOfRowsInSection:4] + [self tableView:tableView numberOfRowsInSection:5] + [self tableView:tableView numberOfRowsInSection:6] + [self tableView:tableView numberOfRowsInSection:7] + [self tableView:tableView numberOfRowsInSection:8] + [self tableView:tableView numberOfRowsInSection:9] + [self tableView:tableView numberOfRowsInSection:10]);
//        int end = offset;
//        NSString *name = [[[building employeesInBuilding]objectAtIndex:offset] department];
//        
//        for (int i = offset+1; i<[[building employeesInBuilding]count];i++)
//        {
//            Employee *e = [[building employeesInBuilding] objectAtIndex:i];
//            if ([name isEqualToString:[e department]] ) {
//                end = i;
//            } else {
//                end = (end - offset) + 1;
//                return end;
//            }
//            
//        }
//
//    }else if (section == 12)
//    {
//        
//        int offset = (int)([self tableView:tableView numberOfRowsInSection:1] + [self tableView:tableView numberOfRowsInSection:2] + [self tableView:tableView numberOfRowsInSection:3] + [self tableView:tableView numberOfRowsInSection:4] + [self tableView:tableView numberOfRowsInSection:5] + [self tableView:tableView numberOfRowsInSection:6] + [self tableView:tableView numberOfRowsInSection:7] + [self tableView:tableView numberOfRowsInSection:8] + [self tableView:tableView numberOfRowsInSection:9] + [self tableView:tableView numberOfRowsInSection:10] + [self tableView:tableView numberOfRowsInSection:11]);
//        int end = offset;
//        NSString *name = [[[building employeesInBuilding]objectAtIndex:offset] department];
//        
//        for (int i = offset+1; i<[[building employeesInBuilding]count];i++)
//        {
//            Employee *e = [[building employeesInBuilding] objectAtIndex:i];
//            if ([name isEqualToString:[e department]] ) {
//                end = i;
//            } else {
//                end = (end - offset) + 1;
//                return end;
//            }
//            
//        }
//        
//    }

    return 0;
}


-(UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    UITableViewCell *cell = [[UITableViewCell alloc]initWithStyle:UITableViewCellStyleDefault reuseIdentifier:@"UITableViewCell"];
    UIColor *newCellColor = [UIColor colorWithRed:254.0/255 green:255.0/255 blue:192.0/255 alpha:1];
    
    UIColor *newBackgroundColor = [UIColor colorWithRed:46.0/255 green:81.0/255 blue:47.0/255 alpha:1];
    
    [[cell textLabel]setTextColor:newBackgroundColor];
    [cell setBackgroundColor:newCellColor];
    [[cell textLabel]setLineBreakMode:NSLineBreakByWordWrapping];
    [[cell textLabel]setNumberOfLines:0];
    
    UIFont *newFont = [UIFont fontWithName:@"Kohinoor Devanagari" size:20.0f];
    UIFont *otherFont = [UIFont fontWithName:@"Kohinoor Devanagari" size:14.0f];
    
    
    [[cell textLabel]setFont:newFont];
    [[cell textLabel]setTextColor:newBackgroundColor];

    if (UI_USER_INTERFACE_IDIOM() == UIUserInterfaceIdiomPad)
    {
        [[cell textLabel]setFont:newFont];
    }else{
        [[cell textLabel]setFont:otherFont];
    }
    
    if ([indexPath section] == 0)
    {

        [cell setUserInteractionEnabled:NO];
        [[cell textLabel]setText:[building description]];

    }else if([indexPath section] == 1)
    {
        Employee *employee = [[building employeesInBuilding]objectAtIndex:[indexPath row]];
        [[cell textLabel]setText:[employee name]];

        
        return cell;
    }else if([indexPath section] == 2)
    {
        int offset = (int)([self tableView:tableView numberOfRowsInSection:1] + [indexPath row]);
        
        
        Employee *employee = [[building employeesInBuilding]objectAtIndex:offset];
        [[cell textLabel]setText:[employee name]];
        
        return cell;
    }else if([indexPath section] == 3)
    {
        int offset = (int)([self tableView:tableView numberOfRowsInSection:1] + [self tableView:tableView numberOfRowsInSection:2] + [indexPath row]);
        
        
        Employee *employee = [[building employeesInBuilding]objectAtIndex:offset];
        [[cell textLabel]setText:[employee name]];
        
        return cell;
    }else if([indexPath section] == 4)
    {
        int offset = (int)([self tableView:tableView numberOfRowsInSection:1] + [self tableView:tableView numberOfRowsInSection:2] + [self tableView:tableView numberOfRowsInSection:2] + [indexPath row]);
        
        
        Employee *employee = [[building employeesInBuilding]objectAtIndex:offset];
        [[cell textLabel]setText:[employee name]];
        
        return cell;
    }
    else if([indexPath section] == 5)
    {
        int offset = (int)([self tableView:tableView numberOfRowsInSection:1] + [self tableView:tableView numberOfRowsInSection:2] + [self tableView:tableView numberOfRowsInSection:3] + [self tableView:tableView numberOfRowsInSection:4] + [indexPath row]);
        
        
        Employee *employee = [[building employeesInBuilding]objectAtIndex:offset];
        [[cell textLabel]setText:[employee name]];
        
        return cell;
    }
    else if([indexPath section] == 6)
    {
        int offset = (int)([self tableView:tableView numberOfRowsInSection:1] + [self tableView:tableView numberOfRowsInSection:2] + [self tableView:tableView numberOfRowsInSection:3] + [self tableView:tableView numberOfRowsInSection:4] + [self tableView:tableView numberOfRowsInSection:5] + [indexPath row]);
        
        
        Employee *employee = [[building employeesInBuilding]objectAtIndex:offset];
        [[cell textLabel]setText:[employee name]];
        
        return cell;
    }
    else if([indexPath section] == 7)
    {
        int offset = (int)([self tableView:tableView numberOfRowsInSection:1] + [self tableView:tableView numberOfRowsInSection:2] + [self tableView:tableView numberOfRowsInSection:3] + [self tableView:tableView numberOfRowsInSection:4] + [self tableView:tableView numberOfRowsInSection:5] + [self tableView:tableView numberOfRowsInSection:6] + [indexPath row]);
        
        
        Employee *employee = [[building employeesInBuilding]objectAtIndex:offset];
        [[cell textLabel]setText:[employee name]];
        
        return cell;
    }
    else if([indexPath section] == 8)
    {
        int offset = (int)([self tableView:tableView numberOfRowsInSection:1] + [self tableView:tableView numberOfRowsInSection:2] + [self tableView:tableView numberOfRowsInSection:3] + [self tableView:tableView numberOfRowsInSection:4] + [self tableView:tableView numberOfRowsInSection:5] + [self tableView:tableView numberOfRowsInSection:6] + [self tableView:tableView numberOfRowsInSection:7] + [indexPath row]);
        
        
        Employee *employee = [[building employeesInBuilding]objectAtIndex:offset];
        [[cell textLabel]setText:[employee name]];
        
        return cell;
    }
    else if([indexPath section] == 9)
    {
                int offset = (int)([self tableView:tableView numberOfRowsInSection:1] + [self tableView:tableView numberOfRowsInSection:2] + [self tableView:tableView numberOfRowsInSection:3] + [self tableView:tableView numberOfRowsInSection:4] + [self tableView:tableView numberOfRowsInSection:5] + [self tableView:tableView numberOfRowsInSection:6] + [self tableView:tableView numberOfRowsInSection:7] + [self tableView:tableView numberOfRowsInSection:8] +[indexPath row]);
        
        
        Employee *employee = [[building employeesInBuilding]objectAtIndex:offset];
        [[cell textLabel]setText:[employee name]];
        
        return cell;
    }
    else if([indexPath section] == 10)
    {
        int offset = (int)([self tableView:tableView numberOfRowsInSection:1] + [self tableView:tableView numberOfRowsInSection:2] + [self tableView:tableView numberOfRowsInSection:3] + [self tableView:tableView numberOfRowsInSection:4] + [self tableView:tableView numberOfRowsInSection:5] + [self tableView:tableView numberOfRowsInSection:6] + [self tableView:tableView numberOfRowsInSection:7] + [self tableView:tableView numberOfRowsInSection:8] + [self tableView:tableView numberOfRowsInSection:9] + [indexPath row]);
        
        Employee *employee = [[building employeesInBuilding]objectAtIndex:offset];
        [[cell textLabel]setText:[employee name]];
        
        return cell;
    }
    else if([indexPath section] == 11)
    {
        int offset = (int)([self tableView:tableView numberOfRowsInSection:1] + [self tableView:tableView numberOfRowsInSection:2] + [self tableView:tableView numberOfRowsInSection:3] + [self tableView:tableView numberOfRowsInSection:4] + [self tableView:tableView numberOfRowsInSection:5] + [self tableView:tableView numberOfRowsInSection:6] + [self tableView:tableView numberOfRowsInSection:7] + [self tableView:tableView numberOfRowsInSection:8] + [self tableView:tableView numberOfRowsInSection:9] + [self tableView:tableView numberOfRowsInSection:10] + [indexPath row]);
        
        
        Employee *employee = [[building employeesInBuilding]objectAtIndex:offset];
        [[cell textLabel]setText:[employee name]];
        
        return cell;
    }

    return cell;
}

-(CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath
{
    if (UI_USER_INTERFACE_IDIOM() == UIUserInterfaceIdiomPad) {
        if( [indexPath section] == 0 )
        {
            return 450.0;
        } else {
            return 40.0;
        }
    } else {
        if( [indexPath section] == 0 )
        {
            return 350.0;
        } else {
            return 40.0;
        }
    }
    
}

- (UIView *)tableView:(UITableView *)tableView viewForHeaderInSection:(NSInteger)section
{
    
    UIColor *newCellColor = [UIColor colorWithRed:254.0/255 green:255.0/255 blue:192.0/255 alpha:1];
    UIFont *newFont = [UIFont fontWithName:@"Kohinoor Devanagari" size:12.5f];
    UILabel *myLabel = [[UILabel alloc] init];
    UIColor *newBackgroundColor = [UIColor colorWithRed:46.0/255 green:81.0/255 blue:47.0/255 alpha:1];
    
    myLabel.frame = CGRectMake(0, 0, 150, 20);
    if (UI_USER_INTERFACE_IDIOM() == UIUserInterfaceIdiomPad)
    {
        myLabel.textColor = newBackgroundColor;
    }else{
        myLabel.textColor = newCellColor;
    }
    
//    myLabel.shadowColor = [UIColor whiteColor];
    myLabel.font = newFont;

    UIView *headerView = [[UIView alloc] init];
    [headerView addSubview:myLabel];
    
    if (section == 0)
    {
        myLabel.text = @"Description";
    }else{
        myLabel.text = [[building departments]objectAtIndex:section - 1];
    }

    return headerView;
    
}

-(void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath
{

    MFMailComposeViewController *MVC = [[MFMailComposeViewController alloc]init];
//    MVC.delegate = self;
    MVC.mailComposeDelegate = self;
    [MVC setToRecipients:[NSArray arrayWithObjects: nil]];
    [self presentViewController:MVC animated:YES completion:nil];
    UITableViewCell *cell = [self tableView:tableView cellForRowAtIndexPath:indexPath];
    NSString *name = [[cell textLabel]text];
    for (Employee *e in [building employeesInBuilding]) {
        if ([[e name] isEqualToString:name]) {
            NSMutableArray *emailArray = [[NSMutableArray alloc]initWithObjects:[e email], nil];
            [MVC setToRecipients:emailArray];
            break;
        }
    }
}

- (void)mailComposeController:(MFMailComposeViewController*)controller didFinishWithResult:(MFMailComposeResult)result error:(NSError*)error {
    [self becomeFirstResponder];
    NSString *strMailResult;
    switch (result)
    {
        case MFMailComposeResultCancelled:
            strMailResult = NSLocalizedString(@"E-Mail Cancelled",@"");
            break;
        case MFMailComposeResultSaved:
            strMailResult = NSLocalizedString(@"E-Mail Saved",@"");
            break;
        case MFMailComposeResultSent:
            strMailResult = NSLocalizedString(@"E-Mail Sent",@"");
            break;
        case MFMailComposeResultFailed:
            strMailResult = NSLocalizedString(@"E-Mail Failed",@"");
            break;
        default:
            strMailResult = NSLocalizedString(@"E-Mail Not Sent",@"");
            break;
    }
    
    UIAlertView* alertView = [[UIAlertView alloc] initWithTitle:NSLocalizedString(@"Message",@"") message:strMailResult delegate:self  cancelButtonTitle:NSLocalizedString(@"OK",@"") otherButtonTitles:nil];
    [alertView show];
//    [self dismissModalViewControllerAnimated:YES];
    [self dismissViewControllerAnimated:YES completion:NULL];
}



@end

