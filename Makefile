# Define variables

JAVAC = javac
JAVA = java
SRC_DIR = com/example
BIN_DIR = bin
MAIN_CLASS = Main
JAR_OPTS = cvfm

all: compile run

compile:
	$(JAVAC) -d $(BIN_DIR) $(SRC_DIR)/*.java

run:
	$(JAVA) -cp $(BIN_DIR) $(SRC_DIR).$(MAIN_CLASS)

jar:
	jar cvfm $(MAIN_CLASS).jar manifest.txt -C $(BIN_DIR) .

clean:
	rm -rf $(BIN_DIR)