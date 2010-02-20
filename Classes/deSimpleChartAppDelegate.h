//
//  deSimpleChartAppDelegate.h
//  deSimpleChart
//
//  Created by Benjamin M. Duivesteyn on 20.02.10.
//  Copyright TBA 2010. All rights reserved.
//

#import <UIKit/UIKit.h>

@class deSimpleChartViewController;

@interface deSimpleChartAppDelegate : NSObject <UIApplicationDelegate> {
    UIWindow *window;
    deSimpleChartViewController *viewController;
}

@property (nonatomic, retain) IBOutlet UIWindow *window;
@property (nonatomic, retain) IBOutlet deSimpleChartViewController *viewController;

@end

