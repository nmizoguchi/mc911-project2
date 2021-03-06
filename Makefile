#
# pacote v04
# 
# Como compilar:
# $ make
#
# Como executar o compilador:
# $ make run INPUT=test/teste.java OUTPUT=teste.s
#
# Como executar:
# $ lli teste.s
#

SOURCES = $(wildcard src/**/*.java)
CLASSES = $(SOURCES:.java=.class)

all: $(CLASSES)

%.class: %.java
	javac -classpath src:lib/projeto2.jar $<

run:
	java -classpath src:lib/projeto2.jar main/Main $(INPUT) $(OUTPUT)
	
run-lli:
	java -classpath src:lib/projeto2.jar main/Main $(INPUT) $(OUTPUT)
	/usr/local/opt/llvm/bin/lli $(OUTPUT)

clean:
	rm -f src/llvm/*.class src/llvmast/*.class


