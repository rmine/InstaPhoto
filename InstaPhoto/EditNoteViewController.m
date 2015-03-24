//
//  EditNoteViewController.m
//  InstaPhoto
//
//  Created by huangzhaorong on 15/3/24.
//  Copyright (c) 2015年 huangzhaorong. All rights reserved.
//

#import "EditNoteViewController.h"
#import "CityViewController.h"

@interface EditNoteViewController ()

@end

@implementation EditNoteViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.view.backgroundColor = [UIColor grayColor];
    
    UILabel *notes = [[UILabel alloc] initWithFrame:CGRectMake(20, 100, 280, 40)];
    notes.backgroundColor = [UIColor yellowColor];
    notes.text = self.city.notes;
    [self.view addSubview:notes];
    
    self.notesField = [[UITextField alloc] initWithFrame:CGRectMake(20, 300, 280, 40)];
    self.notesField.backgroundColor = [UIColor orangeColor];
    self.notesField.delegate = self;
    
    [self.view addSubview:self.notesField];
    
    UIButton *saveButton = [UIButton buttonWithType:UIButtonTypeRoundedRect];
    saveButton.frame =CGRectMake(20, 420, 280, 40);
    saveButton.backgroundColor = [UIColor blackColor];
    [saveButton setTitle:@"Save Note" forState:UIControlStateNormal];
    [self.view addSubview:saveButton];
    [saveButton addTarget:self action:@selector(savePressed) forControlEvents:UIControlEventTouchUpInside];
}

-(void)viewWillAppear:(BOOL)animated{
    self.notesField.keyboardAppearance = UIKeyboardTypeDefault;
    self.notesField.text = self.city.notes;
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

-(void)savePressed{
    UIAlertView *alert = [[UIAlertView alloc] initWithTitle:@"Success" message:@"save data succ!" delegate:nil cancelButtonTitle:@"OK" otherButtonTitles:nil];
    [alert show];
    
    self.city.notes =self.notesField.text;
//    [self.navigationController popViewControllerAnimated:YES];
    [self dismissViewControllerAnimated:YES completion:nil];
}

-(BOOL)textFieldShouldReturn:(UITextField *)textField{
    self.city.notes = self.notesField.text;
    [City saveCity:self.city];
    [textField resignFirstResponder];
    
    return YES;
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
