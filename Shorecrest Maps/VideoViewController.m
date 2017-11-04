//
//  VideoViewController.m
//  Shorecrest Maps
//
//  Created by comp_sci on 9/26/14.
//  Copyright (c) 2014 SPS. All rights reserved.
//

#import "VideoViewController.h"



@interface VideoViewController ()

@end

@implementation VideoViewController

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
    
    UITabBarItem *tbi = [self tabBarItem];
    [tbi setTitle:@"History"];
    
    UIImage *image = [UIImage imageNamed: @"Bookmarks.png"];
    [tbi setImage:image];
    
       
    UINavigationItem *nav = [self navigationItem];
    [nav setTitle:@"Shorecrest History"];
        
        [[self view]setBackgroundColor:[UIColor blackColor]];
    }
    return self;
}

-(void)viewDidAppear:(BOOL)animated
{
    NSString *filepath = [[NSBundle mainBundle] pathForResource:@"History of Shorecrest" ofType:@"mp4"];
    NSURL *fileURL    =   [NSURL fileURLWithPath:filepath];
    
    MPMoviePlayerController *movie = [[MPMoviePlayerController alloc]initWithContentURL:fileURL];
    movie.controlStyle = MPMovieControlStyleFullscreen;
    [movie setMovieSourceType:MPMovieSourceTypeFile];
    
    if (UI_USER_INTERFACE_IDIOM() == UIUserInterfaceIdiomPad)
    {
        CGRect rect = CGRectMake(0,0, self.view.bounds.size.width, 980);
        [movie.view setFrame:rect];
        [self.view addSubview:movie.view];
        
    }else if (UI_USER_INTERFACE_IDIOM() == UIUserInterfaceIdiomPhone)
    {
        CGRect rect = CGRectMake(0,0, self.view.bounds.size.width, 550);
        [movie.view setFrame:rect];
        [self.view addSubview:movie.view];
    }
    

    
    [movie prepareToPlay];
    //----------------------------------
    


    movie.scalingMode = MPMovieScalingModeAspectFit;


    self.myMovieController = movie;
    
    

//    
//    self.myMovieController = moviePlayer;
//    [self.view addSubview: self.myMovieController.view];
//    
//    [[NSNotificationCenter defaultCenter] addObserver:self
//                                             selector:@selector(playMediaFinished:)
//                                                 name:MPMoviePlayerPlaybackDidFinishNotification
//                                               object:moviePlayer];
//    [self.myMovieController play];
    
    
//----------------------------------------------------------------------------------
    
    //UIWindow *backgroundWindow = [[UIApplication sharedApplication] keyWindow];
    //[movie.view setFrame:backgroundWindow.frame];
    //[backgroundWindow addSubview:movie.view];
    
    [self.myMovieController play];

}

- (void)viewDidLoad
{
    
    [super viewDidLoad];
    
    
//    player.frame = CGRectMake(0, 0, 1024, 768);
//    [self.view addSubview:player.view];
//    player.fullscreen = NO;
//    [player play];
    
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
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
