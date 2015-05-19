//
//  DatabaseConnection.m
//  DaysOff
//
//  Created by Steven Gleed on 29/03/2015.
//  Copyright (c) 2015 sgleed. All rights reserved.
//

#import "DatabaseConnection.h"
#import <ObjCMongoDB.h>

@implementation DatabaseConnection



-(id) init
{
    self = [super init];
    _connectionUrls = [NSArray arrayWithObjects:@"127.0.0.1:27017",
                       @"127.0.0.1:27017", nil];



    return self;
}

-(BOOL) open
{
    NSUInteger count = [_connectionUrls count];
    NSError *error = nil;
    
    for (NSUInteger i = 0; i < count; count++) {
        _connection = [MongoConnection connectionForServer:_connectionUrls[i] error:&error];
        if (_connection != nil)
            break;
    }

    
    return YES;
}

-(BOOL) shutdown
{
    return YES;
}

-(void) insert:(NSString *)value
{
    
}

@end
