//
//  PortalInfoViewController.h
//  Portal Radio
//
//  Created by Scott Bouloutian on 10/21/13.
//  Copyright (c) 2013 Scott Bouloutian. All rights reserved.
//

#import <UIKit/UIKit.h>

@protocol PortalInfoViewControllerDelegate <NSObject>
@required
-(void)songChanged:(int)song;
@end

@interface PortalInfoViewController : UIViewController
- (IBAction)actionTouched:(UIBarButtonItem *)sender;
- (IBAction)segmentChanged:(UISegmentedControl *)sender;
@property (weak, nonatomic) IBOutlet UISegmentedControl *segmentedControl;

@property (nonatomic, weak) id <PortalInfoViewControllerDelegate> delegate;
@property int songIndex;
@end
