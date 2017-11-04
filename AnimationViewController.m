//
//  AnimationViewController.m
//  Shorecrest Maps
//
//  Created by Comp_Sci on 1/15/15.
//  Copyright (c) 2015 SPS. All rights reserved.
//

#import "AnimationViewController.h"
#import "AppDelegate.h"
#import "MapViewController.h"
#import "TableViewController.h"
#import "VideoViewController.h"


@interface AnimationViewController ()

@end

@implementation AnimationViewController

@synthesize animationImage;

- (void)viewDidLoad {
    [super viewDidLoad];
            UIColor *newBackgroundColor = [UIColor colorWithRed:46.0/255 green:81.0/255 blue:47.0/255 alpha:1];
    [[self view]setBackgroundColor:newBackgroundColor];

}
- (void)viewDidAppear:(BOOL)animated
{
    
    CABasicAnimation *imageFade = [CABasicAnimation animationWithKeyPath:@"opacity"];
    
    [imageFade setDelegate:self];
    
    [imageFade setFromValue:[NSNumber numberWithFloat:0.0]];
    [imageFade setToValue:[NSNumber numberWithFloat:1.0]];
    [imageFade setDuration:3.0];
    [[animationImage layer]addAnimation:imageFade forKey:@"imageFade"];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}
-(void)animationDidStop:(CAAnimation *)anim finished:(BOOL)flag
{
    UIColor *newBackgroundColor = [UIColor colorWithRed:46.0/255 green:81.0/255 blue:47.0/255 alpha:1];

    
    UITabBarController *tabBar = [[UITabBarController alloc]init];
    
    [[tabBar view] setTintColor:newBackgroundColor];
    MapViewController *wvc = [[MapViewController alloc]init];
    TableViewController *tvc = [[TableViewController alloc]init];
    VideoViewController *vvc = [[VideoViewController alloc]init];
    UINavigationController *navController = [[UINavigationController alloc]initWithRootViewController:wvc];
    
    UINavigationController *navController2 = [[UINavigationController alloc]initWithRootViewController:tvc];
    
    
    NSArray *viewControllers = [[NSArray alloc]initWithObjects:navController,navController2, vvc, nil];
    
    [tabBar setViewControllers:viewControllers];
    [self presentViewController:tabBar animated:YES completion:nil];
    

}


/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
