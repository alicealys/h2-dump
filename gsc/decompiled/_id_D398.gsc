// H2 GSC SOURCE
// Dumped by https://github.com/xensik/gsc-tool

#using_animtree("generic_human");

main()
{
    level.maxdetpackdamage = 100;
    level.mindetpackdamage = 50;
    level.detpackstunradius = 250;
    level._id_B1AC = "com_door_breach_left_obj";
    level.stunnedanimnumber = 1;
    precachemodel( level._id_B1AC );
    precachemodel( "weapon_detcord" );
    level.scr_anim["generic"]["detcord_stack_left_start_01"] = %breach_stackl_approach;
    level.scr_anim["generic"]["detcord_stack_left_start_02"] = %breach_explosive_approach;
    level.scr_anim["generic"]["detcord_stack_left_start_no_approach_01"] = %explosivebreach_v1_stackl_idle;
    level.scr_anim["generic"]["detcord_stack_left_start_no_approach_02"] = %explosivebreach_v1_detcord_idle;
    level.scr_anim["generic"]["detcord_stack_leftidle_01"][0] = %explosivebreach_v1_stackl_idle;
    level.scr_anim["generic"]["detcord_stack_leftidle_02"][0] = %explosivebreach_v1_detcord_idle;
    level.scr_anim["generic"]["detcord_stack_leftbreach_01"] = %explosivebreach_v1_stackl;
    level.scr_anim["generic"]["detcord_stack_leftbreach_02"] = %explosivebreach_v1_detcord;
    level.scr_anim["generic"]["exposed_flashbang_v1"] = %exposed_flashbang_v1;
    level.scr_anim["generic"]["exposed_flashbang_v2"] = %exposed_flashbang_v2;

    if ( isdefined( level._id_BF59 ) )
    {
        maps\_anim::addnotetrack_customfunction( "generic", "audio_start_mix", ::_id_C30D, "detcord_stack_leftbreach_01" );
        maps\_anim::addnotetrack_customfunction( "generic", "audio_stop_mix", ::_id_C6F8, "detcord_stack_leftbreach_01" );
        maps\_anim::addnotetrack_customfunction( "generic", "audio_custom_fire", ::_id_B4E3, "detcord_stack_leftbreach_01" );
        maps\_anim::addnotetrack_customfunction( "generic", "audio_custom_fire", ::_id_B4E3, "detcord_stack_leftbreach_02" );
    }

    if ( isdefined( level._id_B71F ) && level._id_B71F )
        _id_B03F();
}

_id_B4E3( var_0 )
{
    if ( isdefined( var_0.breachdonotfire ) )
        return;

    var_0 thread maps\_utility::play_sound_on_entity( "sp_breach_explosive_left_fire_npc" );
}

_id_C30D( var_0 )
{
    soundscripts\_audio_mix_manager::mm_add_submix( "explosive_breach_left_mix" );
}

_id_C6F8( var_0 )
{
    soundscripts\_audio_mix_manager::mm_clear_submix( "explosive_breach_left_mix" );
}

#using_animtree("door");

_id_B03F()
{
    level.scr_animtree["breach_door"] = #animtree;
    level.scr_anim["breach_door"]["explosive_breach_left_door"] = %explosivebreach_v1_door;
}
