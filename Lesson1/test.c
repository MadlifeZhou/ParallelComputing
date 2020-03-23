//
// Created by Guancheng Zhou on 2020/3/22.
// Lab1 of Parallel Computing
//

// Guancheng Zhou -> A = 4 * 9 = 36
#define A 36
#define SEED 30
#define DEFAULT_N 40

#include <stdio.h>
#include <sys/time.h>
#include <math.h>
#include <stdlib.h>


// 1. generate Stage
// Generate Stage
void generateStage(double *arr, size_t size, unsigned int min, unsigned int max,unsigned int seed) {
    for (int i = 0; i < size; i++)
        arr[i] = ((double) (rand_r(&seed)%(100*(max-min)))/100) + min;
}


// 2. Map Stage
// Map Stage of M1, our variant ( X = 1 + ((36+6) mod 47) mod 7) = 1) -> variant 1
// Map Stage of M2, our variant ( X = 1 + ((36+6) mod 47) mod 8) = 2) -> variant 2
void mapStage(double *arr1,int size1,double *arr2,int size2){
    // Hyperbolic sine with squaring
    for (int i = 0; i <size1; ++i) {
        arr1[i] = pow(sin(arr1[i]),2);
    }

    // Natural logarithm of the tangent
    for (int i = 0; i <size2; ++i) {
        arr2[i] = cos(arr2[i]);
    }
}


// 3. Merge Stage
// our variant ( X = 1 + ((36+6) mod 47) mod 6) = 1) -> variant 1
// Raising to a power (M2[i] = M1[i]ˆM2[i])
void mergeStage(double *arr1, double *arr2, int size2){
    for (int i = 0; i < size2; ++i) {
        arr2[i] = pow(arr1[i],arr2[i]);
    }
}


// 4. Sort Stage
// our variant ( X = 1 + ((36+6) mod 47) mod 7) = 1) -> variant 1
void selectionSort(double *a,int n){

    for(int i=0; i<n-1; i++)
    {
        int min_index = i;
        //找出第i小的数所在的位置
        for(int j=i+1; j<n; j++)
        {
            if(a[j] < a[min_index])
            {
                min_index = j;
            }
        }
        //将第i小的数，放在第i个位置；如果刚好，就不用交换
        if( i != min_index)
        {
            int temp = a[i];
            a[i] = a[min_index];
            a[min_index] = temp;
        }
    }
}


// 5. Reduce Stage
double reduce(double *arr, size_t size) {
    double res = 0, min;
    int i = 0;
    min = arr[0];

    for (i = 0; i < size; i++) {
        if (arr[i] < min && arr[i] != 0) {
            min = arr[i];
        }
    }

    for (i = 0; i < size; i++) {
        if ((int)(arr[i] / min) % 2 == 0) {
            res += sin(arr[i]);
        }
    }
    return res;
}


// for test
void outPutArr(double *arr, int size){
    for (int i = 0; i < size; ++i) {
        printf("arr[%d]: %f\n",i,arr[i]);
    }
}

int main(int argc, char* argv[]){
    struct timeval T1,T2;
    double delta_ms;
    int N;

    if(argc > 1)
            N = (size_t) atoi(argv[1]);
        else
            N = DEFAULT_N;

    int arr1Size = N;
    int arr2Size = N/2;
    // define two array m1 and m2
    double *m1 = malloc(sizeof(double) * 20);
    double *m2 = malloc(sizeof(double) * 20);
    gettimeofday(&T1,NULL);

    for (unsigned int i = 0; i < 50; ++i) {
        // Generate Stage
        generateStage(m1,arr1Size,0,A,i);
        generateStage(m2,arr2Size,A,10*A,i);

        // Map Stage
        mapStage(m1,arr1Size,m2,arr2Size);

        // Merge Stage
        mergeStage(m1,m2,arr2Size);

        // Sort Stage
        selectionSort(m2,arr2Size);

        // reduce Stage
        double X = reduce(m2,arr2Size);

        printf("X:%f\n",X);
    }
    gettimeofday(&T2,NULL);

    delta_ms = (T2.tv_sec - T1.tv_sec)  + (T2.tv_usec - T1.tv_usec) ;
//    printf("%ld\n",T1.tv_sec);
//    printf("%d\n",T1.tv_usec);
//    printf("%d\n",T2.tv_sec);
//    printf("%d\n",T2.tv_usec);
    printf("\n N=%d. Time Passed: %lf ms\n", N, delta_ms);
    free(m1);
    free(m2);

    return 0;
}


