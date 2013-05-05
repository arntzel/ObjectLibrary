//
//  TextFieldViewController.m
//  ObjectLibrary
//
//  Created by Eliot Arntz on 5/4/13.
//  Copyright (c) 2013 EliotArntz. All rights reserved.
//

#import "TextFieldViewController.h"
#import "LabelViewController.h"

@interface TextFieldViewController ()

@end

@implementation TextFieldViewController

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    // Do any additional setup after loading the view from its nib.
    self.enterNameTextField.delegate = self;
    
    //Allocate and Initialize + add UIBarButtonItem to my View.
    UIBarButtonItem *transitionBarButtonItem = [[UIBarButtonItem alloc] initWithTitle:@"Go" style:UIBarButtonItemStyleBordered target:self action:@selector(transitionBarButtonItemPressed:)];
    self.navigationItem.rightBarButtonItem = transitionBarButtonItem;
    
}

-(void)transitionBarButtonItemPressed:(UIBarButtonItem *)sender {
    NSLog(@"go button Pressed");
    LabelViewController *labelViewController = [[LabelViewController alloc] initWithNibName:nil bundle:nil];
    labelViewController.labelValue = self.enterNameTextField.text;
    [self.navigationController pushViewController:labelViewController animated:YES];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

-(BOOL)textFieldShouldReturn:(UITextField *)textField{
    NSLog(@"textField return key pressed %@",self.enterNameTextField.text);
    
    [self.enterNameTextField resignFirstResponder];
    
    return YES;
}

@end
