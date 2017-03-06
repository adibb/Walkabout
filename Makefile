CXX = g++
CXXFLAGS = -g -std=c++11 -Wall
SERVER = server.o
PORT = 8080
HOST = $(shell hostname)
CLIENT = client.o

# Makes .o files where asked from their .cpp source
%.o: %.cpp
	$(CXX) -c $(CXXFLAGS) $<

# Runs the server
run_server: server
	./server $(PORT)
    
# Runs the client
run_client: client
	./client $(HOST) $(PORT)

# Compiles the server executable
server: $(SERVER)
	$(CXX) $(SERVER) -o server

# Compiles the client executable
client: $(CLIENT)
	$(CXX) $(CLIENT) -o client

# Remove all .o files and executables
clean:
	$(RM) *.o server client
