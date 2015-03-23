//
//  ProfileViewController.m
//  InstaPhoto
//
//  Created by huangzhaorong on 15/3/20.
//  Copyright (c) 2015年 huangzhaorong. All rights reserved.
//

#import "ProfileViewController.h"
#import "AFNetworking.h"
#import "UIKit+AFNetworking.h"
#import "AFHTTPRequestOperation.h"

#import "Profile.h"

@interface ProfileViewController ()

@end

@implementation ProfileViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.scrollView = [[UIScrollView alloc] initWithFrame:self.view.bounds];
//    self.scrollView.autoresizingMask = (UIViewAutoresizingFlexibleHeight | UIViewAutoresizingFlexibleWidth);
    self.scrollView.contentInset = UIEdgeInsetsMake(0, 0, 49, 0);
    self.scrollView.contentSize = CGSizeMake(375, 680);

    
/* normal
    
    UIImageView *avatarView = [[UIImageView alloc] init];
//    avatarView.image =[UIImage imageNamed:@"avatar.png"];
//    [avatarView setContentMode:UIViewContentModeScaleAspectFit];
//    avatarView.frame = self.view.frame;
    avatarView.frame = CGRectMake(20, 20, 192, 168);
    
    [avatarView setImageWithURL:[NSURL URLWithString:@"http://img0.bdstatic.com/img/image/shouye/chongwu0320.jpg"] placeholderImage:[UIImage imageNamed:@"avatar.png"]];
    
    [self.scrollView addSubview:avatarView];
    
    UILabel *nameLabel = [[UILabel alloc] initWithFrame:CGRectMake(20,200,280,40)];
    nameLabel.text = @"Name: RMine";
    [self.scrollView addSubview:nameLabel];
    
    UILabel *cityLabel = [[UILabel alloc] initWithFrame:CGRectMake(20,300,280,40)];
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
 
 */
    
//    NSString *url = @"http://localhost:4567/profile";
//    AFHTTPRequestOperationManager *manager = [AFHTTPRequestOperationManager manager];
//    [manager GET:url parameters:nil success:^(AFHTTPRequestOperation *operation, id responseObject) {
////        NSLog(@"JSON: %@", responseObject);
//        self.userProfile = responseObject;
//        [self requestSuccessful];
//    } failure:^(AFHTTPRequestOperation *operation, NSError *error) {
//        NSLog(@"Error: %@", error);
//    }];
    
    
    self.profile = [[Profile alloc] initWithJSON];
    [[NSNotificationCenter defaultCenter] addObserver:self selector:@selector(dataRetrieved) name:@"initWithJSONFinishedLoading" object:nil];
    
    [self.view addSubview:self.scrollView];
 
 
}

-(void)dataRetrieved{
    UIImageView *profileImageView = [[UIImageView alloc] init];
    profileImageView.frame = CGRectMake(20,20,192,168);
    [profileImageView setImageWithURL:[NSURL URLWithString:self.profile.profilePhoto] placeholderImage:[UIImage imageNamed:@"avatar.png"]];
    [self.scrollView addSubview:profileImageView];
    
    UILabel *nameLabel = [[UILabel alloc] init];
    nameLabel.frame = CGRectMake(20,200,200,40);
    nameLabel.text = [NSString stringWithFormat:@"Name: %@  %@",self.profile.firstName, self.profile.lastName];
    [self.scrollView addSubview:nameLabel];
    
    
    UILabel *cityLabel = [[UILabel alloc] initWithFrame:CGRectMake(20,300,280,40)];
    cityLabel.text = self.profile.city;
    [self.scrollView addSubview:cityLabel];
    
    
    UITextView *biography = [[UITextView alloc] initWithFrame:CGRectMake(12,460,300,180)];
    biography.font = [UIFont fontWithName:@"Helvetica" size:15];
    biography.editable = NO;
    biography.text = self.profile.biography;
    [self.scrollView addSubview:biography];
    
    UILabel *memberSinceLable = [[UILabel alloc] initWithFrame:CGRectMake(20,640,280,40)];
    memberSinceLable.text = self.profile.memberSince;
    [self.scrollView addSubview:memberSinceLable];}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

-(id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil{
    if (self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil]) {
        self.view.backgroundColor = [UIColor whiteColor];
        self.title = @"Profile";
        self.tabBarItem.image = [UIImage imageNamed:@"tab_profile"];
    }
    
    return self;
}

-(void)requestSuccessful{
    UIImageView *profileImageView = [[UIImageView alloc] init];
    profileImageView.frame = CGRectMake(20,20,192,168);
    [profileImageView setImageWithURL:[NSURL URLWithString:self.userProfile[@"profilePhoto"]] placeholderImage:[UIImage imageNamed:@"avatar.png"]];
    [self.scrollView addSubview:profileImageView];
    
    UILabel *nameLabel = [[UILabel alloc] init];
    nameLabel.frame = CGRectMake(20,200,200,40);
    nameLabel.text = [NSString stringWithFormat:@"Name: %@  %@",self.userProfile[@"firstName"], self.userProfile[@"lastName"]];
    [self.scrollView addSubview:nameLabel];
    
    
    UILabel *cityLabel = [[UILabel alloc] initWithFrame:CGRectMake(20,300,280,40)];
    cityLabel.text = self.userProfile[@"city"];
    [self.scrollView addSubview:cityLabel];
    
    
    UITextView *biography = [[UITextView alloc] initWithFrame:CGRectMake(12,460,300,180)];
    biography.font = [UIFont fontWithName:@"Helvetica" size:15];
    biography.editable = NO;
    biography.text = self.userProfile[@"biography"];
    [self.scrollView addSubview:biography];
    
    UILabel *memberSinceLable = [[UILabel alloc] initWithFrame:CGRectMake(20,640,280,40)];
    memberSinceLable.text = self.userProfile[@"memberSince"];
    [self.scrollView addSubview:memberSinceLable];
    
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
