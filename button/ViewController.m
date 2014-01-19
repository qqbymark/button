//
//  ViewController.m
//  button
//
//  Created by LIN SHUFAN on 2014/1/18.
//  Copyright (c) 2014年 LIN SHUFAN. All rights reserved.
//

#import "ViewController.h"
@interface ViewController ()

@end

@implementation ViewController
@synthesize button1,label1;

- (void)viewDidLoad
{
    [super viewDidLoad];
    
    arraybutton =[[NSMutableArray alloc]init];
    
	for(int i=0;i<20;i++){
        UIButton *button = [UIButton buttonWithType:UIButtonTypeRoundedRect];
        button.frame = CGRectMake(0, 30+i*20, 20, 20);
        [button addTarget:self action:@selector(actionbutton:) forControlEvents:UIControlEventTouchUpInside];
        [button setTitle:[NSString stringWithFormat:@"%d",i] forState:UIControlStateNormal];
        button.tag = i;
        [self.view addSubview:button];
        [arraybutton addObject:button];
    }
    
    
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    
}

- (IBAction)action1:(id)sender {
    label1.text = @"按鈕按下了";
}

-(IBAction)actionbutton:(id)sender{
    UIButton *button = sender;
    label1.text = [NSString stringWithFormat:@"%d",button.tag];
     
    for(int i=0;i<arraybutton.count;i++){
        UIButton *buttona = [arraybutton objectAtIndex:i];
        [buttona setTitle:[NSString stringWithFormat:@"%d",button.tag] forState:UIControlStateNormal];
    }
}
@end
