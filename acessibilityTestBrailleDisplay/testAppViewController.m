//
//  testAppViewController.m
//  acessibilityTestBrailleDisplay
//
//  Created by Ray Cheung on 1/09/14.
//  Copyright (c) 2014 iEnableTechnology. All rights reserved.
//

#import "testAppViewController.h"
#import "UIAccessibleProgressView.h"

@interface testAppViewController ()


@property (weak, nonatomic) IBOutlet UIAccessibleProgressView *progress;
@property (weak, nonatomic) IBOutlet UILabel *label;
@property (weak, nonatomic) IBOutlet UIStepper *stepper;
@end

@implementation testAppViewController
double maxValue = 100;
double value=0;

- (void)viewDidLoad
{
    [super viewDidLoad];
    self.stepper.maximumValue=maxValue;
    self.stepper.value=value;
    [self.progress setIntProgress:(int)value outOfATotal:(NSInteger)maxValue];
    self.label.text=self.progress.accessibilityLabel;
    self.label.accessibilityLabel=self.progress.accessibilityLabel;
}


- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)stepper:(UIStepper *)sender {
    value = sender.value;
    [self displayNewValue:(int)value];
}

- (void)motionEnded:(UIEventSubtype)motion withEvent:(UIEvent *)event {
    if (motion == UIEventSubtypeMotionShake) {
        value++;
        self.stepper.value=value;
        [self displayNewValue:(int)value];
    }
}

- (void)displayNewValue:(int)value {
    [self.progress setIntProgress:(int)value outOfATotal:(NSInteger)maxValue];
    self.label.text=self.progress.accessibilityLabel;
    self.label.accessibilityLabel=self.progress.accessibilityLabel;
    self.label.accessibilityValue=self.progress.accessibilityValue;
    //if(self.label.accessibilityElementIsFocused) UIAccessibilityPostNotification(UIAccessibilityLayoutChangedNotification, self.label);
    //else if (self.progress.accessibilityElementIsFocused) UIAccessibilityPostNotification(UIAccessibilityLayoutChangedNotification, self.progress);
}

@end
