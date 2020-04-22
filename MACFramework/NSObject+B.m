//
//  NSObject+B.m
//  MACFramework
//
//  Created by fandu on 2019/6/30.
//

#import "NSObject+B.h"

@implementation NSObject (B)

+ (void)load {
    NSLog(@"NSObject A load");
}

+ (void)initialize {
    NSLog(@"NSObject A initialize");
}
@end
