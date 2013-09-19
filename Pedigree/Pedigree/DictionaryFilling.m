//
//  DictionaryFilling.m
//  Pedigree
//
//  Created by user on 13.09.13.
//  Copyright (c) 2013 user. All rights reserved.
//

#import "DictionaryFilling.h"

@implementation DictionaryFilling


+(NSMutableArray *)dictionaryFill{
    
    NSMutableArray *dictionary = [[NSMutableArray alloc] init];
    NSArray *values = [NSArray arrayWithObjects:@"1", @"2", @"3",@"4",@"5",@"6",@"7", nil];
    NSArray *titles = [NSArray arrayWithObjects:@"Affenpinscher", @"Afghan Hound", @"American Hairless Terrier",@"Basenji Cesky Fousek",@"Drentse Patrijshond",@"English White Terrier",@"Finnish Hound" ,nil];

    [dictionary addObject:values];
    [dictionary addObject:titles];
    return dictionary;
    
}

@end
