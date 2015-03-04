//
//  HBRContentDataSource.h
//  webView_HTML_CSS
//
//  Created by ShuZhen Guo on 14-5-17.
//  Copyright (c) 2014年 www.shuhuiguo.com. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface HBRContentDataSource : NSObject<NSCoding>

@property(nonatomic,copy)   NSString 	*articleId;

//文章作者
@property(nonatomic,copy) 	NSString 	*author;
//内容
@property(nonatomic,copy) 	NSString 	*content;
//标题
@property(nonatomic,copy) 	NSString 	*title;
//出自何方
@property(nonatomic,copy) 	NSString 	*source;
//发布时间
@property(nonatomic,copy) 	NSString 	*publishtime;
//文章简介,摘要
@property(nonatomic,copy) 	NSString 	*descriptioncon;


@end
