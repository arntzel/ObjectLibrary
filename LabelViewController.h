//
//  LabelViewController.h
//  ObjectLibrary
//
//  Created by Eliot Arntz on 5/4/13.
//  Copyright (c) 2013 EliotArntz. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface LabelViewController : UIViewController

@property (strong, nonatomic) IBOutlet UILabel *titleLabel;
@property (strong, nonatomic) NSString *labelValue;

@end
