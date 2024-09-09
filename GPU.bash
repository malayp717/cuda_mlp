nvcc -lineinfo -res-usage -arch=sm_75 -std=c++14 -c GPU/linear.cu -o GPU/linear.o
nvcc -lineinfo -res-usage -arch=sm_75 -std=c++14 -c GPU/mse.cu -o GPU/mse.o
nvcc -lineinfo -res-usage -arch=sm_75 -std=c++14 -c GPU/relu.cu -o GPU/relu.o
nvcc -lineinfo -res-usage -arch=sm_75 -std=c++14 -c GPU/sequential.cu -o GPU/sequential.o
nvcc -lineinfo -res-usage -arch=sm_75 -std=c++14 -c GPU/train.cu -o GPU/train.o

g++ -std=c++14 -c data/read_csv.cpp -o data/read_csv.o

g++ -std=c++14 -c utils/utils.cpp -o utils/utils.o

nvcc -arch=sm_75 -std=c++14 GPU/main.cu GPU/linear.o GPU/mse.o GPU/relu.o GPU/sequential.o GPU/train.o\
 data/read_csv.o utils/utils.o -o maincuda