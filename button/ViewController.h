//
//  ViewController.h
//  button
//
//  Created by LIN SHUFAN on 2014/1/18.
//  Copyright (c) 2014年 LIN SHUFAN. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController{
    NSMutableArray *arraybutton;
}
@property (strong, nonatomic) IBOutlet UILabel *label1;
@property (strong, nonatomic) IBOutlet UIButton *button1;
- (IBAction)action1:(id)sender;

@end
