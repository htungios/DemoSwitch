//
//  ViewController.m
//  DemoSwitch
//
//  Created by Hoang Ngoc Tung on 31/10/2015.
//  Copyright (c) Năm 2015 HoangNgocTung. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()
@property (weak, nonatomic) IBOutlet UIButton *imgOn;
@property (weak, nonatomic) IBOutlet UIButton *imgOff;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    [_imgOn setImage:[UIImage imageNamed:@"OnBlack"] forState:normal];
    [_imgOff setImage:[UIImage imageNamed:@"OffWhite"] forState:normal];
    
}
- (IBAction)On:(id)sender {
 if ([_imgOn.currentImage isEqual:[UIImage imageNamed:@"OnBlack"]]) {
        [_imgOn setImage:[UIImage imageNamed:@"OnWhite"] forState:normal];
        [_imgOff setImage:[UIImage imageNamed:@"OffBlack"] forState:normal];
 }
}
- (IBAction)Off:(id)sender {
if ([_imgOff.currentImage isEqual:[UIImage imageNamed:@"OffBlack"]]) {
        [_imgOff setImage:[UIImage imageNamed:@"OffWhite"] forState:normal];
        [_imgOn setImage:[UIImage imageNamed:@"OnBlack"] forState:normal];

 }
}


@end
