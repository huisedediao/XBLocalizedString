//
//  XBLocalizedString.h
//  XBMultithreadingTest
//
//  Created by xxb on 2016/12/21.
//  Copyright © 2016年 xxb. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface XBLocalizedString : NSObject
 
#define XBLocalizedString_test1(key, comment)   \
({\
NSString *result = [XBLocalizedString localizedStrFromBundleName:@"G5_language" forKey:@"justTest"];\
result;\
})
    
#define XBLocalizedString_test2(key, comment)   \
({\
NSString *result = [XBLocalizedString localizedStrFromBundleName:@"E5WiFilange" forKey:key];\
result;\
})
    
#define XBLocalizedString_test3(key, comment)   \
({\
NSString *result = [XBLocalizedString autoLocalizedStrFromBundleName:@"G5_language" forKey:key];\
result;\
})
    
+ (NSString *)localizedStrFromBundleName:(NSString *)bundleName forKey:(NSString *)key;
    
+ (NSString *)autoLocalizedStrFromBundleName:(NSString *)bundleName forKey:(NSString *)key;
    
@end
