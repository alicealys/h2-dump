// H2 PC GSC
// Decompiled by https://github.com/xensik/gsc-tool

main()
{
    if ( self.type == "dog" )
        _ID34338();
    else
        _ID34339();
}
#using_animtree("generic_human");

_ID34339()
{
    var_0 = [];
    var_0["traverseAnim"] = %slide_across_car;
    var_0["traverseToCoverAnim"] = %slide_across_car_2_cover;
    var_0["coverType"] = "Cover Crouch";
    var_0["traverseHeight"] = 38.0;
    var_0["interruptDeathAnim"][0] = animscripts\utility::_ID3291( %slide_across_car_death );
    var_0["traverseSound"] = "npc_car_slide_hood";
    var_0["traverseToCoverSound"] = "npc_car_slide_cover";
    animscripts\traverse\shared::_ID11657( var_0 );
}
#using_animtree("dog");

_ID34338()
{
    self endon( "killanimscript" );
    self traversemode( "noclip" );
    var_0 = self getnegotiationstartnode();
    self orientmode( "face angle", var_0.angles[1] );
    self clearanim( %animscript_root, 0.1 );
    self setflaggedanimrestart( "traverse", anim._ID11491["jump_up_40"], 1, 0.1, 1 );
    animscripts\shared::_ID11529( "traverse" );
    thread _ID42237::_ID27077( "anml_dog_bark", self gettagorigin( "tag_eye" ) );
    self clearanim( %animscript_root, 0 );
    self setflaggedanimrestart( "traverse", anim._ID11491["jump_down_40"], 1, 0, 1 );
    animscripts\shared::_ID11529( "traverse" );
    self traversemode( "gravity" );
}
