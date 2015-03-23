//
//  Profile.m
//  InstaPhoto
//
//  Created by huangzhaorong on 15/3/23.
//  Copyright (c) 2015年 huangzhaorong. All rights reserved.
//

#import "Profile.h"
#import "AFNetworking.h"
#import "UIKit+AFNetworking.h"
#import "AFHTTPRequestOperation.h"

@implementation Profile

-(id)init{
    return [super init];
}

-(id)initWithData{
    return nil;
}

-(id)initWithJSON{
    self = [super init];
    if (self){
        NSString *url = @"http://localhost:4567/profile";
        
        AFHTTPRequestOperationManager *manager = [AFHTTPRequestOperationManager manager];
        [manager GET:url parameters:nil success:^(AFHTTPRequestOperation *operation, id responseObject) {
//            NSLog(@"JSON: %@", responseObject);
            self.firstName = responseObject[@"firstName"];
            self.lastName = responseObject[@"lastName"];
            self.city = responseObject[@"city"];
            self.biography = responseObject[@"biography"];
            self.memberSince = responseObject[@"memberSince"];
            [[NSNotificationCenter defaultCenter] postNotificationName:@"initWithJSONFinishedLoading" object:nil];
            
        } failure:^(AFHTTPRequestOperation *operation, NSError *error) {
            NSLog(@"Error: %@", error);
        }];

    }
    return self;
}

@end
