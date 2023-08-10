// H2 GSC SOURCE
// Dumped by https://github.com/xensik/gsc-tool

_id_ACCD()
{
    anims();
}

#using_animtree("generic_human");

anims()
{
    level.scr_anim["generic"]["wounded_idle"][0] = %wounded_carry_closet_idle_wounded;
    level.scr_anim["generic"]["pickup_wounded"] = %wounded_carry_pickup_closet_wounded_straight;
    level.scr_anim["generic"]["pickup_carrier"] = %wounded_carry_pickup_closet_carrier_straight;
    level.scr_anim["generic"]["wounded_walk_loop"][0] = %wounded_carry_fastwalk_wounded_relative;
    level.scr_anim["generic"]["carrier_walk_loop"] = %wounded_carry_fastwalk_carrier;
    level.scr_anim["generic"]["putdown_wounded"] = %wounded_carry_putdown_closet_wounded;
    level.scr_anim["generic"]["putdown_carrier"] = %wounded_carry_putdown_closet_carrier;
}

_id_CC94( var_0 )
{
    animscripts\shared::dropaiweapon();
    self._id_AAA8 = var_0;
    self._id_AAA8 thread maps\_anim::anim_generic_loop( self, "wounded_idle", "stop_wounded_idle" );
    self.allowdeath = 1;
}

_id_BB89( var_0, var_1 )
{
    level notify( "end_carry_ai_logic" );
    setsaveddvar( "ai_friendlyFireBlockDuration", 2000 );
    var_0.allowpain = 1;
    var_0.disablebulletwhizbyreaction = 0;
    var_0.ignoreall = 0;
    var_0.grenadeawareness = 1;
    var_0 maps\_utility::setflashbangimmunity( 0 );
    var_0.dontmelee = undefined;
    var_0.neverenablecqb = undefined;
    var_0.disablearrivals = undefined;
    var_0.disableexits = undefined;
    var_0.nododgemove = 0;
    var_0 pushplayer( 0 );
    var_1 notify( "stop_carried_loop" );
    var_1 unlink();
    var_0 maps\_utility::clear_generic_run_anim();
    var_1._id_AAA8 notify( "stop_wounded_idle" );
    var_1._id_AAA8 = undefined;
}

_id_ACA9( var_0, var_1 )
{
    level endon( "end_carry_ai_logic" );
    _id_B844( var_0, var_1 );
    _id_B316( var_0, var_1 );
}

_id_AC00( var_0, var_1 )
{
    var_0 forceteleport( self.origin, self.angles );
    _id_B316( var_0, var_1 );
}

_id_B844( var_0, var_1 )
{
    level endon( "end_carry_ai_logic" );
    self endon( "end_carry_ai" );
    var_0._id_AAA8 maps\_anim::anim_generic_reach( self, "pickup_carrier" );
    var_0 notify( "stop_wounded_idle" );
    var_0._id_AAA8 notify( "stop_wounded_idle" );
    var_0.allowdeath = 1;
    var_0._id_AAA8 thread maps\_anim::anim_generic( var_0, "pickup_wounded" );
    var_0._id_AAA8 maps\_anim::anim_generic( self, "pickup_carrier" );
    self.dontmelee = 1;
    var_0 invisiblenotsolid();
}

_id_CBAE( var_0 )
{
    self endon( "death" );
    var_0 endon( "death" );
    var_0 linkto( self, "tag_origin" );
    wait 0.05;
    var_0 thread maps\_anim::anim_generic_loop( var_0, "wounded_walk_loop", "stop_carried_loop" );
}

_id_B316( var_0, var_1 )
{
    level endon( "end_carry_ai_logic" );
    self endon( "end_carry_ai" );
    var_0._id_C5ED = 1;
    thread maps\_utility::set_generic_run_anim( "carrier_walk_loop", 1 );
    var_0 notify( "stop_wounded_idle" );
    var_0._id_AAA8 notify( "stop_wounded_idle" );
    wait 0.05;
    setsaveddvar( "ai_friendlyFireBlockDuration", 0 );
    self animmode( "none" );
    self.allowpain = 0;
    self.disablebulletwhizbyreaction = 1;
    self.ignoreall = 1;
    self.ignoreme = 1;
    self.grenadeawareness = 0;
    maps\_utility::setflashbangimmunity( 1 );
    self.neverenablecqb = 1;
    self.disablearrivals = 1;
    self.disableexits = 1;
    self.nododgemove = 1;
    maps\_utility::disable_cqbwalk();
    self._id_C2AE = self.goalradius;
    thread _id_CBAE( var_0 );

    while ( isdefined( var_1.target ) )
    {
        self.ignoresuppression = 1;
        self.disablearrivals = 1;
        var_2 = getent( var_1.target, "targetname" );
        var_2 = common_scripts\utility::ter_op( isdefined( var_2 ), var_2, getnode( var_1.target, "targetname" ) );

        if ( !isdefined( var_2.target ) )
        {
            var_1 = var_2;
            break;
        }

        self.goalradius = 64;
        self setgoalpos( var_2.origin );
        self waittill( "goal" );
        var_1 = var_2;
    }

    var_1 maps\_anim::anim_generic_reach( self, "putdown_carrier" );
    var_0._id_AAA8 = var_1;
    var_0 notify( "stop_carried_loop" );
    var_1 notify( "stop_wounded_idle" );
    var_0 unlink();
    self.ignoresuppression = 0;
    self.disablearrivals = 0;
    self.goalradius = self._id_C2AE;
    thread maps\_utility::clear_run_anim();
    soundscripts\_snd::snd_message( "start_carrier_putdown" );
    var_0._id_AAA8 thread maps\_anim::anim_generic( self, "putdown_carrier" );
    var_0._id_AAA8 maps\_anim::anim_generic( var_0, "putdown_wounded" );
    setsaveddvar( "ai_friendlyFireBlockDuration", 2000 );
    self.allowpain = 1;
    self.disablebulletwhizbyreaction = 0;
    self.ignoreall = 0;
    self.grenadeawareness = 1;
    maps\_utility::setflashbangimmunity( 0 );
    self.dontmelee = undefined;
    self.neverenablecqb = undefined;
    self.disablearrivals = undefined;
    self.disableexits = undefined;
    self.nododgemove = 0;
    self pushplayer( 0 );
    var_0 visiblesolid();
    var_0._id_AAA8 thread maps\_anim::anim_generic_loop( var_0, "wounded_idle", "stop_wounded_idle" );
    var_0.allowdeath = 1;
    var_0 notify( "stop_putdown" );
    var_0._id_C5ED = undefined;
}
