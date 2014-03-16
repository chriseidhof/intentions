//
//  ReverseIntention.m
//  Intentions
//
//  Created by Chris Eidhof on 16/03/14.
//  Copyright (c) 2014 Chris Eidhof. All rights reserved.
//

#import "ReverseIntention.h"
#import "NSString+Reverse.h"
#import "ModelContainer.h"

@interface ReverseIntention ()

@property (weak, nonatomic) IBOutlet UITextField *textField;
@property (weak, nonatomic) IBOutlet ModelContainer* modelContainer;
@property (copy, nonatomic) NSString * modelKeyPath;

@end

@implementation ReverseIntention

- (IBAction)reverse:(id)sender {
    [self.modelContainer.model setValue:self.textField.text.reversedString forKeyPath:self.modelKeyPath];
}

@end
