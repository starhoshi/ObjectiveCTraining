//
//  SampleClass.h
//  ObjectiveCTraining
//
//  Created by Kensuke Hoshikawa on 2016/09/15.
//  Copyright © 2016年 star__hoshi. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "SampleClassDelegate.h"

@interface SampleClass : NSObject <SampleClassDelegate>{
  int index;
  NSString *str;
}
@property(assign) int index;
@property(nonatomic, retain) NSString *str;

+(void) dump : (SampleClass*) instance;
-(void) setData : (NSString*) str str: (NSString*) number;
-(void) setData : (NSString*) str num: (NSInteger) number;
-(NSString*) toString;


@end
