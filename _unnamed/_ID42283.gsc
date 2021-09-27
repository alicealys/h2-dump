// H2 PC GSC
// Decompiled by https://github.com/xensik/gsc-tool

_ID521()
{
    level._ID1426["c4_light_blink"] = _func_155( "vfx/lights/light_c4_blink" );
    level._ID1426["claymore_laser"] = _func_155( "vfx/props/claymore_laser" );
    _unknown_0089( "dirt" );
    _unknown_0091( "dust" );
    _unknown_009A( "mud" );
    _unknown_00A2( "snow" );
    _unknown_00AA( "water" );
    _unknown_00D1( "water_waist", "water" );
    _unknown_00DD( "water_ankle", "water" );
    _unknown_00E9( "water_knee", "water" );
    _unknown_00F5( "foliage_debris", "dirt" );
    _unknown_0101( "foliage_vegetation", "dirt" );
    _unknown_010D( "foliage_leaves", "dirt" );
    _unknown_0119( "grass", "dirt" );
    _unknown_0125( "grass_tall", "dirt" );
    _unknown_0131( "sand", "dirt" );
    _unknown_013D( "ice", "snow" );
    _unknown_0149( "default", "dust" );

    for ( var_0 = 0; var_0 < level._ID805.size; var_0++ )
        level._ID805[var_0] thread _unknown_0122();
}

_ID41525()
{
    level._ID6519 = 0;
    self endon( "death" );
    self._ID6512 = [];
    self._ID37697 = 0;
    thread _unknown_0234();
    thread _unknown_02BB();
    thread _unknown_0257();
    thread _unknown_01CF();
    thread _unknown_0206();

    for (;;)
    {
        self waittill( "grenade_pullback",  var_0  );
        self._ID37697 = 1;

        if ( var_0 == "c4" )
        {
            _unknown_0257();
            continue;
        }

        if ( var_0 == "smoke_grenade_american" )
        {
            _unknown_01D6();
            continue;
        }

        _unknown_025D();
    }
}

loadgrenadeexplosionfx( var_0 )
{
    level._ID1426["explosion_overlay_" + var_0 + "_left"] = _func_155( "vfx/explosion/explosion_overlay_" + var_0 + "_left" );
    level._ID1426["explosion_overlay_" + var_0 + "_bottom"] = _func_155( "vfx/explosion/explosion_overlay_" + var_0 + "_middle" );
    level._ID1426["explosion_overlay_" + var_0 + "_right"] = _func_155( "vfx/explosion/explosion_overlay_" + var_0 + "_right" );
}

setgrenadeexplosionfxoverride( var_0, var_1 )
{
    level._ID1426["explosion_overlay_" + var_0 + "_left"] = _ID42237::_ID16299( "explosion_overlay_" + var_1 + "_left" );
    level._ID1426["explosion_overlay_" + var_0 + "_bottom"] = _ID42237::_ID16299( "explosion_overlay_" + var_1 + "_bottom" );
    level._ID1426["explosion_overlay_" + var_0 + "_right"] = _ID42237::_ID16299( "explosion_overlay_" + var_1 + "_right" );
}

getgrenadeexplosionfx( var_0, var_1 )
{
    var_2 = "explosion_overlay_" + var_1 + "_" + var_0;

    if ( _func_02F( level._ID1426[var_2] ) )
        return level._ID1426[var_2];

    var_2 = "explosion_overlay_default_" + var_0;
    return level._ID1426[var_2];
}

_ID5027()
{
    self waittill( "grenade_fire",  var_1, var_1  );

    if ( !_func_02F( level._ID34439 ) )
        level._ID34439 = 0;

    var_0 thread _unknown_0345();
}

_ID5022()
{
    self._ID37697 = 0;
    var_0 = _func_03D();
    self waittill( "grenade_fire",  var_2, var_2  );

    if ( _func_02F( var_1 ) )
    {
        var_3 = _func_03D();
        var_4 = var_3 - var_0;

        if ( var_4 >= 1250 )
        {
            var_2 waittill( "explode",  var_5  );

            if ( _func_1D0( "null" ) )
                thread _ID42237::_ID27077( "null", var_5 );

            _func_18F( var_5, 96, 300, 200, self, "MOD_UNKNOWN", "flash_grenade" );
        }
    }
}

