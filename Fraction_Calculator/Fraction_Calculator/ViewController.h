//
//  ViewController.h
//  Fraction_Calculator
//
//  Created by Gomes, Bruce on 10/2/18.
//  Copyright © 2018 Gomes, Bruce. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController

@property (strong, nonatomic) IBOutlet UILabel *display;

-(void) processDigit: (int) digit;
-(void) processOp: (char) theOp;
-(void) storeFracPart;

// num keys

-(IBAction)clickDigit:(UIButton *)sender;

// arithm ops

-(IBAction)clickPlus;
-(IBAction)clickMinus;
-(IBAction)clickMultiply;
-(IBAction)clickDivide;

// other keys

-(IBAction)clickOver;
-(IBAction)clickEquals;
-(IBAction)clickClear;

@end

