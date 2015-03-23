//
//  Photo.h
//  InstaPhoto
//
//  Created by huangzhaorong on 15/3/23.
//  Copyright (c) 2015年 huangzhaorong. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Photo : NSObject

@property (strong, nonatomic) NSString *title;
@property (strong, nonatomic) NSString *detail;
@property (strong, nonatomic) NSString *file;

@property (strong, nonatomic)NSArray *photos;

-(void)fetchWithJSON;

@end
