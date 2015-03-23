//
//  ProfileViewController.h
//  InstaPhoto
//
//  Created by huangzhaorong on 15/3/20.
//  Copyright (c) 2015年 huangzhaorong. All rights reserved.
//

#import "ViewController.h"

#import "Profile.h"

@interface ProfileViewController : ViewController

@property (strong, nonatomic) UIScrollView *scrollView;
@property (strong, nonatomic) NSDictionary *userProfile;

@property (strong, nonatomic) Profile *profile;

@end
