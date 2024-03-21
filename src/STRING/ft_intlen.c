/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   ft_intlen.c                                        :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: ttaquet <ttaquet@student.42.fr>            +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2024/03/21 13:59:21 by ttaquet           #+#    #+#             */
/*   Updated: 2024/03/21 14:16:11 by ttaquet          ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#include "libamoa.h"

size_t	ft_intlen(int number)
{
	size_t	res;

	res = 0;
	while (number > 0)
	{
		number = number / 10;
		res++;
	}
	return (res);
}
