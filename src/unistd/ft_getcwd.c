/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   ft_getcwd.c                                        :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: lgoddijn <lgoddijn@student.codam.nl>       +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2024/01/01 16:49:09 by lgoddijn          #+#    #+#             */
/*   Updated: 2024/01/01 20:36:05 by lgoddijn         ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#include "../../include/ft_unistd.h"

char	*ft_getcwd(char *__buf, size_t __size)
{
	bool	success;

	if (!__x86_64__)
		return ((char *)ARCH_FAIL);
	success = __syscall(
			__NR_getcwd,
			(long)__buf,
			__size) > 0;
	if (success)
		return (NULL);
	return (__buf);
}
