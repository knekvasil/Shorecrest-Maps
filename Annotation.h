//
//  Annotation.h
//  Shorecrest Maps
//
//  Created by admin on 4/23/14.
//  Copyright (c) 2014 SPS. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <MapKit/MapKit.h>


@interface Annotation : NSObject <MKAnnotation>

@property (nonatomic, copy)NSString *title;
@property (nonatomic, copy)NSString *subtitle;
@property (nonatomic, assign)CLLocationCoordinate2D coordinate;


@end
