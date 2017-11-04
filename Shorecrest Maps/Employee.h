//
//  Employee.h
//  Shorecrest Maps
//
//  Created by comp_sci on 10/13/14.
//  Copyright (c) 2014 SPS. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Employee : NSObject

@property NSString *name;
@property NSString *department;
@property NSString *email;
@property NSString *phoneExt;
@property NSString *buildingName;
@property NSString *school;          //(ES,LS,MS,UP,AD)

-(id)initWithName: (NSString *)n department:(NSString *)dep email:(NSString *)mail phoneExt:(NSString *)phone buildingName:(NSString *)bname school:(NSString *)s;




@end
