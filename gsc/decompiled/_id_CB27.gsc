// H2 GSC SOURCE
// Dumped by https://github.com/xensik/gsc-tool

#using_animtree("vehicles");

_id_B19D( var_0, var_1, var_2 )
{
    if ( !isdefined( var_1 ) )
        var_1 = "viewhands_player_us_army";

    var_0 useanimtree( #animtree );

    if ( !isdefined( var_2 ) )
        var_0.animname = "suburban_hands";
    else
        var_0.animname = var_2;

    var_0._id_AB16 = 0;
    var_0 _id_A8B6( var_1 );
    var_0 _id_AE57();
    var_0 thread _id_BA3B( "LEFT" );
    var_0 thread _id_BA3B( "RIGHT" );
    var_0 thread _id_A80E( var_1 );
}

_id_AE57()
{
    self setanim( maps\_utility::getanim( "idle_L" ), 1, 0, 1 );
    self setanim( maps\_utility::getanim( "idle_R" ), 1, 0, 1 );
    thread play_additive_idle();
}

play_additive_idle()
{
    self endon( "death" );

    if ( isdefined( self.ownervehicle ) )
    {
        self setanimlimited( maps\_utility::getanim( "idle_add_anim" ), 1.0, 0.0, 1.0 );

        for (;;)
        {
            var_0 = clamp( self.ownervehicle.veh_speed / 50.0, 0.0, 1.0 );
            self setanim( maps\_utility::getanim( "idle_add" ), var_0, 0.2, 1.0 );
            waitframe();
        }
    }
}

_id_A80E( var_0 )
{
    var_1 = self;
    var_1 endon( "death" );

    for (;;)
    {
        var_1 waittill( "turretownerchange" );
        var_2 = var_1 getturretowner();

        if ( !isalive( var_2 ) )
        {
            _id_B900( var_0 );
            continue;
        }

        _id_A8B6( var_0 );
    }
}

_id_A8B6( var_0 )
{
    if ( !isdefined( var_0 ) )
        var_0 = "viewhands_player_us_army";

    var_1 = self;

    if ( var_1._id_AB16 )
        return;

    var_1._id_AB16 = 1;
    var_1 attach( var_0, "tag_player" );
}

_id_B900( var_0 )
{
    if ( !isdefined( var_0 ) )
        var_0 = "viewhands_player_us_army";

    var_1 = self;

    if ( !var_1._id_AB16 )
        return;

    var_1._id_AB16 = 0;
    var_1 detach( var_0, "tag_player" );
}

_id_C7F5()
{
    level.scr_animtree["suburban_hands"] = #animtree;
    level.scr_model["suburban_hands"] = "viewhands_player_us_army";
    level.scr_anim["suburban_hands"]["idle_L"] = %player_suburban_minigun_idle_l;
    level.scr_anim["suburban_hands"]["idle_R"] = %player_suburban_minigun_idle_r;
    level.scr_anim["suburban_hands"]["idle2fire_L"] = %player_suburban_minigun_idle2fire_l;
    level.scr_anim["suburban_hands"]["idle2fire_R"] = %player_suburban_minigun_idle2fire_r;
    level.scr_anim["suburban_hands"]["fire2idle_L"] = %player_suburban_minigun_fire2idle_l;
    level.scr_anim["suburban_hands"]["fire2idle_R"] = %player_suburban_minigun_fire2idle_r;
    level.scr_anim["suburban_hands"]["idle_add"] = %h2_suburban_minigun_idle_add;
    level.scr_anim["suburban_hands"]["idle_add_anim"] = %h2_suburban_minigun_idle;
}

_id_BA3B( var_0 )
{
    self endon( "death" );
    var_1 = 0;
    var_2 = undefined;

    if ( var_0 == "LEFT" )
        var_2 = ::_id_B42F;
    else if ( var_0 == "RIGHT" )
        var_2 = ::_id_B396;

    for (;;)
    {
        if ( level.player [[ var_2 ]]() )
        {
            thread _id_B453( var_0 );

            while ( level.player [[ var_2 ]]() )
                wait 0.05;
        }
        else
        {
            if ( var_1 )
                thread _id_B679( var_0 );

            while ( !level.player [[ var_2 ]]() )
                wait 0.05;
        }

        var_1 = 1;
    }
}

_id_B42F()
{
    if ( level.player adsbuttonpressed() )
        return 1;

    if ( level.player attackbuttonpressed() )
        return 1;

    return 0;
}

_id_B396()
{
    return level.player attackbuttonpressed();
}

_id_B679( var_0 )
{
    self endon( "minigun_pressed" );
    var_1 = undefined;

    if ( var_0 == "LEFT" )
        var_1 = "L";
    else if ( var_0 == "RIGHT" )
        var_1 = "R";

    self clearanim( maps\_utility::getanim( "idle2fire_" + var_1 ), 0.2 );
    self setflaggedanimrestart( "anim", maps\_utility::getanim( "fire2idle_" + var_1 ) );
    self waittillmatch( "anim", "end" );
    self clearanim( maps\_utility::getanim( "fire2idle_" + var_1 ), 0.2 );
    self setanim( maps\_utility::getanim( "idle_" + var_1 ) );
}

_id_B453( var_0 )
{
    var_1 = undefined;

    if ( var_0 == "LEFT" )
        var_1 = "L";
    else if ( var_0 == "RIGHT" )
        var_1 = "R";

    self notify( "minigun_pressed" );
    self clearanim( maps\_utility::getanim( "idle_" + var_1 ), 0.2 );
    self clearanim( maps\_utility::getanim( "fire2idle_" + var_1 ), 0.2 );
    self setanim( maps\_utility::getanim( "idle2fire_" + var_1 ) );
}
