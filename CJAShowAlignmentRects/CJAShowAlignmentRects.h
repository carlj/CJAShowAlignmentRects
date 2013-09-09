//
//  CJAShowAlignmentRects.h
//  CJAShowAlignmentRects
//
//  Created by Carl Jahn on 09.09.13.
//  Copyright (c) 2013 Carl Jahn. All rights reserved.
//

#import <Foundation/Foundation.h>

/**
 Custom enum for the visible status of the Alignment Rects
 */
typedef enum _CJAShowAligmentRectsStatus {
  
  //Alignment Rects are Visible
  CJAShowAligmentRectsStatusVisible   = 0,
  
  //Alignment Rects are hidden
  CJAShowAligmentRectsStatusHidden = 1
  
} CJAShowAligmentRectsStatus;

/**
 Constant for the needed NSUserDefaults Key
 */
extern NSString *const kShowAlignmentRectsDefaultsKey;

@interface CJAShowAlignmentRects : NSObject

/**
 Show the Alignment Rects
 Note: You cant enable the Alignment Rects in a Release Build 
 
 Important: You must restart the App after enableing the Alignment Rects
 */
+ (void)show;

/**
 Hide the Alignment Rects
 Note: The Alignments Rects are always hidden in a Release Build
 
 Important: You must restart the App after disableing the Alignment Rects
 */
+ (void)hide;

/**
 Show or Hide the Alignment Rects with a given CJAShowAligmentRectsStatus
 
 @param status the given CJAShowAligmentRectsStatus
 */
+ (void)setStatus:(CJAShowAligmentRectsStatus)status;

/**
 Returns the current visible Status
 
 @return return the specific CJAShowAligmentRectsStatus
 */
+ (CJAShowAligmentRectsStatus)status;

@end
