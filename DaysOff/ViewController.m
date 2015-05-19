//
//  ViewController.m
//  DaysOff
//
//  Created by Steven Gleed on 10/01/2015.
//  Copyright (c) 2015 sgleed. All rights reserved.
//

#import "ViewController.h"
#import "AddDaysViewController.h"
#import "WorkYear.h"

@implementation ViewController

WorkYear *workYear;


- (void)viewDidLoad {
    [super viewDidLoad];
    
    workYear = [[WorkYear alloc] init];
    
    [workYear setYearlyAllowance:21];
    _lblDaysOff.stringValue = [NSString stringWithFormat:@"%d", [workYear getYearlyAllowance]];
    _lblDaysTaken.stringValue = [NSString stringWithFormat:@"%d", [workYear getCurrentCount]];
    
    [self.tableViewController addObject:@"brup?"];
}

- (void)prepareForSegue:(NSStoryboardSegue *)segue sender:(id)sender {
    if([[segue identifier] isEqualToString:@"AddDaysViewController"]) {
        AddDaysViewController *controller = segue.destinationController;
        controller.representedObject = @"Brup?";
    }
}

- (void)setRepresentedObject:(id)representedObject {
    [super setRepresentedObject:representedObject];

    // Update the view, if already loaded.
}

-(NSInteger)numberOf

@end
