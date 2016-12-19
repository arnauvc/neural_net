
# Flags

OPCIONS= -g 


all: tot 
# Neuron Net TrainingData program program.exe 

tot: Neuron.cc Net.cc TrainingData.cc program.cc
	#gcc -lstdc++ -o  program.exe program.cc Neuron.cc Net.cc TrainingData.cc -lm
	g++ -o  program.exe program.cc Neuron.cc Net.cc TrainingData.cc 


Neuron: Neuron.hh Neuron.cc
	gcc  -c $(OPCIONS) Neuron.cc 

Net: Net.hh Net.cc
	gcc  -c $(OPCIONS) Net.cc

TrainingData: TrainingData.hh TrainingData.cc
	gcc  -c $(OPCIONS) TrainingData.cc

program: program.cc
	gcc -c $(OPCIONS) program.cc

program.exe: program.o TrainingData.o Net.o Neuron.OPCIONS
	gcc  -g -o  program.exe program.o TrainingData.o Net.o Neuron.o

makeTrainingSamples: makeTrainingSamples.cc
	gcc -o makeTrainingSamples.exe makeTrainingSamples.cc


clean:
	rm *.o
