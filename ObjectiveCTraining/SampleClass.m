//
//  SampleClass.m
//  ObjectiveCTraining
//
//  Created by Kensuke Hoshikawa on 2016/09/15.
//  Copyright © 2016年 star__hoshi. All rights reserved.
//

#import "SampleClass.h"
@implementation SampleClass
@synthesize index;
@synthesize str;

+ (void) dump:(SampleClass *) instance {
  NSLog(@"%@", [instance toString]);
}

-(void) setData : (NSString*) text str: (NSString*) number {
  self.str = text;
  self.index = [number intValue];
}

-(void) setData : (NSString*) text num: (NSInteger) number {
  self.str = text;
  self.index = number;
}

-(NSString*) toString{
  return [NSString stringWithFormat:@"%@:%d", self.str, self.index];
}

-(NSString*) toStringDao{
  return [NSString stringWithFormat:@"%@:%d:%@", self.str, self.index, @"dao"];
}

@end
