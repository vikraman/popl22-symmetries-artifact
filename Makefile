AGDA_SRCS = $(shell find -H Pi -type f -name '*.agda')
AGDA_BINS = $(subst .agda,.agdai,$(AGDA_SRCS))

all: Pi/Everything.agdai
reallyall: $(AGDA_BINS)

%.agdai: %.agda
	agda $<

html: index.agda $(AGDA_SRCS)
	agda --html index.agda

todos: $(AGDA_SRCS)
	find -H Pi -type f -name '*.agda' -exec grep -n --colour=auto 'TODO\!' {} \+

clean:
	rm -f $(AGDA_BINS)

.PHONY: all clean
