//
//  SampleClass+Suffix.m
//  ObjectiveCTraining
//
//  Created by Kensuke Hoshikawa on 2016/09/16.
//  Copyright © 2016年 star__hoshi. All rights reserved.
//

#import "SampleClass+Suffix.h"

@implementation SampleClass(Suffix)

-(void) toStringSuffix:(id)target callback:(SEL)callback{
  NSInvocation* invoker = [NSInvocation invocationWithMethodSignature:[target methodSignatureForSelector:callback]];
  NSString* string = [NSString stringWithFormat:@"%@%@", self.str, @"っていう"];
  [invoker setTarget:target];
  [invoker setSelector:callback];
  [invoker setArgument:&string atIndex:2];
  [invoker invoke];
}

@end
