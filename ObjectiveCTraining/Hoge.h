//
//  Hoge.h
//  ObjectiveCTraining
//
//  Created by Kensuke Hoshikawa on 2016/09/15.
//  Copyright © 2016年 star__hoshi. All rights reserved.
//

#ifndef Hoge_h
#define Hoge_h

@protocol Cat
-(NSString*) getBreed;
@end

@interface Hoge : NSObject <Cat>{
  //メンバ変数宣言
  NSInteger num;
}

@property(assign, nonatomic) NSInteger index;

//メソッド宣言

-(void) calc : (NSInteger*) num;
-(void) calc2 : (NSInteger*) num num2 : (NSInteger*) num2;
+(NSString*) intToStr : (NSInteger*) num;

@end

#endif /* Hoge_h */
