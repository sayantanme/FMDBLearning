//
//  AddStudent.m
//  FMDBLearning
//
//  Created by Sayantan Chakraborty on 06/03/16.
//  Copyright © 2016 Sayantan Chakraborty. All rights reserved.
//

#import "AddStudent.h"
@interface AddStudent()<UITextFieldDelegate>
@property (weak, nonatomic) IBOutlet UITextField *studentName;
@property (weak, nonatomic) IBOutlet UITextField *studentJoinDate;

@end
@implementation AddStudent

-(BOOL)textFieldShouldReturn:(UITextField *)textField
{
    [textField resignFirstResponder];
    return YES;
}
- (IBAction)done:(UIButton *)sender {
}
- (IBAction)cancel:(UIButton *)sender {
}

@end
