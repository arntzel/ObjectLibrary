//
//  ButtonViewController.h
//  ObjectLibrary
//
//  Created by Eliot Arntz on 5/4/13.
//  Copyright (c) 2013 EliotArntz. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ButtonViewController : UIViewController

- (IBAction)buttonPressed:(UIButton *)sender;
@property (strong, nonatomic) IBOutlet UIButton *myButton;

@end
