//
//  GymController.m
//  Ridgefield Parks and Recreation
//
//  Created by Nikhil Paranjape on 9/5/14.
//  Copyright (c) 2014 NikhilP. All rights reserved.
//

#import "GymController.h"

@interface GymController ()

@end

@implementation GymController

- (void)viewDidLoad {
	[super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
	
	NSString *path = [[NSBundle mainBundle] pathForResource:@"gym" ofType:@"pdf"];
	NSURL *url = [NSURL fileURLWithPath:path];
	NSURLRequest *request = [NSURLRequest requestWithURL:url];
	[gview loadRequest:request];
	[gview setScalesPageToFit:YES];
	[gview addSubview:activityind];
	
	timer = [NSTimer scheduledTimerWithTimeInterval:(1.0/2.0)
											 target:self
										   selector:@selector(loading)
										   userInfo:nil
											repeats:YES];
	// Do any additional setup after loading the view, typically from a nib.
}
-(void)loading {
	if (!gview.loading)
		[activityind stopAnimating];
	else
		[activityind startAnimating];
}
- (void)didReceiveMemoryWarning {
	[super didReceiveMemoryWarning];
	// Dispose of any resources that can be recreated.
}

@end
