//
//  EmployeeStore.h
//  Shorecrest Maps
//
//  Created by comp_sci on 10/13/14.
//  Copyright (c) 2014 SPS. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface EmployeeStore : NSObject

@property (nonatomic) NSMutableArray *allEmployees;

+(EmployeeStore *)sharedStore;
-(NSMutableArray *)allEmployees;

@end
