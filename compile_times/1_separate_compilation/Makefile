REGENT_PY ?= regent.py

OBJS=part1.o part2.o
HEADERS=part1_header.rg part2_header.rg common_header.rg

main: main.rg $(HEADERS) $(OBJS)
	$(REGENT_PY) $< -fseparate 1

%.o:%.rg $(HEADERS)
	$(REGENT_PY) $< -fseparate 1

.PHONY: clean
clean:
	rm -f *.o *.h main
