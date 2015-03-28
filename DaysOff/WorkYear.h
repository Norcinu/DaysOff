//
//  WorkYear.h
//  DaysOff
//
//  Created by Steven Gleed on 23/01/2015.
//  Copyright (c) 2015 sgleed. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface WorkYear : NSObject

- (id) init;

-(void) setYearlyAllowance: (int)allowance;
-(void) addToCurrentCount: (int)newHoliday;

-(int) getYearlyAllowance;
-(int) getCurrentCount;
-(NSDate*) getDateAtIndex: (int)index;

@end
