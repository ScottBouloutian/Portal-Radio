//
//  PortalViewController.m
//  Portal Radio
//
//  Created by Scott Bouloutian on 7/24/13.
//  Copyright (c) 2013 Scott Bouloutian. All rights reserved.
//

#import "PortalViewController.h"

@interface PortalViewController ()

@end

@implementation PortalViewController{
    AVAudioPlayer *audioPlayer;
    int songIndex;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    
    // Set initial song index coresponding to the Still Alive Salsa
    songIndex=0;
    [self songChanged:songIndex];
    
    // Radio Border
    _radioBorder.image=[[UIImage imageNamed:@"RadioBorder"] resizableImageWithCapInsets:UIEdgeInsetsMake(36, 36, 36, 36)];
    
    // Speaker Border
    _speakerBorder.image=[[UIImage imageNamed:@"SpeakerBorder"] resizableImageWithCapInsets:UIEdgeInsetsMake(36, 36, 36, 36)];
    
    // Speaker Grill
    _speaker.backgroundColor=[UIColor colorWithPatternImage:[UIImage imageNamed:@"Speaker"]];
    
    // DisplayBorder
    _displayBorder.image=[[UIImage imageNamed:@"DisplayBorder"] resizableImageWithCapInsets:UIEdgeInsetsMake(36, 36, 36, 36)];
    
    // Scanlines
    _scanlines.backgroundColor=[UIColor colorWithPatternImage:[UIImage imageNamed:@"Scanlines"]];
    
}

-(void)viewWillAppear:(BOOL)animated{
    // Remove the navigation bar
    self.navigationController.navigationBarHidden=YES;
}

-(void)viewDidAppear:(BOOL)animated{
    [audioPlayer play];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

-(void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender{
    [audioPlayer stop];
    if([segue.identifier isEqualToString:@"infoSegue"]){
        PortalInfoViewController *controller = segue.destinationViewController;
        controller.delegate=self;
        controller.songIndex=songIndex;
        
    }
}

- (IBAction)stationTouched {
    if (audioPlayer.playing){
        [audioPlayer pause];
    }
    else{
        [audioPlayer play];
    }
}

#pragma mark PortalInfoViewController delegate
-(void)songChanged:(int)song{
    songIndex=song;
    NSString *path;
    if(song==0){
        // Still Alive Salsa
        path = [[NSBundle mainBundle] pathForResource:@"RadioLoop" ofType:@"aiff"];
    }else{
        // Exile Villify
        path = [[NSBundle mainBundle] pathForResource:@"ExileLoop" ofType:@"aiff"];
    }
    
    // Loop the music
    audioPlayer = [[AVAudioPlayer alloc] initWithContentsOfURL:[NSURL fileURLWithPath:path] error:nil];
    audioPlayer.delegate=self;
    audioPlayer.numberOfLoops=-1;
}


#pragma mark AVAudioPlayer delegate
-(void)audioPlayerBeginInterruption:(AVAudioPlayer *)player{
    
}

@end
