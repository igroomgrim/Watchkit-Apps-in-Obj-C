//
//  RecordRow.h
//  wapp
//
//  Created by Anak Mirasing on 7/2/15.
//  Copyright (c) 2015 iGROMGRiM. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <WatchKit/WatchKit.h>

@interface RecordRow : NSObject

@property (weak, nonatomic) IBOutlet WKInterfaceLabel *statusLabel;
@property (weak, nonatomic) IBOutlet WKInterfaceLabel *totalLabel;
@property (weak, nonatomic) IBOutlet WKInterfaceLabel *descriptionLabel;


@end
