//
//  Photo.m
//  InstaPhoto
//
//  Created by huangzhaorong on 15/3/23.
//  Copyright (c) 2015年 huangzhaorong. All rights reserved.
//

#import "Photo.h"
#import "AFNetworking.h"
#import "UIKit+AFNetworking.h"
#import "AFHTTPRequestOperation.h"

@implementation Photo

-(id)init{
    return [super init];
}

- (NSMutableArray *)fetchWithJSON
{
    NSString *url = @"http://localhost:4567/tableview";
    NSMutableArray *tmpArray = [[NSMutableArray alloc] init];
    
    AFHTTPRequestOperationManager *manager = [AFHTTPRequestOperationManager manager];
    [manager GET:url parameters:nil success:^(AFHTTPRequestOperation *operation, id responseObject) {
//                NSLog(@"JSON: %@", responseObject);
        for (NSDictionary *dict in responseObject){
            Photo *photo = [[Photo alloc] init];
            photo.title = dict[@"title"];
            photo.detail = dict[@"detail"];
            photo.file = dict[@"file"];
            
            [tmpArray addObject:photo];
        }
        
        [[NSNotificationCenter defaultCenter] postNotificationName:@"fetchWithJSONFinishedLoading" object:nil];
        
    } failure:^(AFHTTPRequestOperation *operation, NSError *error) {
        NSLog(@"Error: %@", error);
    }];
    
    return tmpArray;
}

@end
