//
//  ImageStore.h
//  Shorecrest Maps
//
//  Created by Eric Hunt on 5/27/14.
//  Copyright (c) 2014 SPS. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface ImageStore : NSObject

@property (nonatomic, strong)NSMutableDictionary *dictionary;

+(ImageStore *)sharedStore;

-(void)setImage:(UIImage *)image forKey:(NSString *)key;
-(UIImage *)imageForKey:(NSString *)key;
-(void)deleteImageForKey:(NSString *)key;

@end
