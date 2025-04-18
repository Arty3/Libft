/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   ft_misc.h                                          :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: lgoddijn <lgoddijn@student.codam.nl >      +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2024/11/07 13:35:59 by lgoddijn          #+#    #+#             */
/*   Updated: 2024/11/11 21:10:26 by lgoddijn         ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#ifndef FT_MISC_H

# define FT_MISC_H

# include "ft_memory.h"
# include "ft_string.h"
# include "ft_unistd.h"

# include <linux/limits.h>

# include "../src/misc/frpath/__frpath.h"

# define __AT_EXIT_STACK_HANDLERS	32

/*
	Note, change the array sizes to __AT_EXIT_STACK_HANDLERS value
	Norminette is the peak of stupidity so it doesnt allow macro
	constant array lengths
*/
typedef struct s_fl
{
	struct s_fl	*next;
	void		(*f[32])(void *);
	void		*a[32];
}	t_fl;

typedef struct s_exit_ctx
{
	struct s_fl	*head;
	struct s_fl	builtin;
	int			finished;
	int			slot;
}	t_exit_ctx;

/* Path resolution. Doesn't handle `~` (home) expansion */
char	*frpath(const char *__restrict__ path, char resolved[PATH_MAX]);

/* Only use if you know what you're doing */
void	__call_on_exit(void);

/* Use to assign functions to run on program termination */
int		ft_atexit(void (*fn)(void *), void *arg);

#endif
