//
//  CameraPreviewView.m
//  BlindAssist
//
//  Created by Nazari on 7/23/18.
//  Copyright © 2018 Puia. All rights reserved.
//

#import "CameraPreviewView.h"
#import "Utils.h"

@implementation CameraPreviewView

- (void)awakeFromNib {
    [super awakeFromNib];
    
    // Observe device rotation
     [[NSNotificationCenter defaultCenter]
      addObserver:self selector:@selector(orientationChanged:)
      name:UIDeviceOrientationDidChangeNotification
      object:[UIDevice currentDevice]];
}

// Insert layer at index 0
- (void)addCaptureVideoPreviewLayer:(AVCaptureVideoPreviewLayer*) previewLayer {
    [[self previewLayer] removeFromSuperlayer];
    [[self layer] insertSublayer:previewLayer atIndex:0];
    [self setPreviewLayer:(previewLayer)];
    [self previewLayer].videoGravity = AVLayerVideoGravityResizeAspectFill;
}

- (void)layoutSubviews {
    [super layoutSubviews];
    [self previewLayer].frame = [super bounds];
}

// Change video orientation to always display video in correct orientation
- (void)orientationChanged:(NSNotification*) notification {
    [self previewLayer].connection.videoOrientation = [Utils getVideoOrientation];
}

@end
