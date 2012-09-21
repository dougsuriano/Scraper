//
//  ViewController.m
//  Scraper
//
//  Created by Douglas Suriano on 9/21/12.
//  Copyright (c) 2012 Doug Suriano. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

@synthesize theWebView      = _theWebView;
@synthesize theUrlField     = _theUrlField;

- (void)viewDidLoad
{
    [super viewDidLoad];
    [self goToUrl:self];

}

- (void)viewDidUnload
{
    [super viewDidUnload];
    // Release any retained subviews of the main view.
}

- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation
{
    return (interfaceOrientation != UIInterfaceOrientationPortraitUpsideDown);
}

- (IBAction)scrapeSite:(id)sender
{
    //Use some funky javescript to get the body text and strip out all html tags
    NSString *scrapeResult = [_theWebView stringByEvaluatingJavaScriptFromString:@"document.body.innerHTML.replace(/<[^>]*>/g, \"\")"];
    //Put the html in an alert box
    UIAlertView *alert = [[UIAlertView alloc] initWithTitle:@"Body Text"
                                                    message:scrapeResult
                                                   delegate:nil
                                          cancelButtonTitle:@"Kick Ass!"
                                          otherButtonTitles:nil];
    [alert show];
}

- (IBAction)goToUrl:(id)sender
{
    //Create NSUrl from the url field
    NSURL *url = [NSURL URLWithString:[_theUrlField text]];
    //Create NSURLRequest from NSUrl
    NSURLRequest *request = [NSURLRequest requestWithURL:url];
    //Load the requst in the webview
    [_theWebView loadRequest:request];
}




@end
