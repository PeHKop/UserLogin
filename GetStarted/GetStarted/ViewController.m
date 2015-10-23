//
//  ViewController.m
//  GetStarted
//
//  Created by Наумов Кирилл on 12.10.15.
//  Copyright (c) 2015 Наумов Кирилл. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)play:(id)sender {
    
    NSString *stream =  @"https://vimeo.com/142066073";
    NSURL *url =  [NSURL URLWithString:stream];
    NSURLRequest *requets = [NSURLRequest requestWithURL:url];
    [_video loadRequest:requets];
    
}
@end
