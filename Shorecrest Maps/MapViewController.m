//
//  MapViewController.m
//  Shorecrest Maps
//
//  Created by admin on 4/23/14.
//  Copyright (c) 2014 SPS. All rights reserved.
//

#import "MapViewController.h"
#import "Annotation.h"
#import "InformationViewController.h"
#import "BuildingStore.h"
#import "Building.h"

@interface MapViewController ()

@end

#define CAMPUS_LATITUDE 27.819831;
#define CAMPUS_LONGITUDE -82.631781;


#define LANDY_LATITUDE 27.819123;
#define LANDY_LONGITUDE -82.631085;

#define JRT_LATITUDE 27.819396;
#define JRT_LONGITUDE -82.631678;

#define SAC_LATITUDE 27.819245;
#define SAC_LONGITUDE -82.631976;

#define LIBRARY_LATITUDE 27.819252;
#define LIBRARY_LONGITUDE -82.632185;

#define MSASCENTER_LATITUDE 27.820588;
#define MSASCENTER_LONGITUDE -82.630974;

#define MSSHERCENTER_LATITUDE 27.820225;
#define MSSHERCENTER_LONGITUDE -82.631459;

#define ATHLETICCENTER_LATITUDE 27.81988;
#define ATHLETICCENTER_LONGITUDE -82.630997;

#define SCITECH_LATITUDE 27.819309;
#define SCITECH_LONGITUDE -82.630702;

#define EXPERIENTIAL_LATITUDE 27.818929;
#define EXPERIENTIAL_LONGITUDE -82.632585;

#define MINIGYM_LATITUDE 27.819518;
#define MINIGYM_LONGITUDE -82.633181;

#define K4CLASSROOMS_LATITUDE 27.819257;
#define K4CLASSROOMS_LONGITUDE -82.633939;

#define MUSIC_LATITUDE 27.818873;
#define MUSIC_LONGITUDE -82.633562;

#define COMPUTERLAB_LATITUDE 27.819124;
#define COMPUTERLAB_LONGITUDE -82.633578;

#define AFTERCARE_LATITUDE 27.819489;
#define AFTERCARE_LONGITUDE -82.633621;

#define ALPHA_LATITUDE 27.819115;
#define ALPHA_LONGITUDE -82.633192;

#define HASKELLFIELD_LATITUDE 27.820472;
#define HASKELLFIELD_LONGITUDE -82.629755;

#define HERNANDEZFIELD_LATITUDE 27.81921;
#define HERNANDEZFIELD_LONGITUDE -82.629836;

#define REILLYFIELD_LATITUDE 27.820358;
#define REILLYFIELD_LONGITUDE -82.632200;

#define LDART_LATITUDE 27.818887;
#define LDART_LONGITUDE -82.633214;

#define LDSPANISH_LATITUDE 27.819688;
#define LDSPANISH_LONGITUDE -82.633520;

#define LDLEARNINGCENTER_LATITUDE 27.819702;
#define LDLEARNINGCENTER_LONGITUDE -82.633219;

#define ADMINBUILDING_LATITUDE 27.819593;
#define ADMINBUILDING_LONGITUDE -82.632554;

#define THE_SPANIPHONE 0.004F;
#define THE_SPANIPAD 0.002F;

@implementation MapViewController

@synthesize mapView, heading;

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
        
//        UIColor *newCellColor = [UIColor colorWithRed:254.0/255 green:255.0/255 blue:192.0/255 alpha:1];
//        
////        UIImage *tabBarBackground = [UIImage imageNamed:@"AnimationImage.png"];
////        [[UITabBar appearance]setBackgroundImage:tabBarBackground];
//        
//        
//        UIColor *newBackgroundColor = [UIColor colorWithRed:46.0/255 green:81.0/255 blue:47.0/255 alpha:1];
//        
//        NSShadow *shadow = [NSShadow new];
//        shadow.shadowColor = newCellColor;
//        
//        [[UINavigationBar appearance] setTitleTextAttributes: @{
//                                                                NSForegroundColorAttributeName: newCellColor,
//                                                                NSFontAttributeName: [UIFont fontWithName:@"Kohinoor Devanagari" size:20.0f],
//                                                                NSShadowAttributeName: shadow
//                                                                }];
//        
        UITabBarItem *tbi = [self tabBarItem];
        [tbi setTitle:@"Map"];
        
        
        UIImage *image = [UIImage imageNamed: @"World_Times.png"];
        [tbi setImage:image];
        

        UINavigationItem *nav = [self navigationItem];
        
        [nav setTitle:@"Shorecrest Maps"];
