# ParallelComputing

ITMO俄方课程

开发环境： GCC 11.0.0 , MacOS , Clion


## 3.23 Lab1 使用GCC自动化并行加速

**lab1**写在 **test.c**文件中

**实验第三步编译方法：**

```shell
$ gcc -O3 -Wall -Werror -o lab1 test.c

$ ./lab1
```

**实验第四步编译方法（好像在这步开并行）：**

需要将其中的 ***K*** 替换成一个数字，***K*** 决定线程数量，具体看实验要求

```shell
$ gcc -O3 -Wall -Werror -floop-parallelize-all -ftree-parallelize-loops=K test.c -o lab1-K

$ ./lab1-k
```

我把K设置成40就报错，报错信息如下，你们看看是不是显卡问题

```shell
clang: error: unknown argument: '-floop-parallelize-all'
clang: error: unknown argument: '-ftree-parallelize-loops=40'
```

## 4.3 Lab2 使用Framewave进行并行计算

1. 解压你需要的安装包
2. 建立链接

```shell
// 如果你是linux,假设解压的文件夹是ExampleDir，cd进安装包的lib目录，建立链接
ln -sf ./libfwBase.so.1.0.0 libfwBase.so
ln -sf ./libfwImage.so.1.0.0 libfwImage.so
ln -sf ./libfwJPEG.so.1.0.0 libfwJPEG.so
ln -sf ./libfwSignal.so.1.0.0 libfwSignal.so
ln -sf ./libfwVideo.so.1.0.0 libfwVideo.so
```

```shell
// 如果你是mac,假设解压的安装包是ExampleDir，cd进安装包的lib目录，建立链接
cd ExampleDir/FW_1.0_Mac64/lib
ln -sf ./libfwBase-1.0.dylib libfwBase.dylib
ln -sf ./libfwImage-1.0.dylib libfwImage.dylib
ln -sf ./libfwJPEG-1.0.dylib libfwJPEG.dylib
ln -sf ./libfwSignal-1.0.dylib libfwSignal.dylib
ln -sf ./libfwVideo-1.0.dylib libfwVideo.dylib
```

3. 把```fwSignal.h```和```fwBase.h```拷进项目目录

   ```c
   #include "fwSignal.h"
   #include "fwBase.h"
   ```

   

   
