//
//  FeedTableViewController.h
//  InstaPhoto
//
//  Created by huangzhaorong on 15/3/22.
//  Copyright (c) 2015年 huangzhaorong. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "Photo.h"

@interface FeedTableViewController : UITableViewController

@property (strong, nonatomic)NSArray *photos;
@property (strong, nonatomic)Photo *photo;

@end
