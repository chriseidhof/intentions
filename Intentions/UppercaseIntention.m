//
//  UppercaseIntention.m
//  Intentions
//
//  Created by Chris Eidhof on 16/03/14.
//  Copyright (c) 2014 Chris Eidhof. All rights reserved.
//

#import "UppercaseIntention.h"
#import "ModelContainer.h"

@interface UppercaseIntention ()

@property (weak, nonatomic) IBOutlet UITextField *textField;
@property (weak, nonatomic) IBOutlet ModelContainer* modelContainer;
@property (copy, nonatomic) NSString* modelKeyPath;


@end

@implementation UppercaseIntention

- (IBAction)capitalize:(id)sender {
    [self.modelContainer.model setValue:self.textField.text.uppercaseString
                                 forKey:self.modelKeyPath];
}

@end
