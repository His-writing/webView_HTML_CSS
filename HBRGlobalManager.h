//
//  HBRGlobalManager.h
//  webView_HTML_CSS
//
//  Created by ShuZhen Guo on 14-5-17.
//  Copyright (c) 2014年 www.shuhuiguo.com. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface HBRGlobalManager : NSObject
//解析Arcitle模板
NSString *parseArcitleTemplate(id content);
+ (id)parserForNewsContentDataSource:(NSString *)jsonString;
@end
