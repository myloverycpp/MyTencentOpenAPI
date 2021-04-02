# MyTencentOpenAPI
个人使用的TencentOpenAPI的pod库

**V3.5.3更新**

1.修复了一些已知问题

2.提升了SDK安全性

**V3.5.1更新**

1.支持moudles,兼容OC和swift

2.SDK和Demo均支持Xcode12编译

3.SDK最低支持版本调整为7.0

4.「登录」和「分享新闻」场景去掉使用剪贴板传递数据（iOS14使用剪贴板会有系统提示）（需要手Q版本>8.4.17）

V3.5.1优化

1.删除TencentOAuth.h中的过期函数

　1）判断用户手机上的手机TIM是否支持SSO登录

　+(BOOL)iphoneTIMSupportSSOLogin __attribute__((deprecated("TIM版本均支持SSO登录。该接口已过期, 建议删除调用")));

　2）判断用户手机上的手机QQ是否支持SSO登录

　+(BOOL)iphoneQQ

　SupportSSOLogin __attribute__((deprecated("QQ版本均支持SSO登录。该接口已过期, 建议删除调用")));

　3）用来获得当前手机qq的版本号

　+(int)iphoneQQVersion __attribute__((deprecated("已过期, 建议删除调用")));

　4）用来获得当前手机TIM的版本号

　+(int)iphoneTIMVersion __attribute__((deprecated("已过期, 建议删除调用")));


2.更改TencentOAuth.h中部分参数无效的函数

　1）登录函数入参inSafari已确认无用，将以下函数的inSafari参数去掉。

　- (BOOL)authorize:(NSArray *)permissions inSafari:(BOOL)bInSafari;

　- (BOOL)authorize:(NSArray *)permissions localAppId:(NSString *)localAppId inSafari:(BOOL)bInSafari;


3.标记过期接口，以下接口经检查已无效，先设置过期，后续会将接口删除，请不要再使用。

[TencentLoginDelegate getAuthorizedPermissions:withExtraParams:]


4.完善一些系统兼容性问题

　（ -- @available 调用处兼容处理）


5.修复扫码登录webweb页面，点击「下载新版客户端」无反应的问题，现在可以正常跳转到Appstore


6.修复无效函数isCachedTokenValid和getCachedExpirationDate，原来的逻辑错误导致每次拿到的时间都是从当前往后推90天，现在修正为拿到token的时间往后推90天

**V3.3.9功能亮点介绍：**

支持解析QQ小程序打开第三方后透传的数据


**V3.3.8更新**

新增打印日志接口，第三方可主动调用将日志信息打印到第三方的日志中，供日后定位问题使用。

新增支持设置opensdk只使用UniversalLink模式与手机QQ交互（系统要求大于等于iOS9）。

V3.3.8优化

尝试用子线程访问剪贴板，来规避偶现opensdk初始化访问剪贴板时间过长，而被看门狗杀死的问题

对于iOS8.0及以上系统版本，UIAlertView升级为UIAlertController

唤起小程序允许不填写miniPath，不填唤起默认小程序首页。

修复登录过程会清空剪贴板数据的bug（QQ版本需要升级到8.3.3）