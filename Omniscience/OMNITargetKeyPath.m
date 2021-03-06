//
//  OMNITargetKeyPath.m
//  Omniscience
//
//  Created by Richard Venable on 1/20/14.
//  Copyright (c) 2014 Allogy Interactive. All rights reserved.
//

#import "OMNITargetKeyPath.h"

@implementation OMNITargetKeyPath

- (id)initWithTarget:(id)target keyPath:(NSString *)keyPath
{
	self = [super init];
	if (self) {
		_target = target;
		_keyPath = [keyPath copy];
	}
	return self;
}

- (NSString *)description
{
	return [NSString stringWithFormat:@"%@ Observing '%@' on object: %@", [super description], self.keyPath, self.target];
}

- (void)setValue:(id)value
{
	[self.target setValue:value forKeyPath:self.keyPath];
}

- (id)value
{
	return [self.target valueForKeyPath:self.keyPath];
}

@end