_ID5008()
{
    for (;;)
    {
        self waittill( "grenade_fire",  var_1, var_0  );

        if ( var_1 == "semtex_grenade" )
        {
            thread _unknown_0369( var_0 );
            var_0 thread _unknown_037A( self );
        }
    }
}

_ID38069( var_0 )
{
    self._ID37697 = 0;

    if ( !_func_02F( level._ID37698 ) )
        level._ID37698 = 1;
    else
        level._ID37698++;

    var_0 waittill( "death" );
    waitframe;
    level._ID37698--;
}

_ID31870( var_0 )
{
    self waittill( "missile_stuck",  var_1  );

    if ( !_func_02F( var_1 ) )
        return;

    if ( var_1._ID172 != "script_vehicle" )
        return;

    var_1._ID18176 = 1;
    self waittill( "explode" );

    if ( !_func_02F( var_1 ) || !_func_1A7( var_1 ) )
        return;

    if ( var_1 _ID42411::_ID20532() || var_1 _ID42413::_ID3628( var_0 ) )
    {
        var_1._ID18176 = undefined;
        return;
    }

    var_1 _meth_8058( var_1._ID740, var_0 );
}

_ID4990()
{
    for (;;)
    {
        self waittill( "grenade_fire",  var_1, var_0  );

        if ( var_1 == "concussion_grenade" )
            thread _unknown_0431( var_0 );
    }
}

_ID38052( var_0 )
{
    self._ID37697 = 0;
    var_0 waittill( "death" );
    _ID42407::_ID34374( 0.1 );
    _ID42407::_ID34375( 0.25 );
    _ID42407::_ID34376( 1 );
    _ID42407::_ID34377( 0.25 );
    _ID42407::_ID34371();
    _func_034( "noflash", "1" );
    wait 0.05;
    _func_034( "noflash", "0" );
    wait 2.0;
    _ID42407::_ID34372();
}

_ID34436()
{
    level._ID34439++;
    wait 50;
    level._ID34439--;
}

_ID5023()
{
    self endon( "death" );
    self waittill( "grenade_fire",  var_1, var_1  );

    if ( var_1 == "fraggrenade" )
        var_0 thread _ID42407::_ID17388();
    else if ( var_1 == "ninebang_grenade" )
        self._ID37689 = 1;

    self._ID37697 = 0;
}

_ID5018()
{
    self endon( "death" );
    _ID42237::_ID41068( "grenade_fire", "weapon_change" );
    self._ID37697 = 0;
}

_ID41478()
{
    for (;;)
    {
        self waittill( "grenade_fire",  var_1, var_0  );

        if ( var_1 == "c4" )
        {
            if ( !self._ID6512.size )
                thread _unknown_0706();

            self._ID6512[self._ID6512.size] = var_0;
            var_0._ID743 = self;
            var_0 thread _unknown_05F5();
            thread _unknown_0557( var_0 );
            var_0 thread _unknown_0633();
        }
    }
}

_ID6514( var_0 )
{
    var_0 waittill( "death" );
    self._ID6512 = _ID42407::_ID3326( self._ID6512, var_0 );
}

_ID41485()
{
    self endon( "spawned_player" );
    self endon( "disconnect" );

    for (;;)
    {
        self waittill( "grenade_fire",  var_1, var_0  );

        if ( var_1 == "claymore" || var_1 == "claymore_mp" )
        {
            var_0._ID743 = self;
            var_0 thread _unknown_0648( 1 );
            var_0 thread _unknown_05D3();
            var_0 thread _unknown_068F();
        }
    }
}

_ID7756( var_0 )
{
    self endon( "death" );
    wait 1;

    if ( _func_02F( level._ID7758 ) )
    {
        self thread [[ level._ID7758 ]]( var_0 );
        return;
    }

    self _meth_8143( var_0, 1 );
    self._ID86 = 2;
    self._ID630 = 750;
    self._ID1204 = -1000;
}

