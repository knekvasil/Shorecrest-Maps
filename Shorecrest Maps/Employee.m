//
//  Employee.m
//  Shorecrest Maps
//
//  Created by comp_sci on 10/13/14.
//  Copyright (c) 2014 SPS. All rights reserved.
//

#import "Employee.h"

@implementation Employee

@synthesize name, department, email, phoneExt, buildingName, school;

-(id)initWithName: (NSString *)n department:(NSString *)dep email:(NSString *)mail phoneExt:(NSString *)phone buildingName:(NSString *)bname school:(NSString *)s;
{
    self = [super init];
    if (self) {
        name = n;
        department = dep;
        email = mail;
        phoneExt = phone;
        buildingName = bname;
        school = s;
    }
    return self;
}

-(NSString *)description
{
    return name;
}







@end
