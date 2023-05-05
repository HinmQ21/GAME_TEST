#Copyright Notice:
#The files within this zip file are copyrighted by Lazy Foo' Productions (2004-2014)
#and may not be redistributed without written permission.

#OBJS specifies which files to compile as part of the project
OBJS =  code\main.cpp \
		code\design.cpp \
		code\draw.cpp \
		code\init.cpp \
		code\input.cpp \
		code\sound.cpp \
		code\stage.cpp \
		code\text.cpp \
		code\util.cpp \

#CC specifies which compiler we're using
CC = g++

#INCLUDE_PATHS specifies the additional include paths we'll need
INCLUDE_PATHS = -I src/include

#LIBRARY_PATHS specifies the additional library paths we'll need
LIBRARY_PATHS = -L src/lib

#COMPILER_FLAGS specifies the additional compilation options we're using
# -w suppresses all warnings
# -Wl,-subsystem,windows gets rid of the console window
COMPILER_FLAGS = -w -Wl,-subsystem,windows

#LINKER_FLAGS specifies the libraries we're linking against
LINKER_FLAGS = -lmingw32 -lSDL2main -lSDL2 -lSDL2_image -lSDL2_ttf -lSDL2_mixer

#OBJ_NAME specifies the name of our exectuable
OBJ_NAME = main

#This is the target that compiles our executable
all : $(OBJS)
	$(CC) $(OBJS) $(INCLUDE_PATHS) $(LIBRARY_PATHS) $(COMPILER_FLAGS) $(LINKER_FLAGS) -o $(OBJ_NAME)