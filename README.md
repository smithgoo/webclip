# webclip
批量生成webclip 并签名

批量运行需要三个文件(auto_webclip.sh  google.mobile profile_singer)


	1.需要用apple_config2先生成一个.mobileconfig2 模版文件,但是一定不要签名 我在demo中是用的命名为google.mobileconfig
	2.cd 到当前目录就可以运行这个脚本 ./auto_webclip.sh
	3.profile_singer是签名脚本
	
	
Example
	
	
	sh auto_webclip.sh
	
	以下为可用证书
	  1) A47AFD5D663BAD7A4CFF3961F0AC948067EB8502 "Apple Development: XXX"
	     1 valid identities found
	     
	  请输入名称和网站地址空格分开:  xx google.com,utube.com
	  
	  即可完成生成
	     
	   