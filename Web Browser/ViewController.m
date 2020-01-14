//
//  ViewController.m
//  Web Browser
//
//  Created by Mirko Cukich on 1/6/20.
//  Copyright © 2020 Digital Mirko. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    [self.webView loadRequest:[NSURLRequest requestWithURL:[NSURL URLWithString:@"http://google.com"]]];
    
}


- (IBAction)stopBtn:(id)sender {
}

- (IBAction)refreshBtn:(id)sender {
}

- (IBAction)backBtn:(id)sender {
}

- (IBAction)forwardBtn:(id)sender {
}
@end
