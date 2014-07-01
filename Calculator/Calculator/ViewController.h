//
//  ViewController.h
//  Calculator
//
//  Created by iOS Devt 01 on 7/1/14.
//  Copyright (c) 2014 ___FULLUSERNAME___. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController
@property (weak, nonatomic) IBOutlet UITextField *firstNum;
@property (weak, nonatomic) IBOutlet UITextField *secondNum;
@property (weak, nonatomic) IBOutlet UIButton *addButton;
- (IBAction)addButton:(id)sender;
@property (weak, nonatomic) IBOutlet UIButton *diffButton;
- (IBAction)diffButton:(id)sender;
@property (weak, nonatomic) IBOutlet UIButton *mulButton;
- (IBAction)mulButton:(id)sender;
@property (weak, nonatomic) IBOutlet UIButton *divButton;
- (IBAction)divButton:(id)sender;
@property (weak, nonatomic) IBOutlet UILabel *answerLabel;
- (IBAction)firstNumReturn:(id)sender;

- (IBAction)secondNumReturn:(id)sender;


@end
