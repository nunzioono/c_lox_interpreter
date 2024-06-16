# Define the compiler
CC = gcc

# Define the source directory
SRC_DIR = ./src

# Automatically find all .c files in the source directory
SRC = $(wildcard $(SRC_DIR)/*.c)

# Define the object files (replace .c with .o)
OBJ = $(SRC:$(SRC_DIR)/%.c=$(SRC_DIR)/%.o)

# Define the executable name
EXEC = main.exe

# Detect the operating system
ifeq ($(OS),Windows_NT)
    # Windows
    RM = del /Q
    MKDIR = mkdir
    FIXPATH = $(subst /,\,$1)
    RUN = $(EXEC)
else
    # Linux/Unix
    RM = rm -f
    MKDIR = mkdir -p
    FIXPATH = $1
    RUN = ./$(EXEC)
endif

# Define the target
all: $(EXEC)

# Rule to link object files into the executable
$(EXEC): $(OBJ)
	$(CC) $(OBJ) -o $@

# Rule to compile each .c file to .o
$(SRC_DIR)/%.o: $(SRC_DIR)/%.c
	$(CC) -c $< -o $@

# Create the source directory if it doesn't exist
$(shell $(MKDIR) $(call FIXPATH,$(SRC_DIR)))

# Clean up the object files and executable
clean:
	$(RM) $(call FIXPATH,$(SRC_DIR)/*.o)
	$(RM) $(call FIXPATH,$(EXEC))

# Run the executable
run:
	$(RUN)
