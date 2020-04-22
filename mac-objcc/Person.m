//
//  Person.m
//  mac-objcc
//
//  Created by fandu on 2019/5/29.
//

#import "Person.h"
#import <objc/runtime.h>
#import <objc/message.h>

@interface BackupClass : NSObject

@end

@implementation BackupClass

- (void)foo {
    NSLog(@"BackupClass foo");
}

@end


@implementation Person

- (void)test {
    @synchronized (self) {
        NSLog(@" test");
    }
}


/*
这里第一字符v代表函数返回类型void，第二个字符@代表self的类型id，第三个字符:代表_cmd的类型SEL
*/
- (void)fooMethod {
    NSLog(@" fooMethod");
}

//+ (BOOL)resolveInstanceMethod:(SEL)aSEL
//{
//    if(aSEL == @selector(foo)){
//        class_addMethod(self.class, aSEL, class_getMethodImplementation(self.class, @selector(fooMethod)), @"v@:");
////        class_addMethod([self class], aSEL, (IMP)fooMethod, "v@:");
//        return YES;
//    }
//    return [super resolveInstanceMethod:aSEL];
//}


//- (id)forwardingTargetForSelector:(SEL)aSelector {
//    if(aSelector == @selector(foo)){
//        return [[BackupClass alloc] init];
//    }
//    return [super forwardingTargetForSelector:aSelector];
//}

- (void)forwardInvocation:(NSInvocation *)invocation {
    SEL sel = invocation.selector;
//    if([alternateObject respondsToSelector:sel]) {
//        [invocation invokeWithTarget:alternateObject];
//    } else {
//        [self doesNotRecognizeSelector:sel];
//    }
}

- (NSMethodSignature *)methodSignatureForSelector:(SEL)aSelector {
    NSMethodSignature *methodSignature = [super methodSignatureForSelector:aSelector];
    if (!methodSignature) {
        methodSignature = [NSMethodSignature signatureWithObjCTypes:"v@:*"];
    }
    return methodSignature;
}



@end

