// H2 PC GSC
// Decompiled by https://github.com/xensik/gsc-tool
#using_animtree("vehicles");

main( var_0, var_1, var_2 )
{
    _ID42411::_ID6255( "m1a1", var_0, var_1, var_2 );
    _ID42411::_ID6236( ::_ID19731 );
    _ID42411::_ID6216( "vehicle_m1a1_abrams", "vehicle_m1a1_abrams_dmg" );
    _ID42411::_ID6251( "tankblast" );
    _ID42411::_ID6220( %abrams_movement, %abrams_movement_backwards, 10 );
    _ID42411::_ID6222( "fx/distortion/abrams_exhaust" );
    _ID42411::_ID6218( "fx/dust/abrams_deck_dust" );
    _ID42411::_ID6257();
    _ID42411::_ID6213( "fx/explosions/large_vehicle_explosion", undefined, "exp_armor_vehicle" );
    _ID42411::_ID6261( "m1a1_coaxial_mg", "tag_coax_mg", "vehicle_m1a1_abrams_PKT_Coaxial_MG" );
    _ID42411::_ID6233( 999, 500, 1500 );
    _ID42411::_ID6248( "tank_rumble", 0.15, 4.5, 900, 1, 1 );
    _ID42411::_ID6253( "allies" );
    _ID42411::_ID6237();
    _ID42411::_ID6204( ::_ID32550, ::_ID32509 );
    _ID42411::_ID6223( 0.33 );
}

_ID19731()
{

}

_ID17700()
{
    self endon( "death" );
    var_0 = 0;
    var_1 = 6000;
    var_2 = 1.0;
    _ID51253::_ID45689();
    thread _ID23939();
    self._ID34513 = self._ID31138;

    for (;;)
    {
        if ( !isdefined( self._ID31138 ) || !self._ID31138 )
        {
            var_3 = distance( self.origin, level.player.origin );

            if ( var_0 && var_3 > var_1 )
            {
                _ID51253::_ID48664( var_2 );
                var_0 = 0;
                wait 0.1;
            }
            else if ( !var_0 && var_3 < var_1 )
            {
                _ID51253::_ID54500();
                var_0 = 1;
            }
        }
        else if ( var_0 )
        {
            _ID51253::_ID48664( var_2 );
            var_0 = 0;
        }

        wait 0.1;
    }
}

_ID23939()
{
    self waittill( "death" );
    var_0 = 1.0;
    _ID51253::_ID48664( var_0 );
}

_ID32509( var_0 )
{
    return var_0;
}

_ID32550()
{
    var_0 = [];

    for ( var_1 = 0; var_1 < 11; var_1++ )
        var_0[var_1] = spawnstruct();

    var_0[0]._ID16493 = 1;
    return var_0;
}
