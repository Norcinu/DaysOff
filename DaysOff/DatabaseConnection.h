//
//  DatabaseConnection.h
//  DaysOff
//
//  Created by Steven Gleed on 29/03/2015.
//  Copyright (c) 2015 sgleed. All rights reserved.
//

#import <Foundation/Foundation.h>

@class MongoConnection;

@interface DatabaseConnection : NSObject
{
    NSArray
    *_connectionUrls;
    MongoConnection *_connection;
}

- (BOOL) open;
- (BOOL) shutdown;
- (void) insert:(NSString *)value;
- (void) update:(NSString *)value;

@end
