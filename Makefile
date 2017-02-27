CXX = g++
CXXFLAGS = -g -std=c++11 -Wall
SOURCE = driver.o

# Makes .o files where asked from their .cpp source
%.o: %.cpp
	$(CXX) -c $(CXXFLAGS) $<

all: $(SOURCE)
	$(CXX) $(SOURCE) -o walkabout

# Remove all .o files
clean:
	$(RM) *.o walkabout
