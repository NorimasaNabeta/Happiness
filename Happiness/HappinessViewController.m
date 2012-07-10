//
//  HappinessViewController.m
//  Happiness
//
//  Created by 式正 鍋田 on 12/07/10.
//  Copyright (c) 2012年 Norimasa Nabeta. All rights reserved.
//

#import "HappinessViewController.h"

@interface HappinessViewController ()
@property (nonatomic,weak) IBOutlet FaceView *faceView;
@end

@implementation HappinessViewController
@synthesize happiness=_happiness;
@synthesize faceView=_faceView;

- (void)setHappiness:(int)happiness
{
    _happiness = happiness;
    [self.faceView setNeedsDisplay]; // any time our Model changes, redraw our View
}

- (void)setFaceView:(FaceView *)faceView
{
    _faceView = faceView;
    // enable pinch gestures in the FaceView using its pinch: handler
    [self.faceView addGestureRecognizer:[[UIPinchGestureRecognizer alloc] initWithTarget:self.faceView action:@selector(pinch:)]];
}

- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)toInterfaceOrientation
{
    return YES; // support all orientations
}


@end
