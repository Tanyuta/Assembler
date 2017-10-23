NAME = asm

FLAGS = -Wall -Wextra -Werror -O3

SRC = 	asm_main.c asm_parse_file.c \
	asm_addition_funcs.c asm_error_and_free.c \
	asm_instruncions_lable.c asm_work_with_args.c \
	asm_write_bytes_in_file.c asm_parse_init_validate.c

OBJ = $(patsubst %.c, %.o, $(SRC))

all: $(NAME)

$(NAME): $(OBJ)
	@clang -g $(FLAGS) -o $@ $(SRC) Libft_extended/libft.a
	@rm -r $(OBJ)

clean:
	@rm -f $(OBJ)

fclean: clean
	@rm -f $(OBJ) $(NAME)

re: fclean all
