//
//  XBLocalizedString.m
//  XBMultithreadingTest
//
//  Created by xxb on 2016/12/21.
//  Copyright © 2016年 xxb. All rights reserved.
//

#import "XBLocalizedString.h"

#define CUR_LANG  ([[NSLocale preferredLanguages] objectAtIndex:0])


@implementation XBLocalizedString
    

    
    + (NSString *)getLprojNameAuto
    {
        NSString *str = [[NSUserDefaults standardUserDefaults] valueForKey:@"lang"];
        return str;
    }
    
    
    + (NSString *)autoLocalizedStrFromBundleName:(NSString *)bundleName forKey:(NSString *)key
    {
        return [XBLocalizedString localizedStrFromBundleName:bundleName forKey:key curLang:[XBLocalizedString getLprojNameAuto]];
    }
    
    
    
    
    
    
    + (NSString *)localizedStrFromBundleName:(NSString *)bundleName forKey:(NSString *)key
    {
        NSString *curLang = [XBLocalizedString getLprojNameForCurlang];
        return [XBLocalizedString localizedStrFromBundleName:bundleName forKey:key curLang:curLang];
    }
    
    + (NSString *)localizedStrFromBundleName:(NSString *)bundleName forKey:(NSString *)key curLang:(NSString *)curLang
    {
        NSString *path = [[NSBundle mainBundle] pathForResource:bundleName ofType:@"bundle"];
        NSBundle *xbLanguageBundle = [[NSBundle alloc] initWithPath:path];
        NSString *cusPath = [xbLanguageBundle pathForResource:curLang ofType:@"lproj"];
        if (cusPath == nil)
        {
            cusPath = [xbLanguageBundle pathForResource:@"en" ofType:@"lproj"];
        }
        NSBundle *cusBundle = [NSBundle bundleWithPath:cusPath];
        
        NSString *result = [cusBundle localizedStringForKey:key value:nil table:nil];
        NSLog(@"xxbTest--->bundleName：%@,key是：%@,缩写是：%@,读取结果是：%@",bundleName,key,[CUR_LANG substringToIndex:2],result);
        return result;
    }
    /*
     英文：        en
     中文：        zh
     捷克文：       cs
     阿拉伯文：      ar
     丹麦文：       da
     德文：        de
     希腊文：       el
     西班牙：       es
     芬兰文：       fi
     法文：        fr
     匈牙利文：      hu
     意大利文：      it
     日文：        ja
     挪威：        nb
     荷兰：        nl
     波兰文：       pl
     葡萄牙文：      pt
     俄文：        ru
     瑞典：        sv
     泰语：        th
     土耳其文：      tr
     */
    + (NSString *)getLprojNameForCurlang
    {
        NSString *subStr = [CUR_LANG substringToIndex:2];
        NSString *result = nil;
        if ([subStr isEqual:@"en"]) result = @"en";
        else if ([subStr isEqual:@"zh"]) result = @"zh-Hans";
        else if ([subStr isEqual:@"cs"]) result = @"cs";
        else if ([subStr isEqual:@"ar"]) result = @"ar";
        else if ([subStr isEqual:@"da"]) result = @"da";
        else if ([subStr isEqual:@"de"]) result = @"de";
        else if ([subStr isEqual:@"el"]) result = @"el";
        else if ([subStr isEqual:@"es"]) result = @"es";
        else if ([subStr isEqual:@"fi"]) result = @"fi";
        else if ([subStr isEqual:@"fr"]) result = @"fr";
        else if ([subStr isEqual:@"hu"]) result = @"hu";
        else if ([subStr isEqual:@"it"]) result = @"it";
        else if ([subStr isEqual:@"ja"]) result = @"ja";
        else if ([subStr isEqual:@"nb"]) result = @"nb";
        else if ([subStr isEqual:@"nl"]) result = @"nl";
        else if ([subStr isEqual:@"pl"]) result = @"pl";
        else if ([subStr isEqual:@"pt"]) result = @"pt-PT";
        else if ([subStr isEqual:@"ru"]) result = @"ru";
        else if ([subStr isEqual:@"sv"]) result = @"sv";
        else if ([subStr isEqual:@"th"]) result = @"th";
        else if ([subStr isEqual:@"tr"]) result = @"tr";
        else result = @"en";
        return result;
    }
    

    
    
@end
