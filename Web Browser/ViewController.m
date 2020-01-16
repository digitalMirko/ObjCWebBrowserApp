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
    
    // removes magnifying glass graphic in the search bar element
    // depreciated line below in iOS 9
    [UITextField appearanceWhenContainedIn:[UISearchBar class], nil].leftView = nil;
    [UISearchBar appearance].searchTextPositionAdjustment = UIOffsetMake(10, 0);
    
    [self.webView loadRequest:[NSURLRequest requestWithURL:[NSURL URLWithString:@"http://google.com"]]];

    [self.webView addSubview:self.actIndicator];
    [self.actIndicator stopAnimating];
    
    // webView delegate
    self.webView.navigationDelegate = self;
    
}

- (void)webView:(WKWebView *)webView didCommitNavigation:(WKNavigation *)navigation {
    
    [self.actIndicator startAnimating];
}

- (void)webView:(WKWebView *)webView didFinishNavigation:(WKNavigation *)navigation {
    
    [self.actIndicator stopAnimating];
    
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

// Search bar search button clicked
- (void)searchBarSearchButtonClicked:(UISearchBar *)searchBar {
    
    [self.webView loadRequest:[NSURLRequest requestWithURL:[NSURL URLWithString:[NSString stringWithFormat:@"http://%@", self.searchBar.text]]]];
    
    // dismiss keyboard
    [searchBar resignFirstResponder];

}



@end
