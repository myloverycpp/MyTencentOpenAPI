# MyTencentOpenAPI
个人使用的TencentOpenAPI的pod库

V3.3.8更新

新增打印日志接口，第三方可主动调用将日志信息打印到第三方的日志中，供日后定位问题使用。

新增支持设置opensdk只使用UniversalLink模式与手机QQ交互（系统要求大于等于iOS9）。

V3.3.8优化

尝试用子线程访问剪贴板，来规避偶现opensdk初始化访问剪贴板时间过长，而被看门狗杀死的问题

对于iOS8.0及以上系统版本，UIAlertView升级为UIAlertController

唤起小程序允许不填写miniPath，不填唤起默认小程序首页。

修复登录过程会清空剪贴板数据的bug（QQ版本需要升级到8.3.3）