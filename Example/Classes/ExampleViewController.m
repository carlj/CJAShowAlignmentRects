//
//  ExampleViewController.m
//  CJAShowAlignmentRects
//
//  Created by Carl Jahn on 09.09.13.
//  Copyright (c) 2013 Carl Jahn. All rights reserved.
//

#import "ExampleViewController.h"
#import "CJAShowAlignmentRects.h"

@interface ExampleViewController ()

@end

@implementation ExampleViewController


- (void)viewDidLoad {
  [super viewDidLoad];
	// Do any additional setup after loading the view.
  [self generateGUI];
  
  //Show the Alignment Rects
  [CJAShowAlignmentRects show];
  [CJAShowAlignmentRects setStatus: CJAShowAligmentRectsStatusVisible ];
  
  //Hide the Alignment Rects
  [CJAShowAlignmentRects hide];
  [CJAShowAlignmentRects setStatus: CJAShowAligmentRectsStatusHidden ];
  
  //Show or Hide the Alignment Rects with the custom enum flag
  CJAShowAligmentRectsStatus status = [CJAShowAlignmentRects status];
  [CJAShowAlignmentRects setStatus: !status];
}

- (void)generateGUI {
  
  // Do any additional setup after loading the view, typically from a nib.
  self.view.backgroundColor = [UIColor lightGrayColor];
  
  NSLayoutConstraint *constraint;
  
  UILabel *mylabel = [[UILabel alloc] init];
  mylabel.backgroundColor = [UIColor clearColor];
  mylabel.translatesAutoresizingMaskIntoConstraints = NO;
  mylabel.text = @"Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod tempor invidunt ut labore et dolore magna aliquyam erat, sed diam voluptua. At vero eos et accusam et justo duo dolores et ea rebum.";
  mylabel.numberOfLines = 0;
  [self.view addSubview: mylabel];
  
  UILabel *mylabel2 = [[UILabel alloc] init];
  mylabel2.backgroundColor = [UIColor clearColor];
  mylabel2.translatesAutoresizingMaskIntoConstraints = NO;
  mylabel2.text = @"Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod tempor invidunt ut labore et dolore magna aliquyam erat, sed diam voluptua. At vero eos et accusam et justo duo dolores et ea rebum.";
  mylabel2.numberOfLines = 0;
  [self.view addSubview: mylabel2];
  
  //width
  constraint =
  [NSLayoutConstraint constraintWithItem: mylabel
                               attribute: NSLayoutAttributeWidth
                               relatedBy: NSLayoutRelationEqual
                                  toItem: self.view
                               attribute: NSLayoutAttributeWidth
                              multiplier: 0.50f
                                constant: -15.0f];
  [self.view addConstraint:constraint];
  
  constraint =
  [NSLayoutConstraint constraintWithItem: mylabel2
                               attribute: NSLayoutAttributeWidth
                               relatedBy: NSLayoutRelationEqual
                                  toItem: self.view
                               attribute: NSLayoutAttributeWidth
                              multiplier: 0.50f
                                constant: -15.0f];
  [self.view addConstraint:constraint];
  
  //top
  constraint =
  [NSLayoutConstraint constraintWithItem: mylabel
                               attribute: NSLayoutAttributeTop
                               relatedBy: NSLayoutRelationEqual
                                  toItem: self.view
                               attribute: NSLayoutAttributeTop
                              multiplier: 1.0f
                                constant: 20.0f];
  [self.view addConstraint:constraint];
  
  constraint =
  [NSLayoutConstraint constraintWithItem: mylabel2
                               attribute: NSLayoutAttributeTop
                               relatedBy: NSLayoutRelationEqual
                                  toItem: self.view
                               attribute: NSLayoutAttributeTop
                              multiplier: 1.0f
                                constant: 20.0f];
  [self.view addConstraint:constraint];
  
  
  //left
  constraint =
  [NSLayoutConstraint constraintWithItem: mylabel
                               attribute: NSLayoutAttributeLeft
                               relatedBy: NSLayoutRelationEqual
                                  toItem: self.view
                               attribute: NSLayoutAttributeLeft
                              multiplier: 1.0f
                                constant: 10.0f];
  [self.view addConstraint:constraint];
  
  constraint =
  [NSLayoutConstraint constraintWithItem: mylabel2
                               attribute: NSLayoutAttributeLeft
                               relatedBy: NSLayoutRelationEqual
                                  toItem: mylabel
                               attribute: NSLayoutAttributeRight
                              multiplier: 1.0f
                                constant: 10.0f];
  [self.view addConstraint:constraint];
  
  //bottom 
  constraint =
  [NSLayoutConstraint constraintWithItem: mylabel
                               attribute: NSLayoutAttributeBottom
                               relatedBy: NSLayoutRelationEqual
                                  toItem: self.view
                               attribute: NSLayoutAttributeBottom
                              multiplier: 1.0f
                                constant: -10.0f];
  [self.view addConstraint:constraint];
  
  constraint =
  [NSLayoutConstraint constraintWithItem: mylabel2
                               attribute: NSLayoutAttributeBottom
                               relatedBy: NSLayoutRelationEqual
                                  toItem: mylabel
                               attribute: NSLayoutAttributeBottom
                              multiplier: 1.0f
                                constant: -10.0f];
  [self.view addConstraint:constraint];
   
}

@end