//
//  RecordSource.m
//  wapp
//
//  Created by Anak Mirasing on 7/2/15.
//  Copyright (c) 2015 iGROMGRiM. All rights reserved.
//

#import "RecordSource.h"

@implementation RecordSource

+ (NSArray *)recordDictionary {
    NSMutableArray *records = [NSMutableArray new];
    
    [records addObject:@{@"status": @"Income", @"total": @"20,000",@"date": @"04/05/2015", @"description": @"Salary"}];
    [records addObject:@{@"status": @"Outcome", @"total": @"120",@"date": @"04/05/2015", @"description": @"Snack"}];
    [records addObject:@{@"status": @"Outcome", @"total": @"5,500",@"date": @"04/05/2015", @"description": @"Home Rent"}];
    [records addObject:@{@"status": @"Income", @"total": @"1,500",@"date": @"04/05/2015", @"description": @"Mini Jobs"}];
    [records addObject:@{@"status": @"Outcome", @"total": @"1,000",@"date": @"04/05/2015", @"description": @"Buy Earphone"}];
    
    return [NSArray arrayWithArray:records];
}

@end
