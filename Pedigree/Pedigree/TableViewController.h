//
//  TableViewController.h
//  Pedigree
//
//  Created by user on 13.09.13.
//  Copyright (c) 2013 user. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface TableViewController : UIViewController{
   // NSString *selectedBreed;
}
@property NSString *selectedBreed;
@property (weak, nonatomic) IBOutlet UIPickerView *tablePickerView;
@property (weak, nonatomic) IBOutlet UILabel *labelBreed;

- (void)pickerView:(UIPickerView *)pickerView didSelectRow:(NSInteger)row inComponent:(NSInteger)component;
@end
 