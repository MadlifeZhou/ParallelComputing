# ParallelComputing

ITMO俄方课程

开发环境： GCC 11.0.0 , MacOS , Clion


## 3.23 Lab1

**lab1**写在 **test.c**文件中

**实验第三步编译方法：**

```shell
$ gcc -O3 -Wall -Werror -o lab1 test.c

$ ./lab1
```

**实验第四步编译方法（好像在这步开并行）：**

需要将其中的 ***K*** 替换成一个数字，***K*** 可以改变其中数组的长度，具体看实验要求

```shell
$ gcc -O3 -Wall -Werror -floop-parallelize-all -ftree-parallelize-loops=**K** test.c -o lab1-K

$ ./lab1-k
```

我在这步报错，你们看看是不是显卡问题

```shell
clang: error: unknown argument: '-floop-parallelize-all'
clang: error: unknown argument: '-ftree-parallelize-loops=40'
```

