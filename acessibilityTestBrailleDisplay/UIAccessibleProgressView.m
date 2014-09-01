//
//  UIAccessibleProgressView.m
//  BrailleKeyboard
//
//  Created by Ray Cheung on 3/05/14.
//  Copyright (c) 2014 Ray Cheung. All rights reserved.
//

#import "UIAccessibleProgressView.h"

@implementation UIAccessibleProgressView

- (id)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    if (self) {
        // Initialization code
    }
    return self;
}

/*-(UIAccessibilityTraits)accessibilityTraits {
    return [super accessibilityTraits ] ^ UIAccessibilityTraitUpdatesFrequently | UIAccessibilityTraitSummaryElement ;
}*/

- (void)setIntProgress:(int)x outOfATotal:(NSInteger)total {
    self.progress = (float)x/total;
    self.accessibilityLabel = [NSString stringWithFormat:@"Progress: %d out of %ld", x, (long)total];
    //UIAccessibilityPostNotification(UIAccessibilityLayoutChangedNotification, self);
    //NSLog(@"%@, %@", self.accessibilityLabel, self.accessibilityHint);
}


/*
 // Only override drawRect: if you perform custom drawing.
 // An empty implementation adversely affects performance during animation.
 - (void)drawRect:(CGRect)rect
 {
 // Drawing code
 }
 */

@end
