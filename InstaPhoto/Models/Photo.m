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

- (void)fetchWithJSON
{

    NSString *url = @"http://localhost:4567/tableview";
    NSMutableArray *tempArray = [[NSMutableArray alloc] init];
    
    AFHTTPRequestOperationManager *manager = [AFHTTPRequestOperationManager manager];
    [manager GET:url parameters:nil success:^(AFHTTPRequestOperation *operation, id responseObject) {
                NSLog(@"JSON: %@", responseObject);
        for (NSDictionary *dicPhoto in responseObject) {
            Photo *photo = [[Photo alloc] init];
            photo.title = dicPhoto[@"title"];
            photo.detail = dicPhoto[@"detail"];
            photo.file = dicPhoto[@"file"];
            
            [tempArray addObject:photo];
        }

        [[NSNotificationCenter defaultCenter] postNotificationName:@"fetchWithJSONFinishedLoading" object:nil];
        
    } failure:^(AFHTTPRequestOperation *operation, NSError *error) {
        NSLog(@"Error: %@", error);
    }];
    
}

@end
