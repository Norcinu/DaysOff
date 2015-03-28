//
//  AddDaysViewController.m
//  DaysOff
//
//  Created by Steven Gleed on 10/01/2015.
//  Copyright (c) 2015 sgleed. All rights reserved.
//

#import "AddDaysViewController.h"

@interface AddDaysViewController ()

@end

@implementation AddDaysViewController

- (void)viewDidLoad {
    [super viewDidLoad];

    dates = [NSMutableArray array];
    
    NSDate *today = [NSDate date];
    [[self datePicker] setDateValue:today];

}

- (IBAction)addDate:(id)sender {
    [dates addObject:[[self datePicker] dateValue]];
}

- (IBAction)deleteLastDate:(id)sender {
    [dates removeLastObject];
}

@end
