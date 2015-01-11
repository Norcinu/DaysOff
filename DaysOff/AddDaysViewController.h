//
//  AddDaysViewController.h
//  DaysOff
//
//  Created by Steven Gleed on 10/01/2015.
//  Copyright (c) 2015 sgleed. All rights reserved.
//

#import <Cocoa/Cocoa.h>

@interface AddDaysViewController : NSViewController {
    NSMutableArray *dates;
}

@property (strong) IBOutlet NSDatePicker *datePicker;

- (IBAction)addDate:(id)sender;
- (IBAction)deleteLastDate:(id)sender;

@end
