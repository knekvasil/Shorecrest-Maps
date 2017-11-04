//
//  Building.m
//  Shorecrest Maps
//
//  Created by admin on 4/25/14.
//  Copyright (c) 2014 SPS. All rights reserved.
//

#import "Building.h"

@implementation Building

@synthesize name, location, description, history, image, imageKey, employeesInBuilding;

- (id)initWithName:(NSString *)n location:(int *)loc description:(NSString *)des history:(NSString *)h image:(UIImage *)im employeesInBuilding:(NSMutableArray *)em;
{
    self = [super init];
    if (self)
    {
        name = n;
        location = loc;
        description = des;
        history = h;
        image = im;
        employeesInBuilding = em;
    
    }
    return self;
}
     
     
@end
