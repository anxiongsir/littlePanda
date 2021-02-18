//
//  ViewController.m
//  PaperTest
//
//  Created by 安熊 on 2021/2/18.
//

#import "ViewController.h"

@interface ViewController ()
{
    void(^cycleBlock)(void);
}
@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    [self testBlock];
  
}

- (void)testBlock
{
    int a  = 10;
    cycleBlock = ^{
        NSLog(@"AA%d",a);
    };
    a = 20;
    cycleBlock();
    NSLog(@"BB%d",a);
}


@end
