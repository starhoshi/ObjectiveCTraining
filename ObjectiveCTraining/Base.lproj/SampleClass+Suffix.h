//
//  SampleClass+Suffix.h
//  ObjectiveCTraining
//
//  Created by Kensuke Hoshikawa on 2016/09/16.
//  Copyright © 2016年 star__hoshi. All rights reserved.
//

#import "SampleClass.h"
@interface SampleClass (Suffix)
-(void) toStringSuffix: (id) target callback:(SEL) callback;
@end
