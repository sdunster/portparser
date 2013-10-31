//
//  NTPortParser.h
//  portparser
//
//  Created by Sam Dunster on 31/10/2013.
//  Copyright (c) 2013 sdunster. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface NTPortParser : NSObject

@property () NSString *description;
@property (readonly) NSString *shortDescription;
@property (readonly, strong) NSString *shortType;
@property (readonly, strong) NSString *number;

- (id)initWithDescription:(NSString *)description;

@end
