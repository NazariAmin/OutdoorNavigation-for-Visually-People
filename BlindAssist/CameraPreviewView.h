//
//  CameraPreviewView.h
//  BlindAssist
//
//  Created by Nazari on 7/23/18.
//  Copyright © 2018 Puia. All rights reserved.
//

#import <AVFoundation/AVFoundation.h>
#import <UIKit/UIKit.h>

@interface CameraPreviewView : UIView

@property (weak) AVCaptureVideoPreviewLayer *previewLayer;

- (void)awakeFromNib;

- (void)addCaptureVideoPreviewLayer:(AVCaptureVideoPreviewLayer*) previewLayer;

- (void)layoutSubviews;

- (void)orientationChanged:(NSNotification*) notification;

@end
