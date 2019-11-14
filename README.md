# HBWebPImage
SDWebImage 下的webp图片加载\
\
pod下载\
pod 'SDWebImage'\
pod 'SDWebImage/WebP'\
\
遇到的问题：下载'SDWebImage/WebP'报错\
Failed to connect to chromium.googlesource.com port 443: Operation timed out\
解决办法：\
1.查看Mac中cocoapods 本地库路径:pod repo\
2.在Path中找到libwebp对应的文件夹: find /Users/ammk/.cocoapods/repos/master -iname libwebp\
3.在最新的版本例如1.0.3目录下的libwebp.podspec.json文件中修改git source\
将其中homepage改为 https://github.com/webmproject/,source->git 改为 https://github.com/webmproject/libwebp.git \
4.再cd到原程序文件下，重新pod install。\
\
具体的使用请看代码
