//
//  DismissOnEnterIntention.m
//  Intentions
//
//  Created by Chris Eidhof on 16/03/14.
//  Copyright (c) 2014 Chris Eidhof. All rights reserved.
//

#import "DismissOnEnterIntention.h"

@interface DismissOnEnterIntention () <UITextFieldDelegate>

@end

@implementation DismissOnEnterIntention

- (BOOL)textField:(UITextField *)textField shouldChangeCharactersInRange:(NSRange)range replacementString:(NSString *)string
{
    if ([string isEqualToString:@"\n"]) {
        [textField resignFirstResponder];
        return NO;
    }
    return YES;
}

@end