//        
//        [UITabBarItem.appearance setTitleTextAttributes:@{
//                                                          NSForegroundColorAttributeName : newCellColor } forState:UIControlStateNormal];
        
        
        
        
        
//        [UITabBarItem.appearance setTitleTextAttributes:@{
//                                                          NSForegroundColorAttributeName :newCellColor } forState:UIControlStateSelected];
        
        
        
        heading = 90;
        
        _locationManager = [[CLLocationManager alloc] init];
        [_locationManager setDelegate:self];
        [_locationManager setDesiredAccuracy:kCLLocationAccuracyBest];
        
        [[self mapView] setDelegate:self];
        
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    // Do any additional setup after loading the view from its nib.
    
    //[mapView setDelegate:self];
    
    [self.navigationController.navigationBar setTranslucent:NO];
    [mapView setMapType:MKMapTypeHybrid];
    
    MKCoordinateRegion myRegion;
    
    CLLocationCoordinate2D center;
    center.latitude = CAMPUS_LATITUDE;
    center.longitude = CAMPUS_LONGITUDE;
    
    if (UI_USER_INTERFACE_IDIOM() == UIUserInterfaceIdiomPad)
    {
        MKCoordinateSpan span;
        span.latitudeDelta = THE_SPANIPAD;
        span.longitudeDelta = THE_SPANIPAD;
        myRegion.center = center;
        myRegion.span = span;
        
    }
    else if (UI_USER_INTERFACE_IDIOM() == UIUserInterfaceIdiomPhone)
    {
        MKCoordinateSpan span;
        span.latitudeDelta = THE_SPANIPHONE;
        span.longitudeDelta = THE_SPANIPHONE;
        myRegion.center = center;
        myRegion.span = span;
    }
    
    mapView.delegate = self;
    _locationManager.delegate = self;
    self.locationManager = [[CLLocationManager alloc]init];
    
    if (IF_IOS8) {
        [self.locationManager requestWhenInUseAuthorization];
        [self.locationManager requestAlwaysAuthorization];
    }
    
