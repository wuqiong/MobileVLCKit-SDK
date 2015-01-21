//
//  DVIViewController.m
//  VLCKitPlayer
//
//  Created by 吴琼 on 14-3-19.
//  Copyright (c) 2014年 戴维营教育. All rights reserved.
//

#import "DVIViewController.h"
#import "DVIPlayerViewController.h"

@interface DVIViewController ()
@property (strong, nonatomic) IBOutlet UITextField *urlTextField;
@end

@implementation DVIViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
    
    _urlTextField.text = @"rtmp://live.hkstv.hk.lxdns.com/live/hks";

}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender
{
    DVIPlayerViewController *playerCtrl = [segue destinationViewController];
    playerCtrl.mediaPath = _urlTextField.text;
}
@end
