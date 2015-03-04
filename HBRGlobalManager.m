//
//  HBRGlobalManager.m
//  webView_HTML_CSS
//
//  Created by ShuZhen Guo on 14-5-17.
//  Copyright (c) 2014年 www.shuhuiguo.com. All rights reserved.
//

#import "HBRGlobalManager.h"
#import "HBRContentDataSource.h"
@implementation HBRGlobalManager


//解析Arcitle模板详情界面
NSString *parseArcitleTemplate(id content){
    
    //读文本文件
    NSString *contents = readFileText(@"indexcont", @"html");
    HBRContentDataSource *contentDataSource = (HBRContentDataSource *)content;
    
    //可以去掉空格
    contents = [contents stringByReplacingOccurrencesOfString:NEWS_AUTHOR_TAG
                                                   withString:((NSNull *)contentDataSource.author == [NSNull null])
                ?@"":contentDataSource.author];
    
    contents = [contents stringByReplacingOccurrencesOfString:NEWS_TITLE_TAG
                                                   withString:((NSNull *)contentDataSource.title == [NSNull null])
                ?@"":contentDataSource.title];
    
    contents = [contents stringByReplacingOccurrencesOfString:NEWS_CONTNET_TAG
                                                   withString:((NSNull *)contentDataSource.content == [NSNull null])
                ?@"":contentDataSource.content];
    
    
    contents = [contents stringByReplacingOccurrencesOfString:NEWS_FROM_TAG
                                                   withString:((NSNull *)contentDataSource.source == [NSNull null])
                ?@"":contentDataSource.source];
    
    
    
    contents = [contents stringByReplacingOccurrencesOfString:NEWS_ABSTRACT_TAG
                                                   withString:((NSNull *)contentDataSource.descriptioncon == [NSNull null])
                ?@"":contentDataSource.descriptioncon];
    
    
    
    contents = [contents stringByReplacingOccurrencesOfString:NEWS_UPDATETIME_TAG
                                                   withString:((NSNull *)contentDataSource.publishtime == [NSNull null])
                ? @"":contentDataSource.publishtime];
    //字体设置
    NSInteger fontSize = fontSettings();
    //夜间模式
//    NSInteger nightMode = dayNightSettings();
    //大中小字
    NSString *fontSizeStr = fontSize == 2 ? STYLE_FONT_SMALL : fontSize == 1 ? STYLE_FONT_MIDDLE : STYLE_FONT_BIG;
    //黑白夜
//    NSString *nightModeStr = nightMode == 0 ? @"" : STYLE_SETTING_NIGHT;
    
//    NSString *settings = [NSString stringWithFormat:@"%@%@", fontSizeStr, nightModeStr];
    NSString *settings = [NSString stringWithFormat:@"%@", fontSizeStr];

    
    NSUserDefaults *ud = [NSUserDefaults standardUserDefaults];
    [ud setBool:YES forKey:@"black"];
    [ud synchronize];
    //1、使用NSString中的stringByTrimmingCharactersInSet:[NSCharacterSet whitespaceCharacterSet]]方法只是去掉左右两边的空格；
    
    if ([contentDataSource.description isEqualToString:@""]) {
        //.abstract  display:none;
        NSString *abstract=@".abstract{display:none;}";
        
        settings=[NSString stringWithFormat:@"%@%@",settings,abstract];
    }
//
//    contents = [contents stringByReplacingOccurrencesOfString:NEWS_STYLE_TAG
//                                                   withString:settings];
    return contents;
}
//读文本文件
NSString *readFileText(NSString *fileName, NSString *fileType){
    NSString *filePath = [[NSBundle mainBundle] pathForResource:fileName ofType:fileType];
    
    NSString *contents = [NSString stringWithContentsOfFile:filePath encoding:NSUTF8StringEncoding error:nil];
    return contents;
}

NSInteger fontSettings(){
    NSInteger fontMode = 1;
    if ([[NSUserDefaults standardUserDefaults] valueForKey:SETTINGS_FONT_MODE]) {
        fontMode = [[[NSUserDefaults standardUserDefaults] valueForKey:SETTINGS_FONT_MODE] intValue];
    }
    return fontMode;
}
+ (id)parserForNewsContentDataSource:(NSString *)jsonString{
    HBRContentDataSource *contentDataSource = [[HBRContentDataSource alloc]init];

    contentDataSource.articleId=@"1100";
    contentDataSource.title=@"caijing";
    contentDataSource.author=@"guoshuzhen";
    contentDataSource.content=@"<p>DDBackgroundView是一个适用于iOS和OS X的开源项目，可以满足你对背景设计的多种想象，比如颜色、渐变、边框以及圆角等等。</p>";
    
    contentDataSource.source=@"出自何方";
    
    contentDataSource.publishtime=@"2014-05-17 13:16:13.018";

    contentDataSource.descriptioncon=@"简介";

    
    
    return contentDataSource;
    
}
@end
