// H2 GSC SOURCE
// Dumped by https://github.com/xensik/gsc-tool

_id_B2E6( var_0, var_1, var_2 )
{
    if ( isdefined( self.script_noteworthy ) && self.script_noteworthy == "blackice_tv" )
    {
        common_scripts\_destructible::destructible_create( "toy_tv_flatscreen_" + var_1 + var_0, "tag_origin", 1, undefined, 32 );
        common_scripts\_destructible::destructible_splash_damage_scaler( 1 );
        common_scripts\_destructible::destructible_fx( "tag_fx", "fx/explosions/tv_flatscreen_explosion_quick" );
        common_scripts\_destructible::destructible_sound( "tv_shot_burst" );
        common_scripts\_destructible::destructible_explode( 20, 2000, 10, 3, 3 );
        common_scripts\_destructible::destructible_state( undefined, "ma_flatscreen_tv_" + var_1 + "broken_" + var_0, 200, undefined, "no_melee" );
    }
    else
    {
        common_scripts\_destructible::destructible_create( "toy_tv_flatscreen_" + var_1 + var_0, "tag_origin", 1, undefined, 32 );
        common_scripts\_destructible::destructible_splash_damage_scaler( 1 );
        common_scripts\_destructible::destructible_fx( "tag_fx", "fx/explosions/tv_flatscreen_explosion" );
        common_scripts\_destructible::destructible_sound( "tv_shot_burst" );
        common_scripts\_destructible::destructible_explode( 20, 2000, 10, 3, 3 );
        common_scripts\_destructible::destructible_state( undefined, "ma_flatscreen_tv_" + var_1 + "broken_" + var_0, 200, undefined, "no_melee" );
    }
}

_id_D0E8( var_0, var_1, var_2 )
{
    if ( isdefined( self.script_noteworthy ) && self.script_noteworthy == "blackice_tv" )
    {
        common_scripts\_destructible::destructible_create( "toy_tv_flatscreen_" + var_1 + var_0 + "_sturdy", "tag_origin", 1, undefined, 1280 );
        common_scripts\_destructible::destructible_splash_damage_scaler( 0.5 );
        common_scripts\_destructible::destructible_fx( "tag_fx", "fx/explosions/tv_flatscreen_explosion_quick" );
        common_scripts\_destructible::destructible_sound( "tv_shot_burst" );
        common_scripts\_destructible::destructible_explode( 20, 2000, 10, 3, 3 );
        common_scripts\_destructible::destructible_state( undefined, "ma_flatscreen_tv_" + var_1 + "broken_" + var_0, 200, undefined, "no_melee" );
    }
    else
    {
        common_scripts\_destructible::destructible_create( "toy_tv_flatscreen_" + var_1 + var_0 + "_sturdy", "tag_origin", 1, undefined, 1280 );
        common_scripts\_destructible::destructible_splash_damage_scaler( 0.5 );
        common_scripts\_destructible::destructible_fx( "tag_fx", "fx/explosions/tv_flatscreen_explosion_cheap" );
        common_scripts\_destructible::destructible_sound( "tv_shot_burst" );
        common_scripts\_destructible::destructible_explode( 20, 2000, 10, 3, 3 );
        common_scripts\_destructible::destructible_state( undefined, "ma_flatscreen_tv_" + var_1 + "broken_" + var_0, 200, undefined, "no_melee" );
    }
}

_id_B46C( var_0, var_1 )
{
    if ( isdefined( self.script_noteworthy ) && self.script_noteworthy == "blackice_tv" )
    {
        common_scripts\_destructible::destructible_create( "toy_" + var_0, "tag_origin", 1, undefined, 32 );
        common_scripts\_destructible::destructible_splash_damage_scaler( 1 );
        common_scripts\_destructible::destructible_fx( "tag_fx", "fx/explosions/tv_flatscreen_explosion_quick" );
        common_scripts\_destructible::destructible_sound( "tv_shot_burst" );
        common_scripts\_destructible::destructible_explode( 20, 2000, 10, 3, 3 );
        common_scripts\_destructible::destructible_state( undefined, var_0 + "_d", 200, undefined, "no_melee" );
    }
    else
    {
        common_scripts\_destructible::destructible_create( "toy_" + var_0, "tag_origin", 1, undefined, 32 );
        common_scripts\_destructible::destructible_splash_damage_scaler( 1 );
        common_scripts\_destructible::destructible_fx( "tag_fx", "fx/explosions/tv_flatscreen_explosion" );
        common_scripts\_destructible::destructible_sound( "tv_shot_burst" );
        common_scripts\_destructible::destructible_explode( 20, 2000, 10, 3, 3 );
        common_scripts\_destructible::destructible_state( undefined, var_0 + "_d", 200, undefined, "no_melee" );
    }
}

_id_B5C3()
{
    if ( isdefined( self.target ) )
    {
        var_0 = getentarray( self.target, "targetname" );

        if ( isdefined( var_0 ) )
        {
            foreach ( var_2 in var_0 )
            {
                if ( var_2.classname == "light_omni" || var_2.classname == "light_spot" )
                {
                    var_2 setlightintensity( 0 );
                    continue;
                }

                var_2 delete();
            }
        }
    }
}
