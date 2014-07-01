//
//  ViewController.m
//  Calculator
//
//  Created by iOS Devt 01 on 7/1/14.
//  Copyright (c) 2014 ___FULLUSERNAME___. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
    NSString* blankValue=@"Answer";
    self.answerLabel.text=blankValue;
    
    UITapGestureRecognizer *tap= [[UITapGestureRecognizer alloc] initWithTarget:self action:@selector(dismissKeyboard)];
    
    [tap setCancelsTouchesInView:NO];
    [self.view addGestureRecognizer:tap];

}

-(void)dismissKeyboard{
    [_firstNum resignFirstResponder];
    [_secondNum resignFirstResponder];
}




- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)addButton:(id)sender {
    [self.firstNum resignFirstResponder];
    [self.secondNum resignFirstResponder];
    
    int firstInteger = [self.firstNum.text intValue];
    int secondInteger = [self.secondNum.text intValue];
    
    int addAnswer=firstInteger + secondInteger;
    NSString* addValue = [NSString stringWithFormat:@"%i", addAnswer];
    self.answerLabel.text= addValue;
}
- (IBAction)diffButton:(id)sender {
    [self.firstNum resignFirstResponder];
    [self.secondNum resignFirstResponder];
    
    int firstInteger = [self.firstNum.text intValue];
    int secondInteger = [self.secondNum.text intValue];
    int diffAnswer=firstInteger - secondInteger;
    NSString* diffValue = [NSString stringWithFormat:@"%i", diffAnswer];
    self.answerLabel.text= diffValue;

}
- (IBAction)mulButton:(id)sender {
    [self.firstNum resignFirstResponder];
    [self.secondNum resignFirstResponder];
    
    int firstInteger = [self.firstNum.text intValue];
    int secondInteger = [self.secondNum.text intValue];
    int mulAnswer=firstInteger * secondInteger;
    NSString* mulValue = [NSString stringWithFormat:@"%i", mulAnswer];
    self.answerLabel.text= mulValue;

}
- (IBAction)divButton:(id)sender {
    [self.firstNum resignFirstResponder];
    [self.secondNum resignFirstResponder];
    
    int firstInteger = [self.firstNum.text intValue];
    int secondInteger = [self.secondNum.text intValue];
    int divAnswer=firstInteger / secondInteger;
    NSString* divValue = [NSString stringWithFormat:@"%i", divAnswer];
    self.answerLabel.text= divValue;
    
}

- (IBAction)firstNumReturn:(id)sender {
    
    [sender resignFirstResponder];
}

- (IBAction)secondNumReturn:(id)sender {
    [sender resignFirstResponder];
}
@end
