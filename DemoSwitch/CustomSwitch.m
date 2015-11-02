//
//  CustomSwitch.m
//  DemoSwitch
//
//  Created by Hoang Ngoc Tung on 31/10/2015.
//  Copyright (c) Năm 2015 HoangNgocTung. All rights reserved.
//

#import "CustomSwitch.h"

@implementation CustomSwitch
{
    UIButton* _switchOn;
    UIButton* _switchOff;
}
-(instancetype) initWithFrame:(CGRect)frame {
    self = [super initWithFrame:CGRectMake(frame.origin.x, frame.origin.y, 138, 64)];
    _switchOn = [[UIButton alloc] initWithFrame:CGRectMake(0, 0, 69, 64)];
    _switchOff = [[UIButton alloc] initWithFrame:CGRectMake(69, 0, 69, 64)];
    
    [_switchOn addTarget:self
                  action:@selector(pressOn)
        forControlEvents:UIControlEventTouchUpInside];
    [_switchOff addTarget:self
                   action:@selector(pressOff)
         forControlEvents:UIControlEventTouchUpInside];
    [self addSubview:_switchOn];
    [self addSubview:_switchOff];
    self.value = false;
return self;
}
-(void)pressOff {
    self.value = false;
}
-(void)pressOn {
    self.value = true;
}
-(BOOL) getValue {
    return _value; // instant variable tu dong anh xa vao property value
}
-(void) setValue:(BOOL) value {
    _value = value;
    if (value) {
        [_switchOff setImage:[UIImage imageNamed:@"OffBlack"] forState:normal];
        [_switchOn setImage:[UIImage imageNamed:@"OnWhite"] forState:normal];
    } else {
        [_switchOff setImage:[UIImage imageNamed:@"OffWhite"] forState:normal];
        [_switchOn setImage:[UIImage imageNamed:@"OnBlack"] forState:normal];
    }
    [self sendActionsForControlEvents:UIControlEventValueChanged];
}
@end
