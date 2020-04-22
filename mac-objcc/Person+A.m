//
//  Person+A.m
//  mac-objcc
//
//  Created by fandu on 2019/6/30.
//

#import "Person+A.h"

@implementation Person (A)
+ (void)load {
    NSLog(@"Person A load");
    NSString *path  = @"/Users/fandu/Library/Developer/Xcode/DerivedData/objc-fbprkfwlwutukhautgnzmdpvzcyh/Build/Products/Debug/MACFramework.framework";
    NSBundle *bundle = [NSBundle bundleWithPath:path];
    [bundle load];
}

@end
