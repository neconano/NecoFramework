# NecoFramework
just for new


# 特性

### 1.基于thinkphp5版本制作

使用composer可升级至最新版，并兼容thinkphp3.2版本的部分语法和功能，并通过composer包形式托管在github上

### 2.尽量使用composer依赖

```
phing                   #构建工具
phpmail                 #邮件
thinkphp                #tp5
topthink/think-captcha  #图形验证码
websharks/css-minifier  #压缩
tedivm/jshrink          #压缩
symfony/yaml            #支持yaml
symfony/console         #支持命令模式
neconano                #适用本项目的包
bing                    #phing执行工具
```

### 3.使用phing生成系统变量

```
//生成开发环境
./vendor/phing/phing/bin/phing -f ./build.xml
```

在build.yml中定义环境变量，通过build.xml设置生成tp使用的.env和properties.php

### 4.支持gitlab ci 的部署

搭建gitlab ci 环境，定义.gitlab-ci.yml，通过执行phing构建部署系统，

### 5.包含后台，用户，CMS模块

支持图片的上传管理，用户权限，简单cms和用户属性自定义

### 6.支持自定义用户后台模块

通过设置用户后台导航，可提供用户登陆及后台操作功能

### 7.支持自动CDN资源转换

neconano/tools/CDNMapper.php 提供自动cdn转换功能，只要将需要转换的资源放入到cdn-ready目录中，

系统将在部署的时候，自动生成对应带有has编号的文件到cdn目录，并且在系统生成html模板的时候会同步替换文件地址。

### 8.保留模块化，插件化设计

所有表模型都做了统一处理，并放入到common中，定义统一的api接口，支持addon的插件模式

