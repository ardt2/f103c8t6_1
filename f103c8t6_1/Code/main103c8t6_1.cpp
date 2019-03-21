/*
 *
 *
 * 2019, март, Ardt2
 *
 */
// *****************************************************************************
//
//  Файл               : ./103c8t6_1/Code/main103c8t6.cpp
//
//  Дата правки        : 21 марта 2019 г.
//  Описание           : TODO Введи здесь описание функциональности файла
//  Лицензия           : Creative common 3.0
//
//
//  Автор Ardt2 (c) 2019
//
// *****************************************************************************
// Стремись к хорошему стилю C++ для встраиваимых систем.

// ============================================================================
#include "S103c8t6_1.h"
#include "StmPeriphery.h"


// ============================================================================
volatile uint32_t TSysTickTimer::Tick = 1; // Конструктор удален, но, слава богу,
                                           // static поле инициализируется здесь.

// ============================================================================
TRcc & ArmClocksControl = *static_cast<TRcc *>RCC; // ( )
// ----------------------------------------------------------------------------
TSysTickTimer & SysTimer = *static_cast<TSysTickTimer *>TIM1;
// ----------------------------------------------------------------------------
TGpIO & PortA = *static_cast<TGpIO *>GPIOA;
TGpIO & PortB = *static_cast<TGpIO *>GPIOB;
TGpIO & PortC = *static_cast<TGpIO *>GPIOC;


// ===== main() ===============================================================
void main(void)
{
	// На данном этапе тактовый генератор уже должен быть настроен
	// на высокую скорость. Смотри функцию _start();

	ArmClocksControl.PortOn(::GPIOportX::PortC);

	PortC.BSRR = 0x01U << 13; // *

//	PortC.CRH |= 0x05U << (4 * 3);
//	PortC.CRH |= 0x05U << (4 * 4);
	PortC.CRH |= 0x05U << (4 * 5); // *

//	PortC.BSRR = 0x01U << 11;
//	PortC.BSRR = 0x01U << 12;
	PortC.BRR = 0x01U << 13; // * Низкий уровень.

	ArmClocksControl.Tim1on();
	SysTimer.Start();


	uint32_t ledtick = SysTimer.Tick;

	while (1)
	{
	    // Сказать, что это ОСРВ, наверное, значит ничего не сказать,
	    // но многозадачность, хоть и кооперативная, здесь уже есть.
	    if(ledtick == SysTimer.Tick)
	    {
	        ledtick += 500; // Переполнение? Вместе со счетчиком.

            if(PortC.ODR & 0x01U << 13)
            {
                PortC.BRR = 0x01U << 13;
            }
            else
            {
                PortC.BSRR = 0x01U << 13;
            }
	    }

	}
}



// ============================================================================
extern "C" void SysTick_Handler(void) // Вот такое объявление. Только для линковщика. )
{
	SysTimer.Tick++;
}



/*
 *

 * This file is part of the µOS++ distribution.
 *   (https://github.com/micro-os-plus)
 * Copyright (c) 2014 Liviu Ionescu.
 *
 * Permission is hereby granted, free of charge, to any person
 * obtaining a copy of this software and associated documentation
 * files (the "Software"), to deal in the Software without
 * restriction, including without limitation the rights to use,
 * copy, modify, merge, publish, distribute, sublicense, and/or
 * sell copies of the Software, and to permit persons to whom
 * the Software is furnished to do so, subject to the following
 * conditions:
 *
 * The above copyright notice and this permission notice shall be
 * included in all copies or substantial portions of the Software.
 *
 * THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND,
 * EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES
 * OF MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND
 * NONINFRINGEMENT. IN NO EVENT SHALL THE AUTHORS OR COPYRIGHT
 * HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY,
 * WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING
 * FROM, OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR
 * OTHER DEALINGS IN THE SOFTWARE.


#include <stdio.h>
#include <stdlib.h>

//
// Standalone STM32F1 empty sample (trace via NONE).
//
// Trace support is enabled by adding the TRACE macro definition.
// By default the trace messages are forwarded to the NONE output,
// but can be rerouted to any device or completely suppressed, by
// changing the definitions required in system/src/diag/trace_impl.c
// (currently OS_USE_TRACE_ITM, OS_USE_TRACE_SEMIHOSTING_DEBUG/_STDOUT).
//
 *
// Sample pragmas to cope with warnings. Please note the related line at
// the end of this function, used to pop the compiler diagnostics status.
#pragma GCC diagnostic push
#pragma GCC diagnostic ignored "-Wunused-parameter"
#pragma GCC diagnostic ignored "-Wmissing-declarations"
#pragma GCC diagnostic ignored "-Wreturn-type"


#pragma GCC diagnostic pop
*/

