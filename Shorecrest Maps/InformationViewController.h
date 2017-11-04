//
//  InformationViewController.h
//  Shorecrest Maps
//
//  Created by admin on 5/1/14.
//  Copyright (c) 2014 SPS. All rights reserved.
//
#import <MessageUI/MessageUI.h>
#import <UIKit/UIKit.h>
#import "Building.h"


@interface InformationViewController : UIViewController <MFMailComposeViewControllerDelegate>

@property (nonatomic) Building *building;

@property (weak, nonatomic) IBOutlet UIImageView *imageView;

@property (weak, nonatomic) IBOutlet UILabel *nameLabel;

- (IBAction)backButton:(id)sender;

@property (weak, nonatomic) IBOutlet UITableView *informationTableView;


@end
