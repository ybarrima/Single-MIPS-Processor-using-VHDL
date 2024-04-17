/**********************************************************************/
/*   ____  ____                                                       */
/*  /   /\/   /                                                       */
/* /___/  \  /                                                        */
/* \   \   \/                                                       */
/*  \   \        Copyright (c) 2003-2009 Xilinx, Inc.                */
/*  /   /          All Right Reserved.                                 */
/* /---/   /\                                                         */
/* \   \  /  \                                                      */
/*  \___\/\___\                                                    */
/***********************************************************************/

/* This file is designed for use with ISim build 0x7708f090 */

#define XSI_HIDE_SYMBOL_SPEC true
#include "xsi.h"
#include <memory.h>
#ifdef __GNUC__
#include <stdlib.h>
#else
#include <malloc.h>
#define alloca _alloca
#endif
static const char *ng0 = "D:/AAST/6th term/Computer Archeticture/LAB/YoussefBarrima_18100743/MIPS_SingleCycle_YoussefMohamedBarrima_18100743/InstructionMemory.vhd";
extern char *IEEE_P_1242562249;

int ieee_p_1242562249_sub_1657552908_1035706684(char *, char *, char *);


static void work_a_0123541133_3212880686_p_0(char *t0)
{
    char *t1;
    char *t2;
    unsigned char t4;
    unsigned int t5;
    char *t6;
    char *t7;
    char *t8;
    char *t10;
    char *t11;
    char *t12;
    char *t13;
    char *t14;
    char *t15;
    char *t16;
    char *t17;
    int t18;
    int t19;
    int t20;
    int t21;
    unsigned int t22;
    unsigned int t23;
    unsigned int t24;
    char *t25;
    char *t26;
    char *t27;
    char *t28;
    char *t29;
    char *t30;
    char *t31;

LAB0:    xsi_set_current_line(37, ng0);
    t1 = (t0 + 1032U);
    t2 = *((char **)t1);
    t1 = (t0 + 6068);
    t4 = 1;
    if (32U == 32U)
        goto LAB5;

LAB6:    t4 = 0;

LAB7:    if (t4 != 0)
        goto LAB3;

LAB4:
LAB11:    t15 = (t0 + 1352U);
    t16 = *((char **)t15);
    t15 = (t0 + 1032U);
    t17 = *((char **)t15);
    t15 = (t0 + 5452U);
    t18 = ieee_p_1242562249_sub_1657552908_1035706684(IEEE_P_1242562249, t17, t15);
    t19 = (t18 - 4194304);
    t20 = (t19 / 4);
    t21 = (t20 - 0);
    t22 = (t21 * 1);
    xsi_vhdl_check_range_of_index(0, 15, 1, t20);
    t23 = (32U * t22);
    t24 = (0 + t23);
    t25 = (t16 + t24);
    t26 = (t0 + 2912);
    t27 = (t26 + 56U);
    t28 = *((char **)t27);
    t29 = (t28 + 56U);
    t30 = *((char **)t29);
    memcpy(t30, t25, 32U);
    xsi_driver_first_trans_fast_port(t26);

LAB2:    t31 = (t0 + 2832);
    *((int *)t31) = 1;

LAB1:    return;
LAB3:    t8 = (t0 + 6100);
    t10 = (t0 + 2912);
    t11 = (t10 + 56U);
    t12 = *((char **)t11);
    t13 = (t12 + 56U);
    t14 = *((char **)t13);
    memcpy(t14, t8, 32U);
    xsi_driver_first_trans_fast_port(t10);
    goto LAB2;

LAB5:    t5 = 0;

LAB8:    if (t5 < 32U)
        goto LAB9;
    else
        goto LAB7;

LAB9:    t6 = (t2 + t5);
    t7 = (t1 + t5);
    if (*((unsigned char *)t6) != *((unsigned char *)t7))
        goto LAB6;

LAB10:    t5 = (t5 + 1);
    goto LAB8;

LAB12:    goto LAB2;

}


extern void work_a_0123541133_3212880686_init()
{
	static char *pe[] = {(void *)work_a_0123541133_3212880686_p_0};
	xsi_register_didat("work_a_0123541133_3212880686", "isim/TB_MIPS_isim_beh.exe.sim/work/a_0123541133_3212880686.didat");
	xsi_register_executes(pe);
}
