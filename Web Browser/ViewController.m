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
    
    [self.webView stopLoading];
}

- (IBAction)refreshBtn:(id)sender {
    
    [self.webView reload];
}

- (IBAction)backBtn:(id)sender {
    // checks if can to go back
    if([self.webView canGoBack]){
        [self.webView goBack];
    }
}

- (IBAction)forwardBtn:(id)sender {
    // checks if can go forward
    if([self.webView goForward]){
        [self.webView goForward];
    }
}
@end
