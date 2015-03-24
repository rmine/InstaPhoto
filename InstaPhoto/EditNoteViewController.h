//
//  EditNoteViewController.h
//  InstaPhoto
//
//  Created by huangzhaorong on 15/3/24.
//  Copyright (c) 2015年 huangzhaorong. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "City.h"

@interface EditNoteViewController : UIViewController <UITextFieldDelegate>

@property (strong, nonatomic) City *city;
@property (strong, nonatomic) UITextField *notesField;

-(void)savePressed;

@end
