//
//  HBRGlobalValues.h
//  webView_HTML_CSS
//
//  Created by ShuZhen Guo on 14-5-17.
//  Copyright (c) 2014年 www.shuhuiguo.com. All rights reserved.
//

#import <Foundation/Foundation.h>
//html 标签
#define NEWS_CONTNET_TAG        @"<[#content#]>"
#define NEWS_AUTHOR_TAG         @"<[#author#]>"
#define NEWS_UPDATETIME_TAG     @"<[#updatetime#]>"
#define NEWS_TITLE_TAG          @"<[#title#]>"
#define NEWS_STYLE_TAG          @"<[#style#]>"
#define NEWS_FROM_TAG           @"<[#from#]>"
#define NEWS_ABSTRACT_TAG       @"<[#abstract#]>"
//文摘
//#define STYLE_SETTING_NIGHT @"body,.abstract{background-color:#000000;color:#848484;}"
//#define STYLE_SETTING_NIGHT @"body,.abstract{background-color:#3c3c3c;color:#b8b9ba;} .author{color:#918e8e;} .title{color:#ffffff; }"
//大中小
#define STYLE_FONT_BIG      @"body{font-size:1.2em;}"
#define STYLE_FONT_MIDDLE   @"body{font-size:1.0em;}"
#define STYLE_FONT_SMALL    @"body{font-size:0.8em;}"
#pragma mark - API Theoldaddresses


//字体设置_ _模式
#define SETTINGS_FONT_MODE       @"ui_font_mode"
//设置_时间_模式
#define SETTINGS_TIME_MODE       @"ui_time_mode"

@interface HBRGlobalValues : NSObject

@end
