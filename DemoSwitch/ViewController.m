//
//  ViewController.m
//  DemoSwitch
//
//  Created by Hoang Ngoc Tung on 31/10/2015.
//  Copyright (c) Năm 2015 HoangNgocTung. All rights reserved.
//

#import "ViewController.h"
#import "CustomSwitch.h"

@interface ViewController ()
@property (weak, nonatomic) IBOutlet UIButton *imgOn;
@property (weak, nonatomic) IBOutlet UIButton *imgOff;

@end

@implementation ViewController
{
    CustomSwitch *mySwitch;
}

- (void)viewDidLoad {
    [super viewDidLoad];
    [_imgOn setImage:[UIImage imageNamed:@"OnBlack"] forState:normal];
    [_imgOff setImage:[UIImage imageNamed:@"OffWhite"] forState:normal];
    
    mySwitch = [[CustomSwitch alloc] initWithFrame:CGRectMake(0, 0, 138, 64)];
    mySwitch.center = CGPointMake(self.view.bounds.size.width * 0.5, 120);
    [self.view addSubview:mySwitch];
    
    [mySwitch addTarget:self
                 action:@selector(switchChangle:)
       forControlEvents:UIControlEventValueChanged];
    
}
-(void) switchChangle: (CustomSwitch*) customSwitch {
    NSLog(@"%d", customSwitch.value);
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
