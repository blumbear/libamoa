/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   ft_isdigit.c                                       :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: tom <tom@student.42.fr>                    +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2023/10/16 15:08:31 by ttaquet           #+#    #+#             */
/*   Updated: 2024/06/26 04:09:48 by tom              ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#include "libamoa.h"

bool	ft_isdigit(int c)
{
	return (c >= '0' && c <= '9');
}
