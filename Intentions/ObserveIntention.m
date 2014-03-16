//
//  ObserveIntention.m
//  Intentions
//
//  Created by Chris Eidhof on 16/03/14.
//  Copyright (c) 2014 Chris Eidhof. All rights reserved.
//

#import "ObserveIntention.h"
#import "ModelContainer.h"

@interface ObserveIntention ()

@property (strong, nonatomic) IBOutlet id sourceObject;
@property (strong, nonatomic) IBOutlet id target;
@property (copy, nonatomic) IBOutlet NSString *sourceKeyPath;
@property (copy, nonatomic) IBOutlet NSString *targetKeyPath;

@end

@implementation ObserveIntention

- (void)awakeFromNib
{
    [super awakeFromNib];
    [self updateValue];
    [self.sourceObject addObserver:self forKeyPath:self.sourceKeyPath options:0 context:nil];
}

- (void)updateValue
{
    id value = [self.sourceObject valueForKeyPath:self.sourceKeyPath];
    if (self.targetKeyPath) {
        [self.target setValue:value forKeyPath:self.targetKeyPath];
    }
}

- (void)observeValueForKeyPath:(NSString *)keyPath ofObject:(id)object change:(NSDictionary *)change context:(void *)context
{
    if ([keyPath isEqualToString:self.sourceKeyPath]) {
        [self updateValue];
    }
}

@end
