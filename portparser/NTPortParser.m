//
//  NTPortParser.m
//  portparser
//
//  Created by Sam Dunster on 31/10/2013.
//  Copyright (c) 2013 sdunster. All rights reserved.
//

#import "NTPortParser.h"

@interface NTPortParser ()
@property (strong, nonatomic) NSString *shortType;
@property (strong, nonatomic) NSString *number;
@end

@implementation NTPortParser

- (id)initWithDescription:(NSString *)description
{
    self = [super init];
    if (self) {
        self.description = description;
    }
    return self;
}

- (void)setDescription:(NSString *)description
{
    if(_description != description) {
        _description = description;

        NSString *string = @"TenGigabitEthernet1/2/10";
        NSError  *error  = NULL;

        NSRegularExpression *regex = [NSRegularExpression
                                      regularExpressionWithPattern:@"^([A-Za-z]{2})[A-Za-z]*([0-9/.]+)$"
                                      options:0
                                      error:&error];

        NSTextCheckingResult *result = [regex firstMatchInString:description options:0 range:NSMakeRange(0, [string length])];

        self.shortType = [string substringWithRange:[result rangeAtIndex:1]];
        self.number = [string substringWithRange:[result rangeAtIndex:2]];
    }
}

- (NSString *)shortDescription {
    return [NSString stringWithFormat:@"%@%@", self.shortType, self.number];
}

@end
