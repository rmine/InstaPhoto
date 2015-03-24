//
//  PhotoViewController.m
//  InstaPhoto
//
//  Created by huangzhaorong on 15/3/22.
//  Copyright (c) 2015年 huangzhaorong. All rights reserved.
//

#import "PhotoViewController.h"
#import "AFNetworking.h"
#import "UIKit+AFNetworking.h"
#import "AFHTTPRequestOperation.h"

#import "Photo.h"

@interface PhotoViewController ()

@end

@implementation PhotoViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
//    UIImageView *imageView = [[UIImageView alloc] initWithImage:[UIImage imageNamed:self.imageFileName]];
//    imageView.frame = CGRectMake(10, 10, 300, 300);

    
    NSLog(@"PhotoViewController===  %@",self.imageFileName);
    
    
    
}


-(void)viewDidUnload{
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (void)viewWillAppear:(BOOL)animated{
    self.view.backgroundColor = [UIColor orangeColor];
    
    UIImageView *imageView = [[UIImageView alloc] init];
    imageView.frame = CGRectMake(10, 100, 128, 128);
    [imageView setImageWithURL:[NSURL URLWithString:self.imageFileName] placeholderImage:[UIImage imageNamed:@"avatar"]];
    [self.view addSubview:imageView];
    
    UILabel *desc = [[UILabel alloc] initWithFrame:CGRectMake(10, 300, 128, 128)];
    desc.backgroundColor = [UIColor whiteColor];
    desc.text = self.photo.detail;
    [self.view addSubview:desc];
}

-(void)viewDidAppear:(BOOL)animated{
//    [self.imageView setImageWithURL:[NSURL URLWithString:self.imageFileName] placeholderImage:[UIImage imageNamed:@"avatar.png"]];
}

-(void)viewWillDisappear:(BOOL)animated{
    
}

//-(void)setImageFileName:(NSString *)imageFileName{
//    _imageFileName = imageFileName;
//}

-(id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil{
    if (self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil]) {
        
    }
    
    return self;
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
