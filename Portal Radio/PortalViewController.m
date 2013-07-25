//
//  PortalViewController.m
//  Portal Radio
//
//  Created by Scott Bouloutian on 7/24/13.
//  Copyright (c) 2013 Scott Bouloutian. All rights reserved.
//

#import <AVFoundation/AVFoundation.h>
#import "PortalViewController.h"

@interface PortalViewController ()

@end

@implementation PortalViewController{
    AVAudioPlayer *player;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
    
    //Radio Border
    _radioBorder.image=[[UIImage imageNamed:@"RadioBorder"] resizableImageWithCapInsets:UIEdgeInsetsMake(36, 36, 36, 36)];
    
    //Speaker Border
    _speakerBorder.image=[[UIImage imageNamed:@"SpeakerBorder"] resizableImageWithCapInsets:UIEdgeInsetsMake(36, 36, 36, 36)];
    
    //Speaker Grill
    _speaker.backgroundColor=[UIColor colorWithPatternImage:[UIImage imageNamed:@"Speaker"]];
    
    //DisplayBorder
    _displayBorder.image=[[UIImage imageNamed:@"DisplayBorder"] resizableImageWithCapInsets:UIEdgeInsetsMake(36, 36, 36, 36)];
    
    //Scanlines
    _scanlines.backgroundColor=[UIColor colorWithPatternImage:[UIImage imageNamed:@"Scanlines"]];

    //Loop Music
    NSString *path = [[NSBundle mainBundle] pathForResource:@"RadioLoop" ofType:@"aiff"];
    player = [[AVAudioPlayer alloc] initWithContentsOfURL:[NSURL fileURLWithPath:path] error:nil];
    player.numberOfLoops=-1;
    [player play];
}

-(void)viewDidAppear:(BOOL)animated{

}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
