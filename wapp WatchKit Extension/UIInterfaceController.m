//
//  UIInterfaceController.m
//  wapp
//
//  Created by Anak Mirasing on 7/2/15.
//  Copyright (c) 2015 iGROMGRiM. All rights reserved.
//

#import "UIInterfaceController.h"

@interface UIInterfaceController ()

@end

@implementation UIInterfaceController

- (void)awakeWithContext:(id)context {
    [super awakeWithContext:context];
    
    // Configure interface objects here.
}

- (void)willActivate {
    // This method is called when watch view controller is about to be visible to user
    [super willActivate];
}

- (void)didDeactivate {
    // This method is called when watch view controller is no longer visible
    [super didDeactivate];
}

- (IBAction)switchChange:(BOOL)value {
    if (value) {
        NSLog(@"On");
    }else{
        NSLog(@"Off");
    }
}

- (IBAction)sliderChange:(float)value {
    NSLog(@"%.2f",value);
}

@end



