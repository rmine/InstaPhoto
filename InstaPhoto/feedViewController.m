//
//  FeedViewController.m
//  InstaPhoto
//
//  Created by huangzhaorong on 15/3/20.
//  Copyright (c) 2015年 huangzhaorong. All rights reserved.
//

#import "FeedViewController.h"
#import "FavoritesViewController.h"

@interface FeedViewController ()

@end

@implementation FeedViewController

- (void)viewDidLoad {
    [super viewDidLoad];

    
    UIButton *favoritesButton = [UIButton buttonWithType:UIButtonTypeRoundedRect];
    favoritesButton.frame = CGRectMake(60,100,200,44);
    [favoritesButton setTitle:@"view Favorites" forState:UIControlStateNormal];
    [favoritesButton setBackgroundColor:[UIColor grayColor]];
    [self.view addSubview:favoritesButton];
    
    [favoritesButton addTarget:self action:@selector(showFavorites:) forControlEvents:UIControlEventTouchUpInside];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


-(void)showFavorites:(UIButton *)sender
{
    FavoritesViewController *favoritesViewController = [[FavoritesViewController alloc] init];
    [self.navigationController pushViewController:favoritesViewController animated:YES];
}

-(id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil{
    if(self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil]){
        self.view.backgroundColor = [UIColor blueColor];
        self.title = @"Feed";
        self.tabBarItem.image = [UIImage imageNamed:@"tab_feed.png"];
    }
    return  self;
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
