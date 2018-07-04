//
//  ViewController.m
//  消息代理NSProxy
//
//  Created by jorgon on 03/07/18.
//  Copyright © 2018年 jorgon. All rights reserved.
//

#import "ViewController.h"
#import "MyProxy.h"

@interface ViewController ()
@property (nonatomic, weak) NSTimer * timer;
@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    self.timer = [NSTimer scheduledTimerWithTimeInterval:0.5
                                                  target:[MyProxy proxyWithTarget:self]
                                                selector:@selector(test)
                                                userInfo:nil
                                                 repeats:YES];
    
}

- (void)touchesBegan:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event{
    if (self.presentingViewController) {
        [self dismissViewControllerAnimated:YES completion:nil];
    } else {
        ViewController * vc = [[ViewController alloc] init];
        vc.title = @"test";
        vc.view.backgroundColor = [UIColor cyanColor];
        [self presentViewController:vc animated:YES completion:nil];
    }
}

- (void)viewWillDisappear:(BOOL)animated{
    [super viewWillDisappear:animated];
}

- (void)test{
    NSLog(@"%@",self.title);
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (void)dealloc{
//    [self.timer invalidate];
//    self.timer = nil;
    NSLog(@"%s",__func__);
}


@end
