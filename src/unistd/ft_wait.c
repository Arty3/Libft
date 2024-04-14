/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   ft_wait.c                                          :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: lgoddijn <lgoddijn@student.codam.nl >      +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2024/02/02 16:24:11 by lgoddijn          #+#    #+#             */
/*   Updated: 2024/04/14 18:42:12 by lgoddijn         ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#include "../../include/ft_unistd.h"

pid_t	ft_wait(int32_t *__status)
{
	if (!__x86_64__)
		return ((pid_t)ARCH_FAIL);
	return (ft_waitpid((pid_t)-1, __status, 0));
}