_ID7755()
{
    self endon( "death" );
    self waittill( "missile_stuck" );
    var_0 = 192;

    if ( _func_02F( self._ID10678 ) )
        var_0 = self._ID10678;

    var_1 = _func_06A( "trigger_radius", self._ID740 + ( 0, 0, 0 - var_0 ), 9, var_0, var_0 * 2 );
    thread _unknown_0671( var_1 );

    if ( !_func_02F( level._ID7757 ) )
        level._ID7757 = [];

    level._ID7757 = _ID42237::_ID3293( level._ID7757, self );

    if ( !_ID42407::_ID20614() && level._ID7757.size > 15 )
        level._ID7757[0] _meth_80B7();

    for (;;)
    {
        var_1 waittill( "trigger",  var_2  );

        if ( _func_02F( self._ID743 ) && var_2 == self._ID743 )
            continue;

        if ( _func_1B3( var_2 ) )
            continue;

        if ( var_2 _meth_81E3( self._ID740, self ) > 0 )
        {
            self _meth_80A1( "claymore_activated_SP" );
            wait 0.4;

            if ( _func_02F( self._ID743 ) )
                self _meth_81E2( self._ID743 );
            else
                self _meth_81E2( undefined );

            return;
        }
    }
}

_ID10333( var_0 )
{
    self waittill( "death" );
    level._ID7757 = _ID42407::_ID3326( level._ID7757, self );
    wait 0.05;

    if ( _func_02F( var_0 ) )
        var_0 _meth_80B7();
}

_ID41481()
{
    self endon( "death" );

    for (;;)
    {
        self waittill( "detonate" );
        var_0 = self _meth_831C();

        if ( var_0 == "c4" )
        {
            for ( var_1 = 0; var_1 < self._ID6512.size; var_1++ )
            {
                if ( _func_02F( self._ID6512[var_1] ) )
                    self._ID6512[var_1] thread _unknown_077E( 0.1 );
            }

            self._ID6512 = [];
        }
    }
}

_ID41480()
{
    self endon( "death" );
    self endon( "disconnect" );

    for (;;)
    {
        self waittill( "alt_detonate" );
        var_0 = self _meth_831C();

        if ( var_0 != "c4" )
        {
            var_1 = [];

            for ( var_2 = 0; var_2 < self._ID6512.size; var_2++ )
            {
                var_3 = self._ID6512[var_2];

                if ( _func_02F( self._ID6512[var_2] ) )
                    var_3 thread _unknown_07CA( 0.1 );
            }

            self._ID6512 = var_1;
            self notify( "detonated" );
        }
    }
}

_ID40969( var_0 )
{
    self endon( "death" );
    wait(var_0);
    self _meth_81E2();
}

_ID6513( var_0 )
{
    self._ID486 = 100;
    self _meth_82CA( 1 );
    self._ID626 = 100000;
    self._ID486 = self._ID626;
    var_1 = undefined;

    for (;;)
    {
        self waittill( "damage",  var_1, var_2  );
        break;
    }

    self _meth_80A1( "claymore_activated_SP" );

    if ( level._ID6519 )
        wait(0.1 + _func_0B8( 0.4 ));
    else
        wait 0.05;

    if ( !_func_02F( self ) )
        return;

    level._ID6519 = 1;

    if ( _func_02F( var_0 ) && var_0 && _func_1B3( var_1 ) )
        level._ID48473 = 1;

    thread _unknown_0880();

    if ( _func_1B3( var_1 ) )
        self _meth_81E2( var_1 );
    else
        self _meth_81E2();
}

_ID29770()
{
    wait 0.05;
    level._ID6519 = 0;
    level._ID48473 = 0;
}

_ID30758( var_0, var_1 )
{
    for ( var_2 = 0; var_2 < 60; var_2++ )
        wait 0.05;
}

_ID27192()
{
    self endon( "death" );
    self waittill( "missile_stuck" );
    _func_157( _ID42237::_ID16299( "c4_light_blink" ), self, "tag_fx" );
}

_ID27193()
{
    self endon( "death" );
    self waittill( "missile_stuck" );
    _func_157( _ID42237::_ID16299( "claymore_laser" ), self, "tag_fx" );
}

_ID7921( var_0 )
{
    self waittill( "death" );
    var_0 _meth_80B7();
}

