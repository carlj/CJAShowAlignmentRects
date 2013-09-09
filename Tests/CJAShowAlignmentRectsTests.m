//
//  CJAShowAlignmentRectsTests.m
//  CJAShowAlignmentRectsTests
//
//  Created by Carl Jahn on 09.09.13.
//  Copyright (c) 2013 Carl Jahn. All rights reserved.
//

#import "CJAShowAlignmentRectsTests.h"
#import "CJAShowAlignmentRects.h"
@implementation CJAShowAlignmentRectsTests


- (void)testShow {
  
  [CJAShowAlignmentRects show];
  
  STAssertEquals(CJAShowAligmentRectsStatusVisible, [CJAShowAlignmentRects status], @"Status isn't the same");
}

- (void)testHide {

  [CJAShowAlignmentRects hide];
  
  STAssertEquals(CJAShowAligmentRectsStatusHidden, [CJAShowAlignmentRects status], @"Status isn't the same");
}

- (void)testShowWithStatus {

  [CJAShowAlignmentRects setStatus: CJAShowAligmentRectsStatusVisible];
  
  STAssertEquals(CJAShowAligmentRectsStatusVisible, [CJAShowAlignmentRects status], @"Status isn't the same");
}

- (void)testHideWithStatus {

  [CJAShowAlignmentRects setStatus: CJAShowAligmentRectsStatusHidden];
  
  STAssertEquals(CJAShowAligmentRectsStatusHidden, [CJAShowAlignmentRects status], @"Status isn't the same");
}

@end
