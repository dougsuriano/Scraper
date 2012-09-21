//
//  ViewController.h
//  Scraper
//
//  Created by Douglas Suriano on 9/21/12.
//  Copyright (c) 2012 Doug Suriano. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController <UIWebViewDelegate> 

@property (nonatomic, retain)   IBOutlet    UIWebView       *theWebView;
@property (nonatomic, retain)   IBOutlet    UITextField     *theUrlField;

- (IBAction)scrapeSite:(id)sender;
- (IBAction)goToUrl:(id)sender;

@end
