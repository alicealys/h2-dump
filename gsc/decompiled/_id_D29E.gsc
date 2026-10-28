// H2 GSC SOURCE
// Dumped by https://github.com/xensik/gsc-tool

#using_animtree("generic_human");

main()
{
    level.scr_anim["generic"]["shotgunhinges_breach_left_stack_start_01"] = %breach_sh_breacherl1_idle;
    level.scr_anim["generic"]["shotgunhinges_breach_left_stack_start_02"] = %breach_sh_stackr1_idle;
    level.scr_anim["generic"]["shotgunhinges_breach_left_stack_idle_01"][0] = %breach_sh_breacherl1_idle;
    level.scr_anim["generic"]["shotgunhinges_breach_left_stack_idle_02"][0] = %breach_sh_stackr1_idle;
    level.scr_anim["generic"]["shotgunhinges_breach_left_stack_breach_01"] = %breach_sh_breacherl1_enter;
    level.scr_anim["generic"]["shotgunhinges_breach_left_stack_breach_02"] = %breach_sh_stackr1_enter;
}
