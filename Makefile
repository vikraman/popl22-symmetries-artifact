AGDA_SRCS = $(shell find -H Pi -type f -name '*.agda')
AGDA_BINS = $(subst .agda,.agdai,$(AGDA_SRCS))

all: Pi/Everything.agdai
reallyall: $(AGDA_BINS)

%.agdai: %.agda
	agda $<

html: index.agda $(AGDA_SRCS)
	agda --html index.agda

todos: $(AGDA_SRCS)
	find -H Pi -type f -name '*.agda' \
		-not -path 'Pi/Experiments/*' -not -path 'Pi/FSMG/*' \
		-exec grep -E -n --colour=auto 'TODO' {} \+

cloc:
	cloc Pi/

clean:
	rm -f $(AGDA_BINS)

.PHONY: all clean
