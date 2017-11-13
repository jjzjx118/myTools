//
//  NSString+JXExt.m
//  lxd
//
//  Created by Aaron on 2017/2/22.
//  Copyright © 2017年 陈晨昕. All rights reserved.
//

#import "NSString+JXExt.h"

@implementation NSString (JXExt)

+ (NSString *)transferStringToDate:(NSString*)secondSince1970{
    
    if (secondSince1970.length > 10) {
        secondSince1970 = [secondSince1970 substringWithRange:NSMakeRange(0, 10)];
    }
    
    NSDateFormatter * formatter = [NSDateFormatter new];
    [formatter setDateFormat:@"yyyy-MM-dd"];
    
    NSDate *date = [NSDate dateWithTimeIntervalSince1970:[secondSince1970 doubleValue]];
    
    return [formatter stringFromDate:date];
    
}


@end
