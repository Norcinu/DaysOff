//
//  AppDelegate.h
//  DaysOff
//
//  Created by Steven Gleed on 10/01/2015.
//  Copyright (c) 2015 sgleed. All rights reserved.
//

#import <Cocoa/Cocoa.h>

@interface AppDelegate : NSObject <NSApplicationDelegate, NSTableViewDelegate>

-(NSView *)tableView:(NSTableView *)tableView viewForTableColumn:(NSTableColumn *)tableColumn row:(NSInteger)row;


@end

