//
//  RecordDetailInterfaceController.h
//  wapp
//
//  Created by Anak Mirasing on 7/2/15.
//  Copyright (c) 2015 iGROMGRiM. All rights reserved.
//

#import <WatchKit/WatchKit.h>
#import <Foundation/Foundation.h>

@interface RecordDetailInterfaceController : WKInterfaceController

@property (weak, nonatomic) IBOutlet WKInterfaceLabel *statusLabel;
@property (weak, nonatomic) IBOutlet WKInterfaceLabel *totalLabel;
@property (weak, nonatomic) IBOutlet WKInterfaceLabel *dateLabel;
@property (weak, nonatomic) IBOutlet WKInterfaceLabel *descriptionLabel;
@property (nonatomic, strong) NSDictionary *record;
@end
