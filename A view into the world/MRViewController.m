//
//  MRViewController.m
//  A view into the world
//
//  Created by Mark Rabins on 7/14/14.
//  Copyright (c) 2014 edu.self.edu. All rights reserved.
//

#import "MRViewController.h"

@interface MRViewController ()

@end

@implementation MRViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
    CGRect myViewsFrame = CGRectMake(20, 250, 200, 60);
    UIView *myView = [[UIView alloc] initWithFrame:myViewsFrame];
    myView.backgroundColor = [UIColor redColor];
    [self.view addSubview:myView];
    
    UIButton *anotherButton = [ UIButton buttonWithType:UIButtonTypeRoundedRect];
    anotherButton.frame = CGRectMake(40, 40, 200, 100);
    anotherButton.backgroundColor = [UIColor greenColor];
    [anotherButton setTitle:@"Press me... Please!" forState:UIControlStateNormal];
    
    [self.view addSubview:anotherButton];
    
    [myView removeFromSuperview];
    
    
    [anotherButton addTarget:self action:@selector(didPressButton:) forControlEvents:UIControlEventTouchUpInside];
  
}

-(void)didPressButton:(UIButton *)button
{
    NSLog(@"I'm doing everything in code now!");
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
