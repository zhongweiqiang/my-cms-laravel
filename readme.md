<p align="center"><img src="https://res.cloudinary.com/dtfbvvkyp/image/upload/v1566331377/laravel-logolockup-cmyk-red.svg" width="400"></p>

<p align="center">
<a href="https://travis-ci.org/laravel/framework"><img src="https://travis-ci.org/laravel/framework.svg" alt="Build Status"></a>
<a href="https://packagist.org/packages/laravel/framework"><img src="https://poser.pugx.org/laravel/framework/d/total.svg" alt="Total Downloads"></a>
<a href="https://packagist.org/packages/laravel/framework"><img src="https://poser.pugx.org/laravel/framework/v/stable.svg" alt="Latest Stable Version"></a>
<a href="https://packagist.org/packages/laravel/framework"><img src="https://poser.pugx.org/laravel/framework/license.svg" alt="License"></a>
</p>

## 测试地址
[基础后台管理](http://114.67.95.175:9006)
## About
基础后台模板，只包含系统管理，其子模块如下：
- 用户管理
- 用户详情
- 角色管理
- 菜单管理
- 权限管理

## 配置安装
1. 下载项目
2. `composer install`安装依赖
3. 执行`php artisan key:generate`
4. 执行`php artisan jwt:secret`

## 注意事项
> 此项目为前后端分离，前端使用Vue编写，视图页面经编译后已嵌入到后端，但视图不可修改，如需修改可下载[前端源码](https://github.com/poppyaddi/my-cms-vue.git)，修改编译后即可

