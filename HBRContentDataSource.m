//
//  HBRContentDataSource.m
//  webView_HTML_CSS
//
//  Created by ShuZhen Guo on 14-5-17.
//  Copyright (c) 2014年 www.shuhuiguo.com. All rights reserved.
//

#import "HBRContentDataSource.h"
//@property(nonatomic,copy)   NSString 	*articleId;
//@property(nonatomic,copy) 	NSString 	*author;
//@property(nonatomic,copy) 	NSString 	*content;
//@property(nonatomic,copy) 	NSString 	*title;
//@property(nonatomic,copy) 	NSString 	*source;
//@property(nonatomic,copy) 	NSString 	*publishtime;
//@property(nonatomic,copy) 	NSString 	*description;

@implementation HBRContentDataSource
-(void)dealloc{
    self.articleId=nil;
    self.author=nil;
    self.content=nil;
    self.title=nil;
    self.source=nil;
    self.publishtime=nil;
    self.descriptioncon=nil;
}

-(id)initWithCoder:(NSCoder *)aDecoder
{
    if (self=[super init]) {
        self.articleId=[aDecoder decodeObjectForKey:@"articleId"];
        
        self.author=[aDecoder decodeObjectForKey:@"author"];
        self.content=[aDecoder decodeObjectForKey:@"content"];
        self.title=[aDecoder decodeObjectForKey:@"title"];
        self.source=[aDecoder decodeObjectForKey:@"source"];
        self.publishtime=[aDecoder decodeObjectForKey:@"publishtime"];
        self.descriptioncon=[aDecoder decodeObjectForKey:@"descriptioncon"];
    }
    return self;
}
-(void)encodeWithCoder:(NSCoder *)aCoder
{
    [aCoder encodeObject:self.articleId forKey:@"articleId"];
    [aCoder encodeObject:self.author forKey:@"author"];
    [aCoder encodeObject:self.title forKey:@"title"];
    [aCoder encodeObject:self.content forKey:@"content"];
    [aCoder encodeObject:self.source forKey:@"source"];
    [aCoder encodeObject:self.publishtime forKey:@"publishtime"];
    [aCoder encodeObject:self.descriptioncon forKey:@"descriptioncon"];
}



@end
