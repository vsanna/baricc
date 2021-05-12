CFLAGS=-std=c11 -g -static
SRCS=$(wildcard src/*.c)
OBJS=$(SRCS:.c=.o)

baricc: $(OBJS)
	$(CC) -o baricc $(OBJS) $(LDFLAGS)

$(OBJS): src/baricc.h

test: baricc
	./scripts/test.sh

self: baricc
	./scripts/self.sh

self_test: baricc
	./scripts/self_test.sh

clean:
	rm -f baricc *.o *~ tmp*

.PHONY: test clean self

