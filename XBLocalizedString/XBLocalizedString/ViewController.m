//
//  ViewController.m
//  XBLocalizedString
//
//  Created by xxb on 2017/12/21.
//  Copyright © 2017年 xxb. All rights reserved.
//

#import "ViewController.h"
#import "XBLocalizedString.h"

#define lang_key @"lang"

@interface ViewController ()
    @property (weak, nonatomic) IBOutlet UILabel *testLabel;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    /*
        需要读取不同语言包的情况
     */
    NSString *test1 = XBLocalizedString_test1(@"justTest", nil);
    NSString *test2 = XBLocalizedString_test2(@"justTest", nil);

    NSLog(@"%@",test1);
    NSLog(@"%@",test2);
    
    
    [self setLabelText];
    
}
    
    - (void)setLabelText
    {
        self.testLabel.text = XBLocalizedString_test3(@"justTest", nil);
    }
    
    
    ///热更新文字显示
    - (void)touchesBegan:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event
    {
        NSString *str = [[NSUserDefaults standardUserDefaults] valueForKey:lang_key];
        if ([str isEqualToString:@"zh-Hans"])
        {
            [[NSUserDefaults standardUserDefaults] setValue:@"en" forKey:lang_key];
        }
        else
        {
            [[NSUserDefaults standardUserDefaults] setValue:@"zh-Hans" forKey:lang_key];
        }
        [[NSUserDefaults standardUserDefaults] synchronize];
        
        
        [self setLabelText];
    }



@end