//    [_locationManager startUpdatingLocation];
    
    mapView.showsUserLocation = YES;
    
    [mapView setRegion:myRegion animated:YES];
    
    NSMutableArray *locations = [[NSMutableArray alloc]init];
    CLLocationCoordinate2D location;
    
    Annotation *myAnn = [[Annotation alloc] init];
    location.latitude = LANDY_LATITUDE;
    location.longitude = LANDY_LONGITUDE;
    
    [myAnn setTitle:@"Landy Hall"];
    [myAnn setCoordinate:location];
    
    [locations addObject:myAnn];
    
    myAnn = [[Annotation alloc] init];
    location.latitude = JRT_LATITUDE;
    location.longitude = JRT_LONGITUDE;
    
    [myAnn setTitle:@"Janet Root Theatre"];
    [myAnn setCoordinate:location];
    
    [locations addObject:myAnn];
    
    myAnn = [[Annotation alloc] init];
    location.latitude = SAC_LATITUDE;
    location.longitude = SAC_LONGITUDE;
    
    [myAnn setTitle:@"Student Activity Center"];
    [myAnn setCoordinate:location];
    
    [locations addObject:myAnn];
    
    myAnn = [[Annotation alloc] init];
    location.latitude = LIBRARY_LATITUDE;
    location.longitude = LIBRARY_LONGITUDE;
    
    [myAnn setTitle:@"Carleen Vinall Haskell Library"];
    [myAnn setCoordinate:location];
    
    [locations addObject:myAnn];
    
    myAnn = [[Annotation alloc] init];
    location.latitude = MSASCENTER_LATITUDE;
    location.longitude = MSASCENTER_LONGITUDE;
    
    [myAnn setTitle:@"MS Arts & Science Center"];
    [myAnn setCoordinate:location];
    
    [locations addObject:myAnn];
    
    myAnn = [[Annotation alloc] init];
    location.latitude = MSSHERCENTER_LATITUDE;
    location.longitude = MSSHERCENTER_LONGITUDE;
    
    [myAnn setTitle:@"MS Sher Center"];
    [myAnn setCoordinate:location];
    
    [locations addObject:myAnn];
    
    myAnn = [[Annotation alloc] init];
    location.latitude = ATHLETICCENTER_LATITUDE;
    location.longitude = ATHLETICCENTER_LONGITUDE;
    
    [myAnn setTitle:@"Athletic Center"];
    [myAnn setCoordinate:location];
    
    [locations addObject:myAnn];
    
    myAnn = [[Annotation alloc] init];
    location.latitude = SCITECH_LATITUDE;
    location.longitude = SCITECH_LONGITUDE;
    
    [myAnn setTitle:@"US ST Building"];
    [myAnn setCoordinate:location];
    
    [locations addObject:myAnn];
    
    myAnn = [[Annotation alloc] init];
    location.latitude = EXPERIENTIAL_LATITUDE;
    location.longitude = EXPERIENTIAL_LONGITUDE;
    
    [myAnn setTitle:@"Experiential School"];
    [myAnn setCoordinate:location];
    
    [locations addObject:myAnn];
    
    myAnn = [[Annotation alloc] init];
    location.latitude = MINIGYM_LATITUDE;
    location.longitude = MINIGYM_LONGITUDE;
    
    [myAnn setTitle:@"Mini Gym"];
    [myAnn setCoordinate:location];
    
    [locations addObject:myAnn];
    
    myAnn = [[Annotation alloc] init];
    location.latitude = K4CLASSROOMS_LATITUDE;
    location.longitude = K4CLASSROOMS_LONGITUDE;
    
    [myAnn setTitle:@"LS K-4 Classrooms"];
    [myAnn setCoordinate:location];
    
    [locations addObject:myAnn];
    
    myAnn = [[Annotation alloc] init];
    location.latitude = MUSIC_LATITUDE;
    location.longitude = MUSIC_LONGITUDE;
    
    [myAnn setTitle:@"Music + Resource Room"];
    [myAnn setCoordinate:location];
    
    [locations addObject:myAnn];
    
    myAnn = [[Annotation alloc] init];
    location.latitude = COMPUTERLAB_LATITUDE;
    location.longitude = COMPUTERLAB_LONGITUDE;
    
    [myAnn setTitle:@"LD Computer Lab"];
    [myAnn setCoordinate:location];
    
    [locations addObject:myAnn];
    
    myAnn = [[Annotation alloc] init];
    location.latitude = AFTERCARE_LATITUDE;
    location.longitude = AFTERCARE_LONGITUDE;
    
    [myAnn setTitle:@"LD Extended Day"];
    [myAnn setCoordinate:location];
    
    [locations addObject:myAnn];
    
    myAnn = [[Annotation alloc] init];
    location.latitude = ALPHA_LATITUDE;
    location.longitude = ALPHA_LONGITUDE;
    
    [myAnn setTitle:@"Alpha"];
    [myAnn setCoordinate:location];
    
    [locations addObject:myAnn];
    
    myAnn = [[Annotation alloc] init];
    location.latitude = HASKELLFIELD_LATITUDE;
    location.longitude = HASKELLFIELD_LONGITUDE;
    
    [myAnn setTitle:@"Haskell Field"];
    [myAnn setCoordinate:location];
    
    [locations addObject:myAnn];
    
    myAnn = [[Annotation alloc] init];
    location.latitude = HERNANDEZFIELD_LATITUDE;
    location.longitude = HERNANDEZFIELD_LONGITUDE;
    
    [myAnn setTitle:@"Hernandez Family Field"];
    [myAnn setCoordinate:location];
    
    [locations addObject:myAnn];
    
    myAnn = [[Annotation alloc] init];
    location.latitude = REILLYFIELD_LATITUDE;
    location.longitude = REILLYFIELD_LONGITUDE;
    
    [myAnn setTitle:@"Reilly Field"];
    [myAnn setCoordinate:location];
    
    [locations addObject:myAnn];
    
    myAnn = [[Annotation alloc] init];
    location.latitude = LDART_LATITUDE;
    location.longitude = LDART_LONGITUDE;
    
    [myAnn setTitle:@"LS Art"];
    [myAnn setCoordinate:location];
    
    [locations addObject:myAnn];
    
    myAnn = [[Annotation alloc] init];
    location.latitude = LDSPANISH_LATITUDE ;
    location.longitude = LDSPANISH_LONGITUDE;
    
    [myAnn setTitle:@"LS Spanish"];
    [myAnn setCoordinate:location];
    
    [locations addObject:myAnn];
    
    myAnn = [[Annotation alloc] init];
    location.latitude = LDLEARNINGCENTER_LATITUDE;
    location.longitude = LDLEARNINGCENTER_LONGITUDE;
    
    [myAnn setTitle:@"LS Learning Center"];
    [myAnn setCoordinate:location];
    
    [locations addObject:myAnn];
    
    myAnn = [[Annotation alloc] init];
    location.latitude = ADMINBUILDING_LATITUDE;
    location.longitude = ADMINBUILDING_LONGITUDE;
    
    [myAnn setTitle:@"Administration Building"];
    [myAnn setCoordinate:location];
    
    [locations addObject:myAnn];

    [[self mapView] addAnnotations:locations];
    
}

