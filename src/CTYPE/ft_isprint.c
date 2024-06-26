/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   ft_isprint.c                                       :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: tom <tom@student.42.fr>                    +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2023/10/16 15:43:49 by ttaquet           #+#    #+#             */
/*   Updated: 2024/06/26 04:09:50 by tom              ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#include "libamoa.h"

bool	ft_isprint(int c)
{
	return (c >= 32 && c <= 126);
}
