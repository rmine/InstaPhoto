//
//  CityViewController.m
//  InstaPhoto
//
//  Created by huangzhaorong on 15/3/24.
//  Copyright (c) 2015年 huangzhaorong. All rights reserved.
//

#import "CityViewController.h"
#import "EditNoteViewController.h"

@interface CityViewController ()

@end

@implementation CityViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.view.backgroundColor = [UIColor whiteColor];
    
    self.city = [[City alloc] init];
    self.notesLabel = [[UILabel alloc] initWithFrame:CGRectMake(20, 160, 280, 40)];
    self.notesLabel.backgroundColor = [UIColor yellowColor];
    [self.view addSubview:self.notesLabel];
    
//    self.notesField = [[UITextField alloc] initWithFrame:CGRectMake(20, 220, 290, 40)];
//    self.notesField.backgroundColor = [UIColor orangeColor];
//    self.notesField.keyboardType = UIKeyboardTypeEmailAddress;
//    self.notesField.delegate = self;
//    [self.view addSubview:self.notesField];
    
    UIButton *editButton = [UIButton buttonWithType:UIButtonTypeRoundedRect];
    editButton.frame = CGRectMake(20, 420,280,50);
    editButton.backgroundColor = [UIColor grayColor];
    [editButton setTitle:@"Edit note" forState:UIControlStateNormal];
    [self.view addSubview:editButton];
    [editButton addTarget:self action:@selector(editPressed) forControlEvents:UIControlEventTouchUpInside];
    
    [[NSNotificationCenter defaultCenter] addObserver:self selector:@selector(enteringBackground) name:UIApplicationDidEnterBackgroundNotification object:nil];

}

-(void)editPressed{
    EditNoteViewController *editNoteVC = [[EditNoteViewController alloc] init];
//    self.city.notes = @"111";
    editNoteVC.city = self.city;
//    [self.navigationController pushViewController:editNoteVC animated:YES];
    [self presentViewController:editNoteVC animated:YES completion:nil];
}

-(void)enteringBackground{
    [City saveCity:self.city];
}

-(void)viewWillAppear:(BOOL)animated{
    self.notesLabel.text = self.city.notes;
}

//-(BOOL)textFieldShouldReturn:(UITextField *)textField{
//    self.city.notes = self.notesField.text;
//    
//    [textField resignFirstResponder];
//    
//    return YES;
//}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

-(id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil{
    if(self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil]){
//        self.title = @"City";
//        [self setTabBarItem:[[UITabBarItem alloc] initWithTitle:@"City" image:[UIImage imageNamed:@"tab_profile"] selectedImage:[UIImage imageNamed:@"tab_profile"]]];
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
