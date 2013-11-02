//
//  PortalViewController.h
//  Portal Radio
//
//  Created by Scott Bouloutian on 7/24/13.
//  Copyright (c) 2013 Scott Bouloutian. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <AVFoundation/AVFoundation.h>
#import "PortalInfoViewController.h"

@interface PortalViewController : UIViewController <PortalInfoViewControllerDelegate,AVAudioPlayerDelegate>
@property (weak, nonatomic) IBOutlet UIImageView *radioBorder;
@property (weak, nonatomic) IBOutlet UIImageView *speakerBorder;
@property (weak, nonatomic) IBOutlet UIView *speaker;
@property (weak, nonatomic) IBOutlet UIImageView *displayBorder;
@property (weak, nonatomic) IBOutlet UIView *scanlines;
- (IBAction)stationTouched;

@end
