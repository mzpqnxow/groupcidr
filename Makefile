PREFIX=/opt/groupcidr

all:
	gcc c/groupcidr.c -o groupcidr

install:
	install -pDm755 groupcidr $(PREFIX)/bin/groupcidr
