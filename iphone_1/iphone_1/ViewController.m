//
//  ViewController.m
//  iphone_1
//
//  Created by Gomes, Bruce on 10/2/18.
//  Copyright © 2018 Gomes, Bruce. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

@synthesize display;


- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
}

-(IBAction)click1{
    
    display.text = @"1";
}


@end
