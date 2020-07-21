CFLAG=-std=c11 -g -static
SRCS=$(wildcard *.c)
OBJS=$(SRCS:.c=.o)

shell: $(OBJS)
		$(CC) -o shell $(OBJS) $(LDFLAGS)

$(OBJS): shell.h

test: shell
	./test.sh

clean:
	rm -f shell *.o *~ tmp*

.PHONY: test clean
