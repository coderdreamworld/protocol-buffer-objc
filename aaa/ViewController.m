//
//  ViewController.m
//  aaa
//
//  Created by pinchwang on 2017/6/23.
//  Copyright © 2017年 pinchwang. All rights reserved.
//

#import "ViewController.h"
#import "PackMess.pbobjc.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    UIButton *btn1 = [UIButton buttonWithType:UIButtonTypeCustom];
    btn1.frame = CGRectMake(100, 100, 50, 50);
    [self.view addSubview:btn1];
    btn1.backgroundColor = [UIColor redColor];
    
    [btn1 addTarget:self action:@selector(btn1:) forControlEvents:UIControlEventTouchUpInside];
}

- (void)btn1:(id)sender {
    helloworld *send = [[helloworld alloc] init];
    [send setId_p:10];
    [send setStr:@"heheda"];
    NSData *data = [send data];
    
    helloworld *newParse = [helloworld parseFromData:data error:nil];
    NSLog(@"输出 %@", [newParse str]);
    
    if ([newParse hasStr]) {
        NSLog(@"xxxxxx");
    }
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
