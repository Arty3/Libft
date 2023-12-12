# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    Makefile                                           :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: lgoddijn <lgoddijn@student.codam.nl >      +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2023/10/02 14:44:40 by lgoddijn          #+#    #+#              #
#    Updated: 2023/12/05 15:21:20 by lgoddijn         ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

NAME = libft.a

CC = cc
CFLAGS = -Wall -Wextra -Werror

DEPENDENCIES = libft.h

SRCS = memory/ft_bzero.c \
	   memory/ft_calloc.c \
	   memory/ft_memchr.c \
	   memory/ft_memcmp.c \
	   memory/ft_memcpy.c \
	   memory/ft_memmove.c \
	   memory/ft_memset.c \
	   memory/ft_realloc.c \
	   string/ft_atoi.c \
	   string/ft_isalnum.c \
	   string/ft_isalpha.c \
	   string/ft_isascii.c \
	   string/ft_isdigit.c \
	   string/ft_isprint.c \
	   string/ft_itoa.c \
	   string/ft_strsplit.c \
	   string/ft_strchr.c \
	   string/ft_strdup.c \
	   string/ft_striteri.c \
	   string/ft_strequals.c \
	   string/ft_strjoin.c \
	   string/ft_strlcat.c \
	   string/ft_strlcpy.c \
	   string/ft_strlen.c \
	   string/ft_strmapi.c \
	   string/ft_strncmp.c \
	   string/ft_strnstr.c \
	   string/ft_strrchr.c \
	   string/ft_strtrim.c \
	   string/ft_substr.c \
	   string/ft_tolower.c \
	   string/ft_toupper.c \
	   string/ft_strnjoin.c \
	   linkedlist/ft_append_lst.c \
	   linkedlist/ft_clear_lst.c \
	   linkedlist/ft_pop_lst.c \
	   linkedlist/ft_init_lst.c \
	   linkedlist/ft_iter_lst.c \
	   linkedlist/ft_last_lst.c \
	   linkedlist/ft_map_lst.c \
	   linkedlist/ft_prepend_lst.c \
	   linkedlist/ft_size_lst.c \
	   dictionary/ft_access_dict.c \
	   dictionary/ft_append_dict.c \
	   dictionary/ft_clear_dict.c \
	   dictionary/ft_pop_dict.c \
	   dictionary/ft_init_dict.c \
	   dictionary/ft_iter_dict.c \
	   dictionary/ft_last_dict.c \
	   dictionary/ft_map_dict.c \
	   dictionary/ft_prepend_dict.c \
	   dictionary/ft_search_dict.c \
	   dictionary/ft_size_dict.c \
	   stack/ft_init_stack.c \
	   stack/ft_is_empty_stack.c \
	   stack/ft_is_full_stack.c \
	   stack/ft_peek_stack.c \
	   stack/ft_pop_stack.c \
	   stack/ft_push_stack.c \
	   stack/ft_free_stack.c \
	   file/ft_putchar_fd.c \
	   file/ft_putendl_fd.c \
	   file/ft_putnbr_fd.c \
	   file/ft_putstr_fd.c \
	   file/get_next_line/ft_get_next_line_utils.c \
	   file/get_next_line/ft_get_next_line.c \
	   file/ft_read_file.c \
	   math/ft_abs.c \
	   math/ft_absd.c \
	   math/ft_absf.c \
	   math/ft_approximatelyd.c \
	   math/ft_approximatelyf.c \
	   math/ft_clamp_0_1.c \
	   math/ft_clamp.c \
	   math/ft_clampd_0_1.c \
	   math/ft_clampd.c \
	   math/ft_clampf_0_1.c \
	   math/ft_clampf.c \
	   math/ft_delta_angled.c \
	   math/ft_delta_anglef.c \
	   math/ft_digits.c \
	   math/ft_expd.c \
	   math/ft_expf.c \
	   math/ft_factorial.c \
	   math/ft_gammad.c \
	   math/ft_gammaf.c \
	   math/ft_gaussian_kerneld.c \
	   math/ft_gaussian_kernelf.c \
	   math/ft_lerpd_angle.c \
	   math/ft_lerpd_unclamped.c \
	   math/ft_lerpd.c \
	   math/ft_lerpf_angle.c \
	   math/ft_lerpf_unclamped.c \
	   math/ft_lerpf.c \
	   math/ft_logd.c \
	   math/ft_logf.c \
	   math/ft_max.c \
	   math/ft_maxd.c \
	   math/ft_maxf.c \
	   math/ft_min.c \
	   math/ft_mind.c \
	   math/ft_minf.c \
	   math/ft_mod.c \
	   math/ft_modd.c \
	   math/ft_modf.c \
	   math/ft_move_towards_angled.c \
	   math/ft_move_towards_anglef.c \
	   math/ft_move_towards.c \
	   math/ft_move_towardsd.c \
	   math/ft_move_towardsf.c \
	   math/ft_pow.c \
	   math/ft_powd.c \
	   math/ft_powf.c \
	   math/ft_rsqrtd.c \
	   math/ft_rsqrtf.c \
	   math/ft_sign.c \
	   math/ft_signd.c \
	   math/ft_signf.c \
	   math/ft_smooth_stepd.c \
	   math/ft_smooth_stepf.c \
	   math/ft_sqrtd.c \
	   math/ft_sqrtf.c \
	   vector/ft_add_v3.c \
	   vector/ft_aggregate_v3.c \
	   vector/ft_angle_v3.c \
	   vector/ft_clamp_magnitude_v3.c \
	   vector/ft_conjugate_v3.c \
	   vector/ft_cross_v3.c \
	   vector/ft_distance_v3.c \
	   vector/ft_div_v3.c \
	   vector/ft_dot_v3.c \
	   vector/ft_equals_v3.c \
	   vector/ft_init_v3.c \
	   vector/ft_lerp_unclamped_v3.c \
	   vector/ft_lerp_v3.c \
	   vector/ft_magnitude_v3.c \
	   vector/ft_max_v3.c \
	   vector/ft_min_v3.c \
	   vector/ft_move_towards_v3.c \
	   vector/ft_mul_v3.c \
	   vector/ft_normalize_v3.c \
	   vector/ft_project_v3.c \
	   vector/ft_reflect_v3.c \
	   vector/ft_scale_v3.c \
	   vector/ft_sdiv_v3.c \
	   vector/ft_signed_angle_v3.c \
	   vector/ft_slerp_v3.c \
	   vector/ft_sqr_magnitude_v3.c \
	   vector/ft_sub_v3.c \
	   print/ft_print_char.c \
	   print/ft_print_str.c \
	   print/ft_print_int.c \
	   print/ft_print_unsigned.c \
	   print/ft_print_hex.c \
	   print/ft_print_ptr.c \
	   print/ft_printf.c \
	   print/ft_raise.c

OBJS = $(SRCS:.c=.o)

all: $(NAME)

$(NAME): $(OBJS) $(DEPENDENCIES)
	ar rcs $(NAME) $(OBJS)

.c.o:
	$(CC) $(CFLAGS) -c $< -o $@

clean:
	rm -f $(OBJS)

fclean: clean
	rm -f $(NAME)

re: fclean all

.PHONY: all clean fclean re
