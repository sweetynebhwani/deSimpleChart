//
//  deSimpleChartViewController.m
//  deSimpleChart
//
//  Created by Benjamin M. Duivesteyn on 20.02.10.
//  Copyright TBA 2010. All rights reserved.
//

#import "deSimpleChartViewController.h"

@implementation deSimpleChartViewController



/*
// The designated initializer. Override to perform setup that is required before the view is loaded.
- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil {
    if ((self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil])) {
        // Custom initialization
    }
    return self;
}
*/

/*
// Implement loadView to create a view hierarchy programmatically, without using a nib.
- (void)loadView {
}
*/


// Implement viewDidLoad to do additional setup after loading the view, typically from a nib.
- (void)viewDidLoad {
    [super viewDidLoad];
	[self sparkleChart];
	

}


// Override to allow orientations other than the default portrait orientation.
- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation {
	// Return YES for supported orientations.
	return (interfaceOrientation == UIInterfaceOrientationLandscapeRight);
}



-(void)sparkleChart{
	
	
	CKSparkline *sparkline = [[CKSparkline alloc]
							  initWithFrame:CGRectMake(17.0, 32.0, 444, 241.0)];
	
    // Sample data
    sparkline.data = [NSArray arrayWithObjects:
                      [NSNumber numberWithFloat:6.0],
                      [NSNumber numberWithFloat:1.5],
                      [NSNumber numberWithFloat:5.2],
                      [NSNumber numberWithFloat:0.1],
                      [NSNumber numberWithFloat:2.3],
                      [NSNumber numberWithFloat:2.1],
                      [NSNumber numberWithFloat:4.3],
                      [NSNumber numberWithFloat:1.1],
                      [NSNumber numberWithFloat:7.4],
                      [NSNumber numberWithFloat:5.1],
                      [NSNumber numberWithFloat:2.3],
                      [NSNumber numberWithFloat:5.9],
                      [NSNumber numberWithFloat:8.2],
                      nil];
	sparkline.lineColor = [UIColor colorWithRed:0.4 green:0.65 blue:0.84 alpha:1];
	
    [self.view addSubview:sparkline];
    [sparkline release];
    
	
}


/*
// Override to allow orientations other than the default portrait orientation.
- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation {
    // Return YES for supported orientations
    return (interfaceOrientation == UIInterfaceOrientationPortrait);
}
*/

- (void)didReceiveMemoryWarning {
	// Releases the view if it doesn't have a superview.
    [super didReceiveMemoryWarning];
	
	// Release any cached data, images, etc that aren't in use.
}

- (void)viewDidUnload {
	// Release any retained subviews of the main view.
	// e.g. self.myOutlet = nil;
}


- (void)dealloc {
    [super dealloc];
}

@end
