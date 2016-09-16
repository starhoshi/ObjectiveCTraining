//
//  ViewController.m
//  ObjectiveCTraining
//
//  Created by Kensuke Hoshikawa on 2016/09/15.
//  Copyright © 2016年 star__hoshi. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()
@property (weak, nonatomic) IBOutlet UILabel *titleLabel;

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
}


- (void)didReceiveMemoryWarning {
  [super didReceiveMemoryWarning];
  // Dispose of any resources that can be recreated.
}

-(void)exec{
  SampleClass* sample = [[SampleClass alloc] init];
  id<SampleClassDelegate> delegate = sample;

  NSNumber* num = [NSNumber numberWithInteger:120];
  [num stringValue];

  [sample setData:@"1回目" num:100];
  NSLog(@"%@", [sample toString]);

  [sample setData:@"2回目" str:@"50"];
  NSLog(@"object:%@", [sample toStringDao]);
  NSLog(@"delegate:%@", [delegate toStringDao]);

  [sample toStringSuffix:self callback:@selector(callback:)];

}

-(void) callback:(NSString*) str {
  NSLog(@"callback:%@", str);
}

@end
