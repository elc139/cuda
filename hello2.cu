#include <stdio.h>


__global__ void helloFromGPU(){
    printf("Hello World from GPU! Block number: %d Thread number: %d\n", blockIdx.x ,threadIdx.x);
    return;
}

int main(){
    
    // Thread hierarchy: <<<blocks,threadsPerBlock>>>
    helloFromGPU<<<2147483648,1>>>();
    
    cudaDeviceReset();
    cudaDeviceSynchronize();
    return 0;
}
