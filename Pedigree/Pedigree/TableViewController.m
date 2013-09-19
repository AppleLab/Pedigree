//
//  TableViewController.m
//  Pedigree
//
//  Created by user on 13.09.13.
//  Copyright (c) 2013 user. All rights reserved.
//

#import "TableViewController.h"
#import "DictionaryFilling.h"

@interface TableViewController ()

@end

@implementation TableViewController
@synthesize selectedBreed;
@synthesize tablePickerView;


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
	// Do any additional setup after loading the view.
   self.labelBreed.text=[[[DictionaryFilling dictionaryFill]objectAtIndex:1]objectAtIndex:0];
    
   
}



- (NSInteger)numberOfComponentsInPickerView:(UIPickerView *)thePickerView
{
    return 1;
}

- (NSInteger)pickerView:(UIPickerView *)thePickerView
numberOfRowsInComponent:(NSInteger)component
{
    return [[[DictionaryFilling dictionaryFill] objectAtIndex:0] count];
}

- (NSString *)pickerView:(UIPickerView *)pickerView titleForRow:(NSInteger)row forComponent:(NSInteger)component
{
    return [[[DictionaryFilling dictionaryFill]objectAtIndex:1]objectAtIndex:row];
}

- (void)pickerView:(UIPickerView *)pickerView didSelectRow:(NSInteger)row inComponent:(NSInteger)component{
    selectedBreed = [[[DictionaryFilling dictionaryFill]objectAtIndex:1]objectAtIndex:row];
    self.labelBreed.text = selectedBreed;
}


- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (void)viewDidUnload
{
    [super viewDidUnload];
    self.tablePickerView = nil;
}

@end