_ID16203( var_0, var_1, var_2, var_3 )
{
    var_4 = [];

    if ( !_func_02F( var_2 ) )
        var_2 = 0;

    if ( !_func_02F( var_3 ) )
        var_3 = 0;

    for ( var_5 = 0; var_5 < level._ID805.size; var_5++ )
    {
        if ( !_func_1A7( level._ID805[var_5] ) || level._ID805[var_5]._ID958 != "playing" )
            continue;

        var_6 = level._ID805[var_5]._ID740 + ( 0, 0, 32 );
        var_7 = _func_0F3( var_0, var_6 );

        if ( var_7 < var_1 && !var_2 || _unknown_09F1( var_0, var_6, var_3, undefined ) )
        {
            var_8 = _func_1A5();
            var_8._ID20856 = 1;
            var_8._ID20651 = 0;
            var_8._ID337 = level._ID805[var_5];
            var_8._ID9618 = var_6;
            var_4[var_4.size] = var_8;
        }
    }

    var_9 = _func_1A2( "grenade", "classname" );

    for ( var_5 = 0; var_5 < var_9.size; var_5++ )
    {
        var_10 = var_9[var_5]._ID740;
        var_7 = _func_0F3( var_0, var_10 );

        if ( var_7 < var_1 && !var_2 || _unknown_0A50( var_0, var_10, var_3, var_9[var_5] ) )
        {
            var_8 = _func_1A5();
            var_8._ID20856 = 0;
            var_8._ID20651 = 0;
            var_8._ID337 = var_9[var_5];
            var_8._ID9618 = var_10;
            var_4[var_4.size] = var_8;
        }
    }

    var_11 = _func_1A2( "destructable", "targetname" );

    for ( var_5 = 0; var_5 < var_11.size; var_5++ )
    {
        var_10 = var_11[var_5]._ID740;
        var_7 = _func_0F3( var_0, var_10 );

        if ( var_7 < var_1 && !var_2 || _unknown_0AAD( var_0, var_10, var_3, var_11[var_5] ) )
        {
            var_8 = _func_1A5();
            var_8._ID20856 = 0;
            var_8._ID20651 = 1;
            var_8._ID337 = var_11[var_5];
            var_8._ID9618 = var_10;
            var_4[var_4.size] = var_8;
        }
    }

    return var_4;
}

_ID41689( var_0, var_1, var_2, var_3 )
{
    var_4 = undefined;
    var_5 = var_1 - var_0;

    if ( _func_0F8( var_5 ) < var_2 * var_2 )
        var_4 = var_1;

    var_6 = _func_119( var_5 );
    var_4 = var_0 + ( var_6[0] * var_2, var_6[1] * var_2, var_6[2] * var_2 );
    var_7 = _func_06D( var_4, var_1, 0, var_3 );

    if ( _func_03A( "scr_damage_debug" ) != 0 )
    {
        if ( var_7["fraction"] == 1 )
            thread _unknown_0B78( var_4, var_1, ( 1, 1, 1 ) );
        else
        {
            thread _unknown_0B90( var_4, var_7["position"], ( 1, 0.9, 0.8 ) );
            thread _unknown_0BA5( var_7["position"], var_1, ( 1, 0.4, 0.3 ) );
        }
    }

    return var_7["fraction"] == 1;
}

_ID9630( var_0, var_1, var_2, var_3, var_4, var_5, var_6 )
{
    if ( self._ID20856 )
    {
        self._ID9643 = var_5;
        self._ID337 thread [[ level._ID6657 ]]( var_0, var_1, var_2, 0, var_3, var_4, var_5, var_6, "none", 0 );
    }
    else
    {
        if ( self._ID20651 && var_4 == "artillery_mp" || var_4 == "claymore_mp" )
            return;

        self._ID337 notify( "damage",  var_2, var_1  );
    }
}

_ID10028( var_0, var_1, var_2 )
{
    for ( var_3 = 0; var_3 < 600; var_3++ )
        wait 0.05;
}

_ID25856( var_0, var_1, var_2, var_3 )
{
    self endon( "death" );

    switch ( var_1 )
    {

    }

    default:
}

_ID41479()
{
    self endon( "death" );
    self endon( "disconnect" );
    self endon( "detonated" );
    level endon( "game_ended" );
    var_0 = 0;

    for (;;)
    {
        if ( self _meth_8347() )
        {
            var_0 = 0;

            while ( self _meth_8347() )
            {
                var_0 += 0.05;
                wait 0.05;
            }

            if ( var_0 >= 0.5 )
                continue;

            var_0 = 0;

            while ( !self _meth_8347() && var_0 < 0.5 )
            {
                var_0 += 0.05;
                wait 0.05;
            }

            if ( var_0 >= 0.5 )
                continue;

            if ( !self._ID6512.size )
                return;

            self notify( "alt_detonate" );
        }

        wait 0.05;
    }
}
