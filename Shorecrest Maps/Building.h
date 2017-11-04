//
//  Building.h
//  Shorecrest Maps
//
//  Created by admin on 4/25/14.
//  Copyright (c) 2014 SPS. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Employee.h"


@interface Building : NSObject

@property NSString *name;
@property int *location;
@property NSString *description;
@property NSString *history;
@property UIImage *image;
@property NSString *imageKey;
@property NSArray *departments;
@property NSMutableArray *employeesInBuilding;



- (id)initWithName:(NSString *)n location:(int *)loc description:(NSString *)des history:(NSString *)h image:(UIImage *)im employeesInBuilding:(NSMutableArray *)em;




@end
