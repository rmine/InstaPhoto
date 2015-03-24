//
//  CityViewController.h
//  InstaPhoto
//
//  Created by huangzhaorong on 15/3/24.
//  Copyright (c) 2015年 huangzhaorong. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "City.h"

@interface CityViewController : UIViewController 

@property (strong, nonatomic) City *city;
@property (strong, nonatomic) UILabel *notesLabel;
@property (strong, nonatomic) UITextField *notesField;

-(void)editPressed;
-(void)enteringBackground;
@end
