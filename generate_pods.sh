#统一存放flutter模块及各插件的Pod
mkdir .ios/products

#逐行扫描插件缓存映射目录
for line in $(cat .flutter-plugins )
do
  #分割出插件名及路径
  array=(${line//=/ })
  #创建插件pod目录，存放pod
  mkdir .ios/products/${array[0]}
  #将产物拷贝至缓存目录
  cp -rf "${array[1]}ios/" ".ios/products/${array[0]}"

done

mkdir .ios/products/Flutter
cp Flutter.podspec .ios/products/Flutter
cp -r .ios/Flutter/App.framework/ .ios/products/Flutter/App.framework/
cp -r .ios/Flutter/engine/Flutter.framework/ .ios/products/Flutter/Flutter.framework/
pushd .ios/products && zip -r FlutterPods.zip  ./ && popd
