//
//  LogUtil.h
//  gla
//
//  Created by bamq on 2017/12/8.
//  Copyright © 2017年 高 阳. All rights reserved.
//

#import <Foundation/Foundation.h>

#ifdef DEBUG
# define CLog(format, ...) NSLog((@"<%@:(%d)> <%s>" format), [[NSString stringWithUTF8String:__FILE__] lastPathComponent], __LINE__, __FUNCTION__, ##__VA_ARGS__);
# define MarkDownLog(format, ...) NSLog((@"<%@:(%d)> <%s>" format), [[NSString stringWithUTF8String:__FILE__] lastPathComponent], __LINE__, __FUNCTION__, ##__VA_ARGS__);
#else
# define CLog(...)
# define NSLog(...)
#endif


@interface LogUtil : NSObject
+(void)markDownLogWithUrlDescription:(NSString *)urlDescription url:(NSString *)url method:(NSString *)method description:(NSString *)description params:(NSDictionary *)params requestString:(NSString *)requestString responseString:(NSString *)responseString;
@end
