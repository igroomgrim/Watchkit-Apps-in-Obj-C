//
//  RecordDetailInterfaceController.m
//  wapp
//
//  Created by Anak Mirasing on 7/2/15.
//  Copyright (c) 2015 iGROMGRiM. All rights reserved.
//

#import "RecordDetailInterfaceController.h"

@interface RecordDetailInterfaceController ()

@end

@implementation RecordDetailInterfaceController

- (void)awakeWithContext:(id)context {
    [super awakeWithContext:context];
    
    // Configure interface objects here.
    self.record = context;
}

- (void)willActivate {
    // This method is called when watch view controller is about to be visible to user
    [super willActivate];
    
    [self.statusLabel setText:self.record[@"status"]];
    [self.totalLabel setText:self.record[@"total"]];
    [self.dateLabel setText:self.record[@"date"]];
    [self.descriptionLabel setText:self.record[@"description"]];
    
    if ([self.record[@"status"] isEqualToString:@"Income"]) {
        [self.statusLabel setTextColor:[UIColor colorWithRed:0.20 green:0.65 blue:0.25 alpha:1.0]];
        [self.totalLabel setTextColor:[UIColor colorWithRed:0.20 green:0.65 blue:0.25 alpha:1.0]];
    }
    
    if ([self.record[@"status"] isEqualToString:@"Outcome"]) {
        [self.statusLabel setTextColor:[UIColor colorWithRed:0.71 green:0.17 blue:0.29 alpha:1.0]];
        [self.totalLabel setTextColor:[UIColor colorWithRed:0.71 green:0.17 blue:0.29 alpha:1.0]];
    }
}

- (void)didDeactivate {
    // This method is called when watch view controller is no longer visible
    [super didDeactivate];
}

@end



