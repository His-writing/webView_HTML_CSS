//
//  HTMLViewController.m
//  webView_HTML_CSS
//
//  Created by ShuZhen Guo on 14-5-17.
//  Copyright (c) 2014年 www.shuhuiguo.com. All rights reserved.
//

#import "HTMLViewController.h"
#import "HBRGlobalManager.h"

#import "QYYLgoogleLib.h"

@interface HTMLViewController ()

@end

@implementation HTMLViewController

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}
-(void)initlize{
    
    [[QYYLgoogleLib getQYYLGooglelib]initHomeViewController:self QYYLGoogleBannerViewAdUnitID:@"" interstitialAdUnitID:@"" bannerY:0 bannerX:0];
    
    
    
    
    [[QYYLgoogleLib getQYYLGooglelib]QYYLGADBannerView];
    
    
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    [[QYYLgoogleLib getQYYLGooglelib]QYYLGADInterstitial];
    
    parseArcitleTemplate([HBRGlobalManager  parserForNewsContentDataSource:nil]);
    UIWebView *webView=[[UIWebView alloc]initWithFrame:self.view.bounds];
    webView.delegate=self;
    [self.view addSubview:webView];
    // 检测所有数据类型
   [webView setDataDetectorTypes:UIDataDetectorTypeAll];

    [webView loadHTMLString:parseArcitleTemplate([HBRGlobalManager parserForNewsContentDataSource:nil]) baseURL:nil];
    
}
//加载出错的时候执行该方法。

-(void)webView:(UIWebView *)webView didFailLoadWithError:(NSError *)error
{

}
//成功
-(void)webViewDidFinishLoad:(UIWebView *)webView
{
  
       NSString *currentURL = [webView stringByEvaluatingJavaScriptFromString:@"document.location.href"];
        NSString *title = [webView stringByEvaluatingJavaScriptFromString:@"document.title"];
    
    NSLog(@"title%@",title);
    NSLog(@"currentURL%@",currentURL);
    
//    [webView stringByEvaluatingJavaScriptFromString:(@"replaceImg()")];
    
//        [self performSelector:@selector(removeWebMaskView) withObject:nil afterDelay:2.f];
    
    //    [SVProgressHUD dismiss];

//    [webView stringByEvaluatingJavaScriptFromString:@"document.forms[0].submit(); "];

//    [webView stringByEvaluatingJavaScriptFromString:@"document.forms[0].submit(); "];


    
}
//开始加载

-(void)webViewDidStartLoad:(UIWebView *)webView
{


}
- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender
{
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
