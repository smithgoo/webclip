####输出可用证书
echo '以下为可用证书'
security find-identity -v -p codesigning

read -p "请输入名称和网站地址空格分开:     " name website
echo "您的棋牌名称为 $name, 您输入的网址为$website"

array=(${website//,/ })

for var in ${array[@]}
do
    ###复制文件并且修改目录
    cp  google.mobileconfig  google1.mobileconfig
    filename=(${var//./ })
    sed -i '' "s/google/$name/g" google1.mobileconfig
    sed -i '' "s/www.google.com/$var/g" google1.mobileconfig

    ####签名
    ./profile_signer.py -n "Apple Development: XXX" sign google1.mobileconfig  xx.mobileconfig

    rm -rf  google1.mobileconfig
    cp xx.mobileconfig $filename.mobileconfig
    rm -rf  xx.mobileconfig
done
