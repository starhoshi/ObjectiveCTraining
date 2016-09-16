//
//  Hoge.m
//  ObjectiveCTraining
//
//  Created by Kensuke Hoshikawa on 2016/09/15.
//  Copyright © 2016年 star__hoshi. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Hoge.h"
@implementation Hoge
//メソッドの実装などなど
@synthesize index;

-(void) calc:(NSInteger *)num{
  self.index = 10;
}

-(void) callback: (NSString*) str{
  NSLog(@"%@", str);
}

-(void) caller: (id) target callback:(SEL) callback{
  NSInvocation* invoker = [NSInvocation invocationWithMethodSignature:[target methodSignatureForSelector:callback]];
  NSString* string = @"aaa";
  [invoker setTarget:target];
  [invoker setSelector:callback];
  [invoker setArgument:&string atIndex:2];
  [invoker invoke];

  NSString* str = @"hoge";
  id str2 = @"hoge";

  NSLog(@"hoge");
}

-(void) exec {
  [self caller:self callback:@selector(callback:)];
}

-(NSString*) getBreed{
  return @"kensuke";
}

@end
