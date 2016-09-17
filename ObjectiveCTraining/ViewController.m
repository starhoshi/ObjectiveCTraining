//
//  ViewController.m
//  ObjectiveCTraining
//
//  Created by Kensuke Hoshikawa on 2016/09/15.
//  Copyright © 2016年 star__hoshi. All rights reserved.
//

#import "ViewController.h"
#import "MyLibrary.h"

@interface ViewController ()
@property (weak, nonatomic) IBOutlet UILabel *titleLabel;

@end

typedef struct Person {
  float height;
  float weight;
  int birthYear;
  int birthMonth;
  int birthDay;
} Person;

typedef enum Season {SPRING, SUMMER, AUTUMN, WINTER} Season;
typedef enum Color {RED, GREEN, BLUE, YELLOW} Color;

@interface Zukei :NSObject{
@protected
  Color cl;
}
@property Color cl;
@end

@implementation Zukei
@synthesize cl;
+(void) dispTheoryOfArea{
  NSLog(@"公式などない");
}
@end





@implementation ViewController

- (void)viewDidLoad {
  [super viewDidLoad];
// aaa
  /* aaa */
  // Do any additional setup after loading the view, typically from a nib.
  NSObject *obj = [[NSObject alloc] init];
  int aaaa = 1;

  NSObject *object1 = [[NSObject alloc] init];
  id object2 = object1;

  NSNumber* num = [NSNumber numberWithInteger:120];
  [num stringValue];
  [self exec];

  NSLog(@"hello,\"\n\"world");

  NSInteger a = 3.6;

  Boolean test = true;
  BOOL booo = true;

  if (!test) {
    NSLog(@"true");
  } else if(test) {
    NSLog(@"false");
  }

  switch(test) {
    case true:
      NSLog(@"true");
      break;
    case false:
      NSLog(@"false");
      break;
    default:
      NSLog(@"default");
      break;
  }

  for (int i = 0; i < 10; i++){
    NSLog(@"%d", i);
  }

  dispOnePlusOne(1);
  myFunc();

  Person person = {1,1,1,1,1};
  person.birthDay = 10;

  Season sn = SPRING;
  NSLog(@"sn%d", sn);

//  Sankaku *sankakuA = [[Sankaku alloc] init];
//  [sankakuA setTakasa:10];
//
//  Sankaku *sankakuB = [[Sankaku alloc] init];
//  [sankakuB setTakasa:10];
//  [sankakuA setTeihen:10];
//  sankakuA.teihen = 10;
//  sankakuA.cl = GREEN;
//  [Sankaku dispTheoryOfArea];
//  NSLog(@"%f", [sankakuB getAreaOfTriangle]);
//  [sankakuB sizeBigger:2 :2];
//  NSLog(@"%f", [sankakuB getAreaOfTriangle]);
}

void dispOnePlusOne(int num){
  NSLog(@"%d", num+1);
}


- (void)didReceiveMemoryWarning {
  [super didReceiveMemoryWarning];
  // Dispose of any resources that can be recreated.
}

-(void)exec{
  SampleClass* sample = [[SampleClass alloc] init];
  id<SampleClassDelegate> delegate = sample;


  [sample setData:@"1回目" num:100];
  NSLog(@"%@", [sample toString]);

  [sample setData:@"2回目" str:@"50"];
  NSLog(@"object:%@", [sample toStringDao]);
  NSLog(@"delegate:%@", [delegate toStringDao]);

  [sample toStringSuffix:self callback:@selector(callback:)];

  NSString *str = @"aaa";
  NSNumber *num = [[NSNumber alloc]initWithInt:1];
  NSArray *arr = [[NSArray alloc] initWithObjects:str, num, nil];
  [[arr objectAtIndex:1] intValue];
  NSArray *array = [arr sortedArrayUsingSelector:@selector(compare:)];
  @try {
[arr objectAtIndex:100];
  } @catch (NSException *exception) {
    NSLog(@"%@", exception.name);
  }


}

-(void) callback:(NSString*) str {
  NSLog(@"callback:%@", str);
}

@end

