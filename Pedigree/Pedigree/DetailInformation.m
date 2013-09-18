//
//  DetailInformation.m
//  Pedigree
//
//  Created by user on 16.09.13.
//  Copyright (c) 2013 user. All rights reserved.
//

#import "DetailInformation.h"

@interface DetailInformation ()

@end

@implementation DetailInformation

@synthesize name;
@synthesize ID;

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    self.Label.text = name;
    self.Text.text = [self textInfo: ID];
    //self.Text.text = [self gettingInformation:@"Michael" :@"Red" :@"Scooby-doo" :@"Djessi" :@"Spaniel" :@"Male" :@"King"];
	// Do any additional setup after loading the view.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

-(NSString *) gettingInformation :(NSString *)owner :(NSString *)color :(NSString *)sire :(NSString *)dam :(NSString *)breed :(NSString *)gender :(NSString *)titles
{
    NSString *result = [[NSString alloc] init];
    if (owner != nil)
    {
        result = [result stringByAppendingString:@"Owner: "];
        result = [result stringByAppendingString:owner];
    }
    if (color != nil)
    {
        result = [result stringByAppendingString:@"\nColor: "];
        result = [result stringByAppendingString:color];
    }
    if (sire != nil)
    {
        result = [result stringByAppendingString:@"\nSire: "];
        result = [result stringByAppendingString:sire];
    }
    if (dam != nil)
    {
        result = [result stringByAppendingString:@"\nDam: "];
        result = [result stringByAppendingString:dam];
    }
    if (breed != nil)
    {
        result = [result stringByAppendingString:@"\nBreed: "];
        result = [result stringByAppendingString:breed];
    }
    if (gender != nil)
    {
        result = [result stringByAppendingString:@"\nGender: "];
        result = [result stringByAppendingString:gender];
    }
    if (titles != nil)
    {
        result = [result stringByAppendingString:@"\nTitles: "];
        result = [result stringByAppendingString:titles];
    }
    return result;
}

- (NSString *) textInfo:(NSString *)ID
{
    // should take the information about dog from DB
    NSString *result = [self gettingInformation:@"Michael" :@"Red" :@"Scooby-doo" :@"Djessi" :@"Spaniel" :@"Male" :@"King"];
    return result;
}

@end
