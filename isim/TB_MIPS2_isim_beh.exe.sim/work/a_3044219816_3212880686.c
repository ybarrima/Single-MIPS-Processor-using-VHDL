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
static const char *ng0 = "D:/AAST/6th term/Computer Archeticture/LAB/YoussefBarrima_18100743/MIPS_SingleCycle_YoussefMohamedBarrima_18100743/ALU_Control.vhd";



static void work_a_3044219816_3212880686_p_0(char *t0)
{
    char *t1;
    char *t2;
    char *t3;
    unsigned char t4;
    unsigned int t5;
    char *t6;
    char *t7;
    char *t8;
    char *t9;
    char *t10;
    char *t11;
    char *t12;
    char *t13;
    char *t14;
    unsigned int t15;
    unsigned int t16;
    unsigned int t17;
    unsigned char t18;
    unsigned int t19;
    char *t20;
    char *t21;
    char *t22;
    char *t23;
    char *t24;
    char *t25;

LAB0:    xsi_set_current_line(21, ng0);
    t1 = (t0 + 1192U);
    t2 = *((char **)t1);
    t1 = (t0 + 5088);
    t4 = 1;
    if (2U == 2U)
        goto LAB5;

LAB6:    t4 = 0;

LAB7:    if (t4 != 0)
        goto LAB2;

LAB4:    t1 = (t0 + 1192U);
    t2 = *((char **)t1);
    t1 = (t0 + 5094);
    t4 = 1;
    if (2U == 2U)
        goto LAB13;

LAB14:    t4 = 0;

LAB15:    if (t4 != 0)
        goto LAB11;

LAB12:    t1 = (t0 + 1192U);
    t2 = *((char **)t1);
    t1 = (t0 + 5100);
    t4 = 1;
    if (2U == 2U)
        goto LAB21;

LAB22:    t4 = 0;

LAB23:    if (t4 != 0)
        goto LAB19;

LAB20:    t1 = (t0 + 1192U);
    t2 = *((char **)t1);
    t1 = (t0 + 5142);
    t4 = 1;
    if (2U == 2U)
        goto LAB70;

LAB71:    t4 = 0;

LAB72:    if (t4 != 0)
        goto LAB68;

LAB69:
LAB3:    t1 = (t0 + 2832);
    *((int *)t1) = 1;

LAB1:    return;
LAB2:    xsi_set_current_line(22, ng0);
    t8 = (t0 + 5090);
    t10 = (t0 + 2912);
    t11 = (t10 + 56U);
    t12 = *((char **)t11);
    t13 = (t12 + 56U);
    t14 = *((char **)t13);
    memcpy(t14, t8, 4U);
    xsi_driver_first_trans_fast_port(t10);
    goto LAB3;

LAB5:    t5 = 0;

LAB8:    if (t5 < 2U)
        goto LAB9;
    else
        goto LAB7;

LAB9:    t6 = (t2 + t5);
    t7 = (t1 + t5);
    if (*((unsigned char *)t6) != *((unsigned char *)t7))
        goto LAB6;

LAB10:    t5 = (t5 + 1);
    goto LAB8;

LAB11:    xsi_set_current_line(25, ng0);
    t8 = (t0 + 5096);
    t10 = (t0 + 2912);
    t11 = (t10 + 56U);
    t12 = *((char **)t11);
    t13 = (t12 + 56U);
    t14 = *((char **)t13);
    memcpy(t14, t8, 4U);
    xsi_driver_first_trans_fast_port(t10);
    goto LAB3;

LAB13:    t5 = 0;

LAB16:    if (t5 < 2U)
        goto LAB17;
    else
        goto LAB15;

LAB17:    t6 = (t2 + t5);
    t7 = (t1 + t5);
    if (*((unsigned char *)t6) != *((unsigned char *)t7))
        goto LAB14;

LAB18:    t5 = (t5 + 1);
    goto LAB16;

LAB19:    xsi_set_current_line(28, ng0);
    t8 = (t0 + 1032U);
    t9 = *((char **)t8);
    t15 = (5 - 3);
    t16 = (t15 * 1U);
    t17 = (0 + t16);
    t8 = (t9 + t17);
    t10 = (t0 + 5102);
    t18 = 1;
    if (4U == 4U)
        goto LAB30;

LAB31:    t18 = 0;

LAB32:    if (t18 != 0)
        goto LAB27;

LAB29:    t1 = (t0 + 1032U);
    t2 = *((char **)t1);
    t5 = (5 - 3);
    t15 = (t5 * 1U);
    t16 = (0 + t15);
    t1 = (t2 + t16);
    t3 = (t0 + 5110);
    t4 = 1;
    if (4U == 4U)
        goto LAB38;

LAB39:    t4 = 0;

LAB40:    if (t4 != 0)
        goto LAB36;

LAB37:    t1 = (t0 + 1032U);
    t2 = *((char **)t1);
    t5 = (5 - 3);
    t15 = (t5 * 1U);
    t16 = (0 + t15);
    t1 = (t2 + t16);
    t3 = (t0 + 5118);
    t4 = 1;
    if (4U == 4U)
        goto LAB46;

LAB47:    t4 = 0;

LAB48:    if (t4 != 0)
        goto LAB44;

LAB45:    t1 = (t0 + 1032U);
    t2 = *((char **)t1);
    t5 = (5 - 3);
    t15 = (t5 * 1U);
    t16 = (0 + t15);
    t1 = (t2 + t16);
    t3 = (t0 + 5126);
    t4 = 1;
    if (4U == 4U)
        goto LAB54;

LAB55:    t4 = 0;

LAB56:    if (t4 != 0)
        goto LAB52;

LAB53:    t1 = (t0 + 1032U);
    t2 = *((char **)t1);
    t5 = (5 - 3);
    t15 = (t5 * 1U);
    t16 = (0 + t15);
    t1 = (t2 + t16);
    t3 = (t0 + 5134);
    t4 = 1;
    if (4U == 4U)
        goto LAB62;

LAB63:    t4 = 0;

LAB64:    if (t4 != 0)
        goto LAB60;

LAB61:
LAB28:    goto LAB3;

LAB21:    t5 = 0;

LAB24:    if (t5 < 2U)
        goto LAB25;
    else
        goto LAB23;

LAB25:    t6 = (t2 + t5);
    t7 = (t1 + t5);
    if (*((unsigned char *)t6) != *((unsigned char *)t7))
        goto LAB22;

LAB26:    t5 = (t5 + 1);
    goto LAB24;

LAB27:    xsi_set_current_line(29, ng0);
    t14 = (t0 + 5106);
    t21 = (t0 + 2912);
    t22 = (t21 + 56U);
    t23 = *((char **)t22);
    t24 = (t23 + 56U);
    t25 = *((char **)t24);
    memcpy(t25, t14, 4U);
    xsi_driver_first_trans_fast_port(t21);
    goto LAB28;

LAB30:    t19 = 0;

LAB33:    if (t19 < 4U)
        goto LAB34;
    else
        goto LAB32;

LAB34:    t12 = (t8 + t19);
    t13 = (t10 + t19);
    if (*((unsigned char *)t12) != *((unsigned char *)t13))
        goto LAB31;

LAB35:    t19 = (t19 + 1);
    goto LAB33;

LAB36:    xsi_set_current_line(31, ng0);
    t9 = (t0 + 5114);
    t11 = (t0 + 2912);
    t12 = (t11 + 56U);
    t13 = *((char **)t12);
    t14 = (t13 + 56U);
    t20 = *((char **)t14);
    memcpy(t20, t9, 4U);
    xsi_driver_first_trans_fast_port(t11);
    goto LAB28;

LAB38:    t17 = 0;

LAB41:    if (t17 < 4U)
        goto LAB42;
    else
        goto LAB40;

LAB42:    t7 = (t1 + t17);
    t8 = (t3 + t17);
    if (*((unsigned char *)t7) != *((unsigned char *)t8))
        goto LAB39;

LAB43:    t17 = (t17 + 1);
    goto LAB41;

LAB44:    xsi_set_current_line(33, ng0);
    t9 = (t0 + 5122);
    t11 = (t0 + 2912);
    t12 = (t11 + 56U);
    t13 = *((char **)t12);
    t14 = (t13 + 56U);
    t20 = *((char **)t14);
    memcpy(t20, t9, 4U);
    xsi_driver_first_trans_fast_port(t11);
    goto LAB28;

LAB46:    t17 = 0;

LAB49:    if (t17 < 4U)
        goto LAB50;
    else
        goto LAB48;

LAB50:    t7 = (t1 + t17);
    t8 = (t3 + t17);
    if (*((unsigned char *)t7) != *((unsigned char *)t8))
        goto LAB47;

LAB51:    t17 = (t17 + 1);
    goto LAB49;

LAB52:    xsi_set_current_line(35, ng0);
    t9 = (t0 + 5130);
    t11 = (t0 + 2912);
    t12 = (t11 + 56U);
    t13 = *((char **)t12);
    t14 = (t13 + 56U);
    t20 = *((char **)t14);
    memcpy(t20, t9, 4U);
    xsi_driver_first_trans_fast_port(t11);
    goto LAB28;

LAB54:    t17 = 0;

LAB57:    if (t17 < 4U)
        goto LAB58;
    else
        goto LAB56;

LAB58:    t7 = (t1 + t17);
    t8 = (t3 + t17);
    if (*((unsigned char *)t7) != *((unsigned char *)t8))
        goto LAB55;

LAB59:    t17 = (t17 + 1);
    goto LAB57;

LAB60:    xsi_set_current_line(37, ng0);
    t9 = (t0 + 5138);
    t11 = (t0 + 2912);
    t12 = (t11 + 56U);
    t13 = *((char **)t12);
    t14 = (t13 + 56U);
    t20 = *((char **)t14);
    memcpy(t20, t9, 4U);
    xsi_driver_first_trans_fast_port(t11);
    goto LAB28;

LAB62:    t17 = 0;

LAB65:    if (t17 < 4U)
        goto LAB66;
    else
        goto LAB64;

LAB66:    t7 = (t1 + t17);
    t8 = (t3 + t17);
    if (*((unsigned char *)t7) != *((unsigned char *)t8))
        goto LAB63;

LAB67:    t17 = (t17 + 1);
    goto LAB65;

LAB68:    xsi_set_current_line(41, ng0);
    t8 = (t0 + 1032U);
    t9 = *((char **)t8);
    t15 = (5 - 3);
    t16 = (t15 * 1U);
    t17 = (0 + t16);
    t8 = (t9 + t17);
    t10 = (t0 + 5144);
    t18 = 1;
    if (4U == 4U)
        goto LAB79;

LAB80:    t18 = 0;

LAB81:    if (t18 != 0)
        goto LAB76;

LAB78:    t1 = (t0 + 1032U);
    t2 = *((char **)t1);
    t5 = (5 - 3);
    t15 = (t5 * 1U);
    t16 = (0 + t15);
    t1 = (t2 + t16);
    t3 = (t0 + 5152);
    t4 = 1;
    if (4U == 4U)
        goto LAB87;

LAB88:    t4 = 0;

LAB89:    if (t4 != 0)
        goto LAB85;

LAB86:
LAB77:    goto LAB3;

LAB70:    t5 = 0;

LAB73:    if (t5 < 2U)
        goto LAB74;
    else
        goto LAB72;

LAB74:    t6 = (t2 + t5);
    t7 = (t1 + t5);
    if (*((unsigned char *)t6) != *((unsigned char *)t7))
        goto LAB71;

LAB75:    t5 = (t5 + 1);
    goto LAB73;

LAB76:    xsi_set_current_line(42, ng0);
    t14 = (t0 + 5148);
    t21 = (t0 + 2912);
    t22 = (t21 + 56U);
    t23 = *((char **)t22);
    t24 = (t23 + 56U);
    t25 = *((char **)t24);
    memcpy(t25, t14, 4U);
    xsi_driver_first_trans_fast_port(t21);
    goto LAB77;

LAB79:    t19 = 0;

LAB82:    if (t19 < 4U)
        goto LAB83;
    else
        goto LAB81;

LAB83:    t12 = (t8 + t19);
    t13 = (t10 + t19);
    if (*((unsigned char *)t12) != *((unsigned char *)t13))
        goto LAB80;

LAB84:    t19 = (t19 + 1);
    goto LAB82;

LAB85:    xsi_set_current_line(44, ng0);
    t9 = (t0 + 5156);
    t11 = (t0 + 2912);
    t12 = (t11 + 56U);
    t13 = *((char **)t12);
    t14 = (t13 + 56U);
    t20 = *((char **)t14);
    memcpy(t20, t9, 4U);
    xsi_driver_first_trans_fast_port(t11);
    goto LAB77;

LAB87:    t17 = 0;

LAB90:    if (t17 < 4U)
        goto LAB91;
    else
        goto LAB89;

LAB91:    t7 = (t1 + t17);
    t8 = (t3 + t17);
    if (*((unsigned char *)t7) != *((unsigned char *)t8))
        goto LAB88;

LAB92:    t17 = (t17 + 1);
    goto LAB90;

}


extern void work_a_3044219816_3212880686_init()
{
	static char *pe[] = {(void *)work_a_3044219816_3212880686_p_0};
	xsi_register_didat("work_a_3044219816_3212880686", "isim/TB_MIPS2_isim_beh.exe.sim/work/a_3044219816_3212880686.didat");
	xsi_register_executes(pe);
}
