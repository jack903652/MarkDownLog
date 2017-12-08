//
//  LogUtil.m
//  gla
//
//  Created by bamq on 2017/12/8.
//  Copyright © 2017年 高 阳. All rights reserved.
//

#import "LogUtil.h"

@implementation LogUtil
+(void)markDownLogWithUrlDescription:(NSString *)urlDescription url:(NSString *)url method:(NSString *)method description:(NSString *)description params:(NSDictionary *)params requestString:(NSString *)requestString responseString:(NSString *)responseString{
    NSMutableString *log =[[NSMutableString alloc] init];
    [log appendFormat:@"\n\n\n\n---\n"];
    [log appendFormat:@"###### %@：%@\n",urlDescription,url];
    [log appendFormat:@"类型：%@\n",method];
    [log appendFormat:@"简介：%@\n",description];
    [log appendString:@"请求参数：\n名称        | 类型       |生成规则    | 必填 |简介\n------------|------------|------------|------------|----\n"];
    [params enumerateKeysAndObjectsUsingBlock:^(id  _Nonnull key, id  _Nonnull obj, BOOL * _Nonnull stop) {
        [log appendFormat:@"%@    |string      |            |Y|%@\n",key,obj];
    }];
    [log appendFormat:@"\n代码示例\n```\n%@\n```\n",requestString];
    [log appendFormat:@"返回\n```\n%@\n```\n\n\n",responseString];
    NSLog(@"%@",log);
//    @"---\n接口号：%@\n类型：%@\n简介：%@\n#### 请求参数\n名称        | 类型       |生成规则    | 必填 |简介\n------------|------------|------------|------------|----\npassword    |string      |            |Y|密码\nencryptCode |string      |            |Y|接口号\n\n代码示例\n```\n%@\n```\n#### 返回\n```\n%@\n```"
    
}
@end
