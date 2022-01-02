// H2 PC GSC
// Decompiled by https://github.com/xensik/gsc-tool
#using_animtree("generic_human");

main( var_0 )
{
    if ( isdefined( var_0 ) )
    {
        level._ID12262 = var_0;

        foreach ( var_2 in var_0 )
            level._ID30908[var_2] = var_2;
    }

    level._ID30895["generic"]["DRS_sprint"] = %sprint1_loop;
    level._ID30895["generic"]["DRS_combat_jog"] = %combat_jog;
    level._ID30895["generic"]["DRS_run_2_stop"] = %run_2_crouch_f;
    level._ID30895["generic"]["DRS_stop_idle"][0] = %exposed_crouch_aim_5;
    level._ID30895["generic"]["signal_go"] = %cqb_stand_wave_go_v1;
    level._ID12194 = _ID42408::_ID12260;
}
