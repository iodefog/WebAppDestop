# WebAppDestop

###
实现原理:在iOS开发中可以使用openUrl的方式打开一个网页，并通过Safari浏览器的发送到主屏幕从而创建一个网页的快捷方式，这篇文章就是利用这个方 法来创建一个app的桌面快捷方式。
首先在app内部开启一个轻量级的HttpServer，利用openurl：127.0.0.1 的方式打开本地页面，利用html的重定向将页面指向一个包含创建桌面快捷方式所有信息的，遵守data协议的url，这时利用Safari的发送到主屏 幕，就可以达到我们的要求。

###
 技术难点：
1. 创建一个本地的httpServer。
2. 创建本地页面以及data协议url时的编码格式。
3. 在Safari未启动时或者app进入后台时，本地httpserver服务启动延迟。

参考： http://www.open-open.com/code/view/1421907845515


效果图：
![](https://github.com/lihongli528628/WebAppDestop/blob/master/001.png)
![](https://github.com/lihongli528628/WebAppDestop/blob/master/002.png)
![](https://github.com/lihongli528628/WebAppDestop/blob/master/003.png)
![](https://github.com/lihongli528628/WebAppDestop/blob/master/004.png)
