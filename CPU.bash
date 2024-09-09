g++ -std=c++14 -c CPU/linear.cpp -o CPU/linear.o
g++ -std=c++14 -c CPU/mse.cpp -o CPU/mse.o
g++ -std=c++14 -c CPU/relu.cpp -o CPU/relu.o
g++ -std=c++14 -c CPU/sequential.cpp -o CPU/sequential.o
g++ -std=c++14 -c CPU/train.cpp -o CPU/train.o

g++ -std=c++14 -c data/read_csv.cpp -o data/read_csv.o

g++ -std=c++14 -c utils/utils.cpp -o utils/utils.o

g++ -std=c++14 -o maincpu CPU/main.cpp CPU/linear.o CPU/mse.o CPU/relu.o CPU/sequential.o CPU/train.o\
 data/read_csv.o utils/utils.o