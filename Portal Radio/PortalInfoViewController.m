//
//  PortalInfoViewController.m
//  Portal Radio
//
//  Created by Scott Bouloutian on 10/21/13.
//  Copyright (c) 2013 Scott Bouloutian. All rights reserved.
//

#import "PortalInfoViewController.h"

@interface PortalInfoViewController ()

@end

@implementation PortalInfoViewController
@synthesize delegate;
@synthesize songIndex;

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
}

-(void)viewWillAppear:(BOOL)animated{
    // Show the navigation bar
    self.navigationController.navigationBarHidden=NO;
    
    // Set the segmented control selection
    _segmentedControl.selectedSegmentIndex=songIndex;
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)actionTouched:(UIBarButtonItem *)sender {
    NSArray *shareItems = [[NSArray alloc]initWithObjects:@"I'm using the Radio from Portal on the App Store! Check it out:\nhttps://itunes.apple.com/us/app/radio-from-portal/id725328144?ls=1&mt=8", nil];
    UIActivityViewController * activities = [[UIActivityViewController alloc] initWithActivityItems:shareItems applicationActivities:nil];
    [self presentViewController:activities animated:YES completion:nil];
}

- (IBAction)segmentChanged:(UISegmentedControl *)sender {
    [delegate songChanged:sender.selectedSegmentIndex];
}


@end
