#include <stdio.h>

// This is a kernel
__global__ void helloFromGPU(){
    printf("Hello World from GPU!!!\n");
    return;
}

void helloFromCPU(){
    printf("Hello World from CPU!\n");
    return;
}

int main(){

    // Run kernel on GPU: 1 block x 1 thread
    helloFromGPU<<<1,1>>>();
    
    // Run in CPU
    helloFromCPU();
    
    cudaDeviceReset();
    cudaDeviceSynchronize();
    return 0;
}
