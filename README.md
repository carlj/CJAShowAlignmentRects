#CJAShowAlignmentRects
See alignment rects of all [`UIView`](https://developer.apple.com/library/ios/documentation/uikit/reference/uiview_class/) drawn.

[![Build Status](https://travis-ci.org/carlj/CJAShowAlignmentRects.png?branch=master)](https://travis-ci.org/carlj/CJAShowAlignmentRects)

##Installation
Just drag & drop the [`CJAShowAlignmentRects.h`](CJAShowAlignmentRects/CJAShowAlignmentRects.h) and [`CJAShowAlignmentRects.m`](CJAShowAlignmentRects/CJAShowAlignmentRects.m) to your project

##Example
 Visible | Hidden
--- | ---
![Screenshot](screenshot_visible.png) | ![Screenshot](screenshot_hidden.png)

##Usage
First of all: take a look at the [`ExampleViewController.m`](Example/Classes/ExampleViewController.m) in the Example

``` objc
//Show the Alignment Rects
[CJAShowAlignmentRects show];

//Hide the Alignment Rects
[CJAShowAlignmentRects hide];

//Show or Hide the Alignment Rects with the custom enum flag
[CJAShowAlignmentRects setStatus: CJAShowAligmentRectsStatusVisible];

//Get the current status
CJAShowAligmentRectsStatus status = [CJAShowAlignmentRects status];
```

##Note
* You cant enable the Alignment Rects in a Release Build 
* You must restart the App after enableing or disableing the Alignment Rects

##LICENSE
Released under the [MIT LICENSE](LICENSE)