//
//  TextFieldViewController.h
//  ObjectLibrary
//
//  Created by Eliot Arntz on 5/4/13.
//  Copyright (c) 2013 EliotArntz. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface TextFieldViewController : UIViewController<UITextFieldDelegate>

@property (strong, nonatomic) IBOutlet UITextField *enterNameTextField;

@end
