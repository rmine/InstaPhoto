//
//  PhotoViewController.h
//  InstaPhoto
//
//  Created by huangzhaorong on 15/3/22.
//  Copyright (c) 2015年 huangzhaorong. All rights reserved.
//

#import "ViewController.h"

@interface PhotoViewController : ViewController

@property (strong, nonatomic) NSString *imageFileName;
@property (strong, nonatomic) NSArray *imageFileNames;
@property (strong, nonatomic) NSDictionary *photo;

@end
