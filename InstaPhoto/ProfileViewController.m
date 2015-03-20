//
//  ProfileViewController.m
//  InstaPhoto
//
//  Created by huangzhaorong on 15/3/20.
//  Copyright (c) 2015年 huangzhaorong. All rights reserved.
//

#import "ProfileViewController.h"

@interface ProfileViewController ()

@end

@implementation ProfileViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.scrollView = [[UIScrollView alloc] initWithFrame:self.view.bounds];
//    self.scrollView.autoresizingMask = (UIViewAutoresizingFlexibleHeight | UIViewAutoresizingFlexibleWidth);
    self.scrollView.contentInset = UIEdgeInsetsMake(0, 0, 49, 0);
    self.scrollView.contentSize = CGSizeMake(375, 680);
    
    
    self.view.backgroundColor = [UIColor whiteColor];
    
    UIImageView *avatarView =  [[UIImageView alloc] initWithImage:[UIImage imageNamed:@"/Users/huangzhaorong/Downloads/images/avatar.png"]];
//    [avatarView setContentMode:UIViewContentModeScaleAspectFit];
//    avatarView.frame = self.view.frame;
    avatarView.frame = CGRectMake(20, 20, 64, 64);
    [self.scrollView addSubview:avatarView];
    
    UILabel *nameLabel = [[UILabel alloc] initWithFrame:CGRectMake(20,140,280,40)];
    nameLabel.text = @"Name: RMine";
    [self.scrollView addSubview:nameLabel];
    
    UILabel *cityLabel = [[UILabel alloc] initWithFrame:CGRectMake(20,200,280,40)];
    cityLabel.text = @"Name: Nanjing";
    [self.scrollView addSubview:cityLabel];
    
    UITextView *biography = [[UITextView alloc] initWithFrame:CGRectMake(12,460,300,180)];
    biography.font = [UIFont fontWithName:@"Helvetica" size:15];
    biography.editable = NO;
    biography.text = @"RMine is the ... In a storyboard-based application, you will often want to do a little preparation before navigation (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender Get the new view controller using [segue destinationViewController].Pass the selected object to the new view controller.";
    [self.scrollView addSubview:biography];
    
    UILabel *memberSinceLable = [[UILabel alloc] initWithFrame:CGRectMake(20,640,280,40)];
    memberSinceLable.text = @"November 2015";
    [self.scrollView addSubview:memberSinceLable];
    
    [self.view addSubview:self.scrollView];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
