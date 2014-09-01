//
//  UIAccessibleProgressView.h
//  BrailleKeyboard
//
//  Created by Ray Cheung on 3/05/14.
//  Copyright (c) 2014 Ray Cheung. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface UIAccessibleProgressView : UIProgressView


- (void)setIntProgress:(int)x outOfATotal:(NSInteger)total;


@end
