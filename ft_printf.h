/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   ft_printf.h                                        :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: jnoh <jnoh@student.42seoul.kr>             +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2022/04/12 17:30:09 by jnoh              #+#    #+#             */
/*   Updated: 2022/08/24 16:24:31 by jnoh             ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#ifndef FT_PRINTF_H
# define FT_PRINTF_H

# include <stdarg.h>
# include "./libft/libft.h"

int		ft_printf(const char *format, ...);
int		ft_putchar(int c);
int		ft_putstr(char *str);
int		ft_print_small_hex(unsigned long long hex);
int		ft_print_big_hex(unsigned long long hex);
int		ft_print_addr(void *addr);
int		ft_print_int(int nb);
int		ft_print_unsigned_int(unsigned int nb);

#endif