.section .text
.globl _text
_text:

.section .bss
.globl __bss_start
__bss_start:

.section .setup.init
.globl __setup_start
__setup_start:

.section .initcall.init
.globl __initcall_start
__initcall_start:

.section .text.init
.globl __init_begin   
__init_begin:

.section .data.init_task
.align 8192

.section .text.init                
.align 4096

.section .data.idt
.align 4096

.section .data.cacheline_aligned
.align 32
