//
//  Utils.m
//  BlindAssist
//
//  Created by Nazari on 7/23/18.
//  Copyright © 2018 Puia. All rights reserved.
//

#import <UIKit/UIKit.h>

#import "Utils.h"

@implementation Utils

+(AVCaptureVideoOrientation) getVideoOrientation {
    AVCaptureVideoOrientation orientation;
    UIDeviceOrientation deviceOrientation = [[UIDevice currentDevice] orientation];
    switch (deviceOrientation) {
        case UIDeviceOrientationPortrait:
            orientation = AVCaptureVideoOrientationPortrait;
            break;
        case UIDeviceOrientationPortraitUpsideDown:
            orientation = AVCaptureVideoOrientationPortraitUpsideDown;
            break;
        case UIDeviceOrientationLandscapeLeft:
            orientation = AVCaptureVideoOrientationLandscapeRight;
            break;
        case UIDeviceOrientationLandscapeRight:
            orientation = AVCaptureVideoOrientationLandscapeLeft;
            break;
        default:
            orientation = AVCaptureVideoOrientationPortrait;
            break;
    }
    return orientation;
}

@end
