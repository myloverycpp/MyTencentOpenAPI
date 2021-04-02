Pod::Spec.new do |s|

  s.name                  = 'MyTencentOpenAPI'
  s.version               = '3.5.3'#版本号﻿
  s.summary               = '个人使用的TencentOpenAPI的pod库'#简短的介绍﻿
  s.homepage              = 'https://wiki.connect.qq.com'#主页,这里要填写可以访问到的地址，不然验证不通过﻿
  s.ios.deployment_target = '9.0'#支持平台及版本﻿
  s.license               = { :type => 'MIT', :file => 'LICENSE' }#开源协议﻿
  s.author                = { 'myloverycpp' => 'myloverycpp@163.com' }#作者信息﻿
  s.social_media_url      = 'https://weibo.com/u/2322600655'
  s.source                = { :git => 'https://github.com/myloverycpp/MyTencentOpenAPI.git', :tag => s.version }
  s.frameworks            = 'Security', 'SystemConfiguration', 'CoreGraphics', 'CoreTelephony', 'WebKit'
  s.libraries             = 'iconv', 'sqlite3', 'stdc++', 'z'
  s.vendored_frameworks   = 'TencentOpenAPI/TencentOpenAPI.framework'
  s.requires_arc          = true#项目是否使用ARC﻿
  s.pod_target_xcconfig 	= { 'VALID_ARCHS' => 'x86_64 armv7 arm64' }
  
end