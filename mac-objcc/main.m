//
//  main.m
//  mac-objcc
//
//  Created by fandu on 2019/5/29.
//

#import <Foundation/Foundation.h>
#import "Person.h"
#import <objc/runtime.h>
#import <objc/message.h>


int main(int argc, const char * argv[]) {
    @autoreleasepool {
        // insert code here...
//        NSLog(@"Hello, World!");
        Person *p = [Person new];
        [p test];
//        objc_msgSend()
//        objc_msgSend(p, @selector(foo));
        [p performSelector:@selector(foo)];
        
    }
    return 0;
}
