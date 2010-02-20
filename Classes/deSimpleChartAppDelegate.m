//
//  deSimpleChartAppDelegate.m
//  deSimpleChart
//
//  Created by Benjamin M. Duivesteyn on 20.02.10.
//  Copyright TBA 2010. All rights reserved.
//

#import "deSimpleChartAppDelegate.h"
#import "deSimpleChartViewController.h"

@implementation deSimpleChartAppDelegate

@synthesize window;
@synthesize viewController;


- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {    
    
    // Override point for customization after app launch    
    [window addSubview:viewController.view];
    [window makeKeyAndVisible];
	
	return YES;
}


- (void)dealloc {
    [viewController release];
    [window release];
    [super dealloc];
}


@end
