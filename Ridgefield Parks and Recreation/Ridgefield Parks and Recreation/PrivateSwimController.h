//
//  PrivateSwimController.h
//  Ridgefield Parks and Recreation
//
//  Created by Nikhil Paranjape on 9/5/14.
//  Copyright (c) 2014 NikhilP. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface PrivateSwimController : UIViewController{
	IBOutlet UIWebView *psview;
	IBOutlet UIActivityIndicatorView *activityind;
	NSTimer *timer;
	
}

@end
