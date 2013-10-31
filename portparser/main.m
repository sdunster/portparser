//
//  main.m
//  portparser
//
//  Created by Sam Dunster on 31/10/2013.
//  Copyright (c) 2013 sdunster. All rights reserved.
//

#import <Foundation/Foundation.h>

#import "NTPortParser.h"

int main(int argc, const char * argv[])
{

    @autoreleasepool {

        NTPortParser *portParser = [[NTPortParser alloc] initWithDescription:@"TenGigabitEthernet1/2/10"];
        NSLog(@"Short: %@", portParser.shortDescription);
        NSLog(@"Long: %@", portParser); // this calls portParser.description
        
    }
    return 0;
}

