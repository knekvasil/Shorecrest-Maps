//
//  BuildingStore.h
//  Shorecrest Maps
//
//  Created by admin on 4/28/14.
//  Copyright (c) 2014 SPS. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface BuildingStore : NSObject

@property (nonatomic) NSMutableArray *allBuildings;


+(BuildingStore *)sharedStore;
-(NSArray *)allBuildings;







@end
