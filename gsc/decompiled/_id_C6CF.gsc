// H2 GSC SOURCE
// Dumped by https://github.com/xensik/gsc-tool

main()
{
    var_0 = getentarray( "static_destructible", "script_noteworthy" );
    common_scripts\utility::array_thread( var_0, ::_id_C4F3 );
}

_id_C4F3()
{
    self setcandamage( 1 );

    if ( isdefined( self.script_parameters ) )
        self._id_B6A9 = loadfx( self.script_parameters );

    var_0 = common_scripts\utility::spawn_tag_origin();
    var_0 linkto( self );

    for (;;)
    {
        if ( isdefined( self.destructible_type ) )
            self waittill( "exploded" );
        else
        {
            self waittill( "damage", var_1, var_2, var_3, var_4, var_5 );

            if ( var_5 != "MOD_MELEE" && var_5 != "MOD_IMPACT" )
                continue;
        }

        if ( isdefined( self._id_B6A9 ) )
            playfxontag( self._id_B6A9, var_0, "tag_origin" );

        var_6 = getent( self.target, "targetname" );

        if ( isdefined( var_6 ) )
            var_6 delete();

        if ( isdefined( self.script_parameters ) )
            self delete();

        wait 15;
        var_0 delete();
        break;
    }

    wait 0.05;
}
