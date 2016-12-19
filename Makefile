
# Flags

FLAGS =-g -std=c++0x


all: Neuron Net TrainingData program program.exe 

Neuron: Neuron.hh Neuron.cc
	gcc  -c $(OPCIONS) Neuron.cc 

Net: Net.hh Net.cc
	gcc  -c $(OPCIONS) Net.cc

TrainingData: TrainingData.hh TrainingData.cc
	gcc  -c $(OPCIONS) TrainingData.cc

program: program.cc
	gcc -c $(OPCIONS) program.cc

program.exe:
	gcc  -g -o program.exe program.o TrainingData.o Net.o Neuron.o

clean:
	rm *.o
