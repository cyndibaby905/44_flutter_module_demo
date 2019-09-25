#统一存放flutter模块及各插件的aar
mkdir .android/AARs
#逐行扫描插件缓存映射目录
for line in $(cat .flutter-plugins )
do
  #分割出插件名及路径
  array=(${line//=/ })
  #进入.android目录执行构建命令
  cd .android
  ./gradlew ${array[0]}:assRel
  path="${array[1]}/android/build/outputs/aar/${array[0]}-release.aar"
  cd ..
  #将产物拷贝至统一目录
  cp $path .android/AARs
done
#将flutter模块构建产物拷贝至统一目录
cp .android/Flutter/build/outputs/aar/flutter-release.aar .android/AARs

pushd .android/AARs && zip -r FlutterAARs.zip  ./ && popd
