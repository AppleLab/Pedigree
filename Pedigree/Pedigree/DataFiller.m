//
//  DataFiller.m
//  Pedigree
//
//  Created by user on 14.09.13.
//  Copyright (c) 2013 user. All rights reserved.
//

#import "DataFiller.h"

@implementation DataFiller

+(NSMutableArray *) fillData:(NSArray *)arrayOfIDs and:(NSArray *)arrayOfNames
{
    NSMutableArray *result = [[NSMutableArray alloc] init];
    [result addObject: arrayOfIDs];
    [result addObject: arrayOfNames];
    return result;
}

@end