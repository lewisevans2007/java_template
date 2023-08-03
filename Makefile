# Define variables
JAVAC = javac
JAVA = java
SRC_DIR = src
MAIN_CLASS = Main

.PHONY: all
all: compile run

.PHONY: compile
compile:
	$(JAVAC) -d $(SRC_DIR) $(SRC_DIR)/*.java

.PHONY: run
run:
	$(JAVA) -cp $(SRC_DIR) $(MAIN_CLASS)

.PHONY: clean
clean:
	rm -rf $(SRC_DIR)/*.class
