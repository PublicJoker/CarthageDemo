# CarthageDemo
use Carthage to integrate third party code repository (使用Carthage集成第三方库)

Carthage 使用

2、使用Carthage安装第三方库：
1、先进入到项目所在的文件夹
$ cd ~/Path/CartHageDemo

2、创建一个空的Cartfile文件（两种方式）
（1）使用终端创建：
$ touch Cartfile

（2）使用文本文件创建：
创建一个名为Cartfile的文件，并保存到项目目录下
3、编辑Cartfile文件，例如要安装MBProgressHUD框架
open -a Xcode_8.3.3.app Cartfile (使用Xcode.app打开 Cartfile 文件)

github "jdg/MBProgressHUD" ~> 1.0.0

4、保存并关闭Cartfile文件，使用Carthage安装框架
$ carthage update

2、集成第三方库：
2.1、点击项目文件–>Targets–>General–>Embedded Binaries,点击+,将我们之前导入的两个framework添加进来
2.2、在shell下面输入：
/usr/local/bin/Carthage copy-frameworks

2.3、在Input Files中加入：
$(SRCROOT)/Carthage/Build/iOS/MBProgressHUD.framework
$(SRCROOT)/Carthage/Build/iOS/AFNetworking.framework
$(SRCROOT)/Carthage/Build/iOS/Charts.framework

3、使用第三方库：
OC项目 引入 Swift 库，需要设置Targets–>Build Settings ALWAYS_EMBED_SWIFT_STANDARD_LIBRARIES = YES

以下两种方式均可， 但使用 #import "" 可能不会提示
#import "AFNetworking/AFNetworking.h"
#import <MBProgressHUD/MBProgressHUD.h>
