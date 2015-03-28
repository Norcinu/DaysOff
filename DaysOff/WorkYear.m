//
//  WorkYear.m
//  DaysOff
//
//  Created by Steven Gleed on 23/01/2015.
//  Copyright (c) 2015 sgleed. All rights reserved.
//

#import "WorkYear.h"

@implementation WorkYear

int yearlyAllowance;
int allowanceTaken;
NSMutableArray *dates;

- (id)init
{
    self = [super init];
    if (self) {
        yearlyAllowance = 0;
        allowanceTaken = 0;
        dates = [NSMutableArray array];
      
        NSURL *url = [NSURL fileURLWithPath:@"/Users/steven/Documents/code/DaysOff/DaysOff/days.txt"];
        NSString *contents = [NSString stringWithContentsOfURL:url encoding:NSUTF8StringEncoding error:nil];
        NSArray *lines = [contents componentsSeparatedByString:@"\n"];
    }
    
    return self;
}


-(void) setYearlyAllowance:(int)allowance
{
    yearlyAllowance = allowance;
}

-(void) addToCurrentCount:(int)newHoliday
{
    allowanceTaken = newHoliday;
}

-(int) getYearlyAllowance
{
    return yearlyAllowance;
}

-(int) getCurrentCount
{
    return allowanceTaken;
}

-(NSDate *) getDateAtIndex:(int)index
{
    return [dates objectAtIndex:index];
}

@end
