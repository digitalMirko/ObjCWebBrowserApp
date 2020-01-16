//
//  ViewController.h
//  Web Browser
//
//  Created by Mirko Cukich on 1/6/20.
//  Copyright © 2020 Digital Mirko. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <WebKit/WebKit.h>

@interface ViewController : UIViewController<WKNavigationDelegate, UISearchBarDelegate>

@property (weak, nonatomic) IBOutlet UISearchBar *searchBar;

@property (weak, nonatomic) IBOutlet WKWebView *webView;

@property (weak, nonatomic) IBOutlet UIActivityIndicatorView *actIndicator;

// toolbar buttons
- (IBAction)stopBtn:(id)sender;
- (IBAction)refreshBtn:(id)sender;
- (IBAction)backBtn:(id)sender;
- (IBAction)forwardBtn:(id)sender;


@end

