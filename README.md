# XBLocalizedString
从自定义的语言包对文本进行翻译<br>
###应用场景
<br>1.公司的某个App是由公司旗下其他几个App合并而成的，造成对语言进行国际化时，如果用NSLocalizedString有些翻译会重复。为了让多个子App合并后不影响翻译，为每个子App都设置独立的语言包。
<br>2.用于热切换App显示的语言
<br><br><br>
### 使用：
<br>
#### 从自定义语言包的内容翻译文件
<pre>

    /*
        需要读取不同语言包的情况
     */
   	NSString *test1 = XBLocalizedString_test1(@"justTest", nil);
    NSString *test2 = XBLocalizedString_test2(@"justTest", nil);

    NSLog(@"%@",test1);
    NSLog(@"%@",test2);
    	
    结果：
    2017-12-21 19:41:42.721720+0800 XBLocalizedString[9099:771969] 这是G5_language的阿拉伯语翻译
	2017-12-21 19:41:42.721787+0800 XBLocalizedString[9099:771969] 这是E5WiFilange的英文翻译
		
		
		
	/*
        热更新文字显示
     */
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
	- (void)setLabelText
    {
        self.testLabel.text = XBLocalizedString_test3(@"justTest", nil);
    }


</pre>
<br>
#### 自定义语言包
<br><br>
<br>![image](https://github.com/huisedediao/XBLocalizedString/raw/master/showImg)<br/>
<br><br>以上图的语言包为例，设置方法如下
<pre>
	#define XBLocalizedString_test1(key, comment)   \
	({\
		NSString *result = [XBLocalizedString localizedStrFromBundleName:@"G5_language" forKey:@"justTest"];\
		result;\
	})
    
</pre>
<br>