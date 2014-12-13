C	= gcc

RM	= rm -f

CFLAGS	+= -ansi -pedantic

SRCS	= gps.c

OBJS	= $(SRCS:.c=.o)

NAME	= gps

all: $(NAME)

$(NAME): $(OBJS)
	$(CC) -o $(NAME) $(OBJS) $(CFLAGS) $(LDFLAGS)

clean:
	$(RM) $(OBJS)

fclean: clean
	$(RM) $(NAME)

re: fclean all

.PHONY: clean fclean all $(NAME)
