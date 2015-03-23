//
//  Profile.h
//  InstaPhoto
//
//  Created by huangzhaorong on 15/3/23.
//  Copyright (c) 2015年 huangzhaorong. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Profile : NSObject

@property (strong, nonatomic) NSString *firstName;
@property (strong, nonatomic) NSString *lastName;
@property (strong, nonatomic) NSString *city;
@property (strong, nonatomic) NSString *profilePhoto;
@property (strong, nonatomic) NSString *biography;
@property (strong, nonatomic) NSString *memberSince;

-(id)initWithJSON;

@end
