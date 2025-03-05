/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   ft_putenvp.c                                       :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: lgoddijn <lgoddijn@student.codam.nl >      +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2024/10/01 14:00:34 by lgoddijn          #+#    #+#             */
/*   Updated: 2024/11/11 20:56:18 by lgoddijn         ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#include "../../include/ft_env.h"

static __always_inline int	__register_cleanup(char ***alloc)
{
	static int	registered = 0;

	if (!registered)
	{
		if (ft_atexit(__free2d_env_alloc, (void *)alloc) != 0)
			return (-1);
		registered = 1;
	}
	return (EXIT_SUCCESS);
}

static __inline__ int	__update_existing(t_args1 *args)
{
	char		*tmp;
	char		**e;

	args->i = 0;
	if (*(args->__envp))
	{
		e = *(args->__envp);
		while (*e)
		{
			if (!ft_strncmp(args->s, *e, args->l + 1))
			{
				tmp = *e;
				*e = args->s;
				__envp_rm_add(tmp, args->r);
				return (EXIT_SUCCESS);
			}
			++args->i;
			++e;
		}
	}
	return (1);
}

static __inline__ int	__do_env_alloc(
		char ***oldenv,
		char ***newenv,
		t_args2 *args)
{
	if (*(args->__envp) == *oldenv)
	{
		*newenv = (char **)ft_realloc(
				*oldenv,
				sizeof(**newenv) * args->i,
				sizeof(**newenv) * (args->i + 2));
		if (!*newenv)
		{
			free((void *)args->r);
			return (-1);
		}
	}
	else
	{
		*newenv = (char **)ft_calloc(args->i + 2, sizeof(**newenv));
		if (!*newenv)
		{
			free((void *)args->r);
			return (-1);
		}
		if (args->i)
			ft_memcpy(*newenv, *(args->__envp), sizeof(**newenv) * args->i);
		free((void *)*oldenv);
	}
	return (EXIT_SUCCESS);
}

int	__ft_putenvp(char *s, size_t l, char *r, char ***__envp)
{
	static char	**oldenv;
	char		**newenv;
	t_args1		args1;

	args1.s = s;
	args1.r = r;
	args1.i = 0;
	args1.l = l;
	args1.__envp = __envp;
	if (__update_existing(&args1) == 0)
		return (EXIT_SUCCESS);
	if (__do_env_alloc(&oldenv, &newenv, &(t_args2){__envp, r, args1.i}) == -1)
		return (-1);
	if (__register_cleanup(&oldenv) != 0)
		return (-1);
	newenv[args1.i] = s;
	newenv[args1.i + 1] = 0;
	oldenv = newenv;
	*__envp = oldenv;
	if (r)
		__envp_rm_add(0, r);
	return (EXIT_SUCCESS);
}

int	ft_putenvp(char *s, char ***__envp)
{
	const size_t	l = ft_strchrnul(s, '=') - s;

	if (!l || !s[l])
		return (ft_unsetenvp(s, __envp));
	return (__ft_putenvp(s, l, 0, __envp));
}
