//
//  DetailInformation.h
//  Pedigree
//
//  Created by user on 16.09.13.
//  Copyright (c) 2013 user. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface DetailInformation : UIViewController

@property (weak, nonatomic) IBOutlet UITextView *Text;
@property (weak, nonatomic) IBOutlet UILabel *Label;
@property NSString *name;
@property NSString *ID;

- (NSString *) gettingInformation :(NSString *)owner :(NSString *)color :(NSString *)sire :(NSString *)dam :(NSString *)breed :(NSString *)gender :(NSString *)titles;
- (NSString *) textInfo :(NSString *)ID;

@end
