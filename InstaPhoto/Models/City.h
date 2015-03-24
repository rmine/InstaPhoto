//
//  City.h
//  InstaPhoto
//
//  Created by huangzhaorong on 15/3/24.
//  Copyright (c) 2015年 huangzhaorong. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface City : NSObject <NSCoding>

@property (strong, nonatomic) NSString *name;
@property (strong, nonatomic) NSString *state;
@property (strong, nonatomic) NSNumber *population;
@property (strong, nonatomic) NSString *notes;
@property (strong, nonatomic) NSArray *interestingPlaces;

-(id)initWithJSON:(NSDictionary *) dict;
+(NSString *)getPathToArchive;
+(void)saveCity:(City *)aCity;
+(City *)getCity;
@end
