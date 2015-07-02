//
//  TableViewInterfaceController.m
//  wapp
//
//  Created by Anak Mirasing on 7/2/15.
//  Copyright (c) 2015 iGROMGRiM. All rights reserved.
//

#import "TableViewInterfaceController.h"
#import "RecordSource.h"
#import "RecordRow.h"

@interface TableViewInterfaceController ()

@property (nonatomic, strong) NSArray *records;

@end

@implementation TableViewInterfaceController

- (void)awakeWithContext:(id)context {
    [super awakeWithContext:context];
    
    // Configure interface objects here.
    
    [self reloadTable];
}

- (void)willActivate {
    // This method is called when watch view controller is about to be visible to user
    [super willActivate];
}

- (void)didDeactivate {
    // This method is called when watch view controller is no longer visible
    [super didDeactivate];
}

- (void)reloadTable {
    NSLog(@"reloadTable");
    self.records = [RecordSource recordDictionary];
    
    
    [self.table setNumberOfRows:self.records.count withRowType:@"RecordRow"];
    
    // Set row properties
    for (NSDictionary *record in self.records) {
        RecordRow *row = [self.table rowControllerAtIndex:[self.records indexOfObject:record]];
        
        [row.statusLabel setText:record[@"status"]];
        if ([record[@"status"] isEqualToString:@"Income"]) {
            [row.statusLabel setTextColor:[UIColor colorWithRed:0.20 green:0.65 blue:0.25 alpha:1.0]];
            [row.totalLabel setTextColor:[UIColor colorWithRed:0.20 green:0.65 blue:0.25 alpha:1.0]];
        }
        
        if ([record[@"status"] isEqualToString:@"Outcome"]) {
            [row.statusLabel setTextColor:[UIColor colorWithRed:0.71 green:0.17 blue:0.29 alpha:1.0]];
            [row.totalLabel setTextColor:[UIColor colorWithRed:0.71 green:0.17 blue:0.29 alpha:1.0]];
        }
        
        [row.totalLabel setText:record[@"total"]];
        [row.descriptionLabel setText:record[@"description"]];
    }
    
    
}

- (void)table:(WKInterfaceTable *)table didSelectRowAtIndex:(NSInteger)rowIndex {
    // Push detail view with selected quote
    [self pushControllerWithName:@"RecordDetailInterfaceController" context:[self.records objectAtIndex:rowIndex]];
}

@end



