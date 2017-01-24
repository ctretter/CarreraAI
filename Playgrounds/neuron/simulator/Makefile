CFLAGS = -Wall
LINKFLAGS = -lm
COMPILER = g++
TRACKPIECEOBJ = TrackPiece.o TrackPiece_Test.o

##   TrackPiece_Test: compiles test driver for class TrackPiece
TrackPiece_Test: $(TRACKPIECEOBJ)
	$(COMPILER)  $(CFLAGS) $(LINKFLAGS) $(TRACKPIECEOBJ) -o TrackPiece_Test

##   %.o: creates the object file of a basic cpp module dependent on header an .cpp file
%.o: @.cpp @.h
	$(COMPILER) -c $(CFLAGS) %.cpp

help:
	@echo
	@echo --------------------------------------------------------------------------
	@fgrep -h "##" $(MAKEFILE_LIST) | fgrep -v fgrep | sed -e 's/\\$$//' | sed -e 's/##//'
	@echo --------------------------------------------------------------------------
	@echo

##   clean: removes every object file and executables
clean:
	rm -rf *.o
	rm -rf TrackPiece_Test
	