-(void)viewWillAppear:(BOOL)animated
{
    MKMapCamera *camera = [[mapView camera]copy];
    [camera setHeading:heading];
    [mapView setCamera:camera animated:YES];
}

-(void)viewWillDisappear:(BOOL)animated
{
    heading = [[mapView camera]heading];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

-(MKAnnotationView *)mapView:(MKMapView *)sender viewForAnnotation:(id<MKAnnotation>)annotation
{
    if ([annotation isKindOfClass:[MKUserLocation class]])
        return nil;
    UIColor *newBackgroundColor = [UIColor colorWithRed:46.0/255 green:81.0/255 blue:47.0/255 alpha:1];
    static NSString *reuseId = @"StandardPin";

    MKPinAnnotationView *aView = (MKPinAnnotationView *)[sender dequeueReusableAnnotationViewWithIdentifier:reuseId];
    
    if (aView == nil)
    {
        aView = [[MKPinAnnotationView alloc] initWithAnnotation:annotation reuseIdentifier:reuseId];
        
        UIImage *image = [UIImage imageNamed:@"home-7.png"];
        UIImageView *imageView = [[UIImageView alloc] initWithImage:image];
        
//        UILabel *labelView = ((UILabel *)aView);
//        labelView.textColor = newBackgroundColor;
        
        aView.rightCalloutAccessoryView = [UIButton buttonWithType:UIButtonTypeDetailDisclosure];
        [aView.rightCalloutAccessoryView setTag:1];
        
        aView.leftCalloutAccessoryView = imageView;
        aView.pinColor = MKPinAnnotationColorGreen;
        aView.canShowCallout = YES;
    }
    aView.annotation = annotation;
    
    return aView;
}

-(void)mapView:(MKMapView *)mapView annotationView:(MKAnnotationView *)view calloutAccessoryControlTapped:(UIControl *)control
{
    if ([control tag] == 1)
    {
        NSArray *array = [[BuildingStore sharedStore]allBuildings];
        
        InformationViewController *ivc = [[InformationViewController alloc]init];
        
        for (int i = 0; i < [[[BuildingStore sharedStore]allBuildings]count] ;i++)
        {
            if (view.annotation.title == [[array objectAtIndex:i]name])
            {
                [ivc setBuilding:[array objectAtIndex:i]];
                
            }
        }
        
        if (UI_USER_INTERFACE_IDIOM() == UIUserInterfaceIdiomPad) {
            ivc.modalPresentationStyle = UIModalPresentationFormSheet;
            ivc.modalTransitionStyle = UIModalTransitionStyleCoverVertical;
            [self presentViewController:ivc animated:YES completion:NULL];

        }else if (UI_USER_INTERFACE_IDIOM() == UIUserInterfaceIdiomPhone)
        {
            [[self navigationController]pushViewController:ivc animated:YES];
        }

    }
}

-(void)locationManager:(CLLocationManager *)manager didUpdateLocations:(NSArray *)locations
{
    CLLocation *newLocation = [locations lastObject];
    NSLog(@"%@", newLocation);
    
    NSTimeInterval t = [[newLocation timestamp] timeIntervalSinceNow];
    
    if (t < -180) {
        return;
    }
    
//    [self foundLocation:newLocation];
}

//-(void)foundLocation:(CLLocation *)loc
//{
//    [_locationManager stopUpdatingLocation];
//}

-(void)locationManager:(CLLocationManager *)manager didFailWithError:(NSError *)error
{
    NSLog(@"Could not find location");
}

//-(void)mapView:(MKMapView *)mapView didUpdateUserLocation:(MKUserLocation *)userLocation
//{
//    CLLocationCoordinate2D loc = [userLocation coordinate];
//    MKCoordinateRegion region = MKCoordinateRegionMakeWithDistance(loc, 250, 250);
//    [mapView setRegion:region animated:YES];
//    
//}

//-(void)findLocation
//{
//    [_locationManager startUpdatingLocation];
//    [_activityIndicator startAnimating];
//
//}








@end
