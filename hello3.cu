#include <stdio.h>

__global__ void helloFromGPU(){
    printf("Hello World from GPU! Block number: %d Thread number: %d,%d\n", blockIdx.x ,threadIdx.x, threadIdx.y);
    return;
}

int main(){
    
    dim3 threadsPerBlock(512,512);
    helloFromGPU<<<1,threadsPerBlock>>>();
    
    cudaDeviceReset();
    cudaDeviceSynchronize();
    return 0;
}
