//
//  CJAShowAlignmentRects.m
//  CJAShowAlignmentRects
//
//  Created by Carl Jahn on 09.09.13.
//  Copyright (c) 2013 Carl Jahn. All rights reserved.
//

#import "CJAShowAlignmentRects.h"

NSString *const kShowAlignmentRectsDefaultsKey = @"UIViewShowAlignmentRects";

@implementation CJAShowAlignmentRects

+ (void)show {
  [self.class setStatus: CJAShowAligmentRectsStatusVisible];
}

+ (void)hide {
  [self.class setStatus: CJAShowAligmentRectsStatusHidden];
}

+ (void)setStatus:(CJAShowAligmentRectsStatus)status {

  BOOL boolValue = (CJAShowAligmentRectsStatusVisible == status);

#ifndef DEBUG
  boolValue = NO;
#endif
  
  [[NSUserDefaults standardUserDefaults] setBool:boolValue  forKey: kShowAlignmentRectsDefaultsKey ];
  [[NSUserDefaults standardUserDefaults] synchronize];
}

+ (CJAShowAligmentRectsStatus)status {

  return [[NSUserDefaults standardUserDefaults] boolForKey: kShowAlignmentRectsDefaultsKey];
}

@end
