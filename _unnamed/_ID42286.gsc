// H2 PC GSC
// Decompiled by https://github.com/xensik/gsc-tool

_ID19908()
{
    if ( _func_039( "debug_drones" ) == "" )
        _func_034( "debug_drones", "0" );

    if ( !_func_02F( level._ID22616 ) )
        level._ID11917 = 200;

    if ( !_func_02F( level._ID23042 ) )
        level._ID23042 = [];

    if ( !_func_02F( level._ID23042["allies"] ) )
        level._ID23042["allies"] = 99999;

    if ( !_func_02F( level._ID23042["axis"] ) )
        level._ID23042["axis"] = 99999;

    if ( !_func_02F( level._ID23042["team3"] ) )
        level._ID23042["team3"] = 99999;

    if ( !_func_02F( level._ID23042["neutral"] ) )
        level._ID23042["neutral"] = 99999;

    if ( !_func_02F( level._ID12061 ) )
        level._ID12061 = [];

    if ( !_func_02F( level._ID12061["allies"] ) )
        level._ID12061["allies"] = _ID42407::_ID36709();

    if ( !_func_02F( level._ID12061["axis"] ) )
        level._ID12061["axis"] = _ID42407::_ID36709();

    if ( !_func_02F( level._ID12061["team3"] ) )
        level._ID12061["team3"] = _ID42407::_ID36709();

    if ( !_func_02F( level._ID12061["neutral"] ) )
        level._ID12061["neutral"] = _ID42407::_ID36709();

    level._ID11971 = ::_unknown_0137;
}

_ID11876()
{
    if ( level._ID12061[self._ID1194]._ID3291.size >= level._ID23042[self._ID1194] )
    {
        self _meth_80B7();
        return;
    }

    thread _unknown_0176( self );
    level notify( "new_drone" );
    self _meth_82CA( 1 );
    _ID42288::_ID11867();

    if ( _func_02F( self._ID31153 ) )
        return;

    thread _unknown_01A6();

    if ( _func_02F( self._ID1191 ) )
    {
        if ( !_func_02F( self._ID31299 ) )
            thread _unknown_040D();
        else
            thread _unknown_03E0();
    }

    if ( _func_02F( self._ID31276 ) && self._ID31276 == 0 )
        return;

    thread _unknown_02E4();
}

_ID11817( var_0 )
{
    _ID42407::_ID36712( level._ID12061[var_0._ID1194], var_0 );
    var_1 = var_0._ID1194;
    var_0 waittill( "death" );

    if ( _func_02F( var_0 ) && _func_02F( var_0._ID36708 ) )
        _ID42407::_ID36714( level._ID12061[var_1], var_0._ID36708 );
    else
        _ID42407::_ID36715( level._ID12061[var_1] );
}

_ID11838()
{
    _unknown_027A();

    if ( !_func_02F( self ) )
        return;

    var_0 = "stand";

    if ( _func_02F( self._ID3203 ) && _func_02F( level._ID11813[self._ID1194][self._ID3203] ) && _func_02F( level._ID11813[self._ID1194][self._ID3203]["death"] ) )
        var_0 = self._ID3203;

    var_1 = level._ID11813[self._ID1194][var_0]["death"];

    if ( _func_02F( self._ID9813 ) )
        var_1 = self._ID9813;

    self notify( "death" );

    if ( _func_02F( level._ID11837 ) )
    {
        self thread [[ level._ID11837 ]]( var_1 );
        return;
    }

    if ( !_func_02F( self._ID24924 ) && _func_02F( self._ID34237 ) )
    {
        if ( _func_02F( self._ID24924 ) )
            _unknown_0321( var_1, "deathplant" );
        else if ( _func_02F( self._ID34237 ) )
        {
            self _meth_8023();
            _unknown_0339( var_1, "deathplant" );
        }
        else
        {
            _unknown_0345( var_1, "deathplant" );
            self _meth_8023();
        }
    }

    self _meth_82C9();
    thread _unknown_0339( 2 );

    if ( _func_02F( self ) && _func_02F( self._ID24866 ) )
        return;

    wait 10;

    while ( _func_02F( self ) )
    {
        if ( !_ID42237::_ID41802( level._ID794._ID740, level._ID794._ID65, self._ID740, 0.5 ) )
            self _meth_80B7();

        wait 5;
    }
}

_ID11926()
{
    self endon( "death" );

    for (;;)
    {
        while ( !_func_02F( self._ID256 ) || !self._ID256 )
            wait 0.05;

        var_0 = self._ID486;
        self._ID486 = 100000;

        while ( _func_02F( self._ID256 ) && self._ID256 )
            wait 0.05;

        self._ID486 = var_0;
        wait 0.05;
    }
}

_ID12017()
{
    self endon( "death" );

    while ( _func_02F( self ) )
    {
        self waittill( "damage" );

        if ( _func_02F( self._ID256 ) && self._ID256 )
        {
            self._ID486 = 100000;
            continue;
        }

        if ( self._ID486 <= 0 )
            break;
    }
}

_ID12000( var_0 )
{
    wait(var_0);

    if ( _func_02F( self ) )
        self _meth_8000();
}
#using_animtree("generic_human");

_ID11938( var_0, var_1 )
{
    if ( _func_02F( self._ID11919 ) )
        self [[ self._ID11920 ]]( var_0, var_1 );
    else
    {
        self _meth_814C( %body, 0.2 );
        self _meth_814B();
        self _meth_8119( "drone_anim", var_0, %body, 1, 0.2, var_1 );
        self._ID12026 = var_0;
    }
}

_ID11939( var_0, var_1 )
{
    if ( self._ID1244 == "human" )
        self _meth_814C( %body, 0.2 );

    self _meth_814B();
    var_2 = "normal";

    if ( _func_02F( var_1 ) )
        var_2 = "deathplant";

    var_3 = "drone_anim";
    self _meth_8148( var_3, self._ID740, self._ID65, var_0, var_2 );
    self waittillmatch( "drone_anim",  "end"  );
}

_ID11846()
{
    if ( !_func_02F( self ) )
        return;

    self waittill( "death" );

    if ( !_func_02F( self ) )
        return;

    var_0 = _func_043( self._ID1302 );
    var_1 = self._ID1302;

    if ( _func_02F( var_0 ) )
    {
        _ID42407::_ID10616( self._ID1302 );
        self _meth_802A( var_0, "tag_weapon_right" );
        var_2 = self _meth_818C( "tag_weapon_right" );
        var_3 = self _meth_818D( "tag_weapon_right" );
        var_4 = _func_06A( "weapon_" + var_1, ( 0, 0, 0 ) );
        var_4._ID65 = var_3;
        var_4._ID740 = var_2;
    }
}

_ID11962( var_0 )
{
    if ( _func_02F( anim._ID3277[var_0] ) )
    {
        var_1 = anim._ID3277[var_0]["idle"]["stand"][0];
        var_1 = _ID42237::_ID3296( var_1, anim._ID3277[var_0]["idle"]["stand"][1] );
        var_2 = anim._ID3277[var_0]["idle"]["stand"][0][0];
        self._ID11814 = var_2;
        self._ID11815 = var_1;
        self._ID11872 = 1;
        self._ID11873 = ::_unknown_0596;
        thread _unknown_05CB( undefined, undefined );
    }
}

_ID11816()
{
    self endon( "death" );
    var_0 = 10;

    if ( !_func_02F( self._ID11815 ) || !_func_0D3( self._ID11815 ) )
        return;

    self _meth_814C( %body, 0.2 );
    self _meth_814B();
    var_1 = 1;
    animscripts\face::_ID28062( undefined, "idle", undefined );

    for (;;)
    {
        var_2 = _ID42237::_ID28945( self._ID11815 );

        if ( _func_0B7( 100 ) < var_0 || var_1 )
        {
            self _meth_8119( "drone_anim", var_2, %body, 1, 0.2, 1 );
            var_1 = 0;
        }

        self waittillmatch( "drone_anim",  "end"  );
        self _meth_8119( "drone_anim", self._ID11814, %body, 1, 0.2, 1 );
    }
}

_ID11871( var_0, var_1 )
{
    if ( _func_02F( self._ID11872 ) )
        [[ self._ID11873 ]]();
    else if ( _func_02F( var_0 ) && _func_02F( var_0["script_noteworthy"] ) && _func_02F( level._ID11813[self._ID1194][var_0["script_noteworthy"]] ) )
        thread _unknown_06C5( var_0["script_noteworthy"], var_0, var_1 );
    else
    {
        if ( _func_02F( self._ID19324 ) )
        {
            _unknown_060A( self._ID19324, 1 );
            return;
        }

        _unknown_061F( level._ID11813[self._ID1194]["stand"]["idle"], 1 );
    }
}

_ID11865( var_0, var_1 )
{
    var_2 = var_1["script_noteworthy"];

    if ( !_func_02F( level._ID11813[self._ID1194][var_2]["arrival"] ) )
        return var_0;

    var_3 = _func_094( level._ID11813[self._ID1194][var_2]["arrival"], 0, 1 );
    var_3 = _func_0F6( var_3 );
    var_0 -= var_3;
    return var_0;
}

_ID11853( var_0, var_1, var_2 )
{
    self endon( "death" );
    self endon( "stop_drone_fighting" );
    self._ID3203 = var_0;
    self._ID41709 = undefined;
    var_3 = _func_0B9( 1, 4 );

    if ( self._ID1194 == "axis" )
    {
        if ( var_3 == 1 )
            self._ID41709 = "h2_wpn_berretta_m9_npc_close";
        else if ( var_3 == 2 )
            self._ID41709 = "h2_wpn_usp_npc_close";

        if ( var_3 == 3 )
            self._ID41709 = "h2_wpn_m4a1_npc_close";
    }
    else
    {
        if ( var_3 == 1 )
            self._ID41709 = "h2_wpn_berretta_m9_npc_close";
        else if ( var_3 == 2 )
            self._ID41709 = "h2_wpn_usp_npc_close";

        if ( var_3 == 3 )
            self._ID41709 = "h2_wpn_m4a1_npc_close";
    }

    self._ID65 = ( 0, self._ID65[1], self._ID65[2] );

    if ( var_0 == "coverprone" )
        self _meth_82B8( self._ID740 + ( 0, 0, 8 ), 0.05 );

    self._ID24924 = 1;
    var_4 = level._ID11813[self._ID1194][var_0];
    self._ID9813 = var_4["death"];

    while ( _func_02F( self ) )
    {
        _unknown_0735( var_4["idle"][_func_0B7( var_4["idle"].size )] );

        if ( _ID42237::_ID8201() && !_func_02F( self._ID507 ) )
        {
            var_5 = 1;

            if ( _func_02F( var_4["pop_up_chance"] ) )
                var_5 = var_4["pop_up_chance"];

            var_5 *= 100;
            var_6 = 1;

            if ( _func_0B8( 100 ) > var_5 )
                var_6 = 0;

            if ( var_6 == 1 )
            {
                _unknown_0774( var_4["hide_2_aim"] );
                wait(_func_067( var_4["hide_2_aim"] ) - 0.5);
            }

            if ( _func_02F( var_4["fire"] ) )
            {
                if ( var_0 == "coverprone" && var_6 == 1 )
                    thread _unknown_078F( var_4["fire_exposed"], 1 );
                else
                    thread _unknown_079E( var_4["fire"], 1 );

                _unknown_08F0();
            }
            else
            {
                _unknown_0927();
                wait 0.15;
                _unknown_092F();
                wait 0.15;
                _unknown_0938();
                wait 0.15;
                _unknown_0940();
            }

            if ( var_6 == 1 )
                _unknown_07E6( var_4["aim_2_hide"] );

            _unknown_07F0( var_4["reload"] );
        }
    }
}

_ID11858()
{
    self endon( "death" );

    if ( _ID42237::_ID8201() )
    {
        _unknown_096C();
        wait 0.1;
        _unknown_0974();
        wait 0.1;
        _unknown_097D();

        if ( _ID42237::_ID8201() )
        {
            wait 0.1;
            _unknown_098A();
        }

        if ( _ID42237::_ID8201() )
        {
            wait 0.1;
            _unknown_0998();
            wait 0.1;
            _unknown_09A0();
            wait 0.1;
        }

        if ( _ID42237::_ID8201() )
            wait(_func_0BA( 1, 2 ));
    }
    else
    {
        _unknown_09B5();
        wait(_func_0BA( 0.25, 0.75 ));
        _unknown_09C3();
        wait(_func_0BA( 0.15, 0.75 ));
        _unknown_09D1();
        wait(_func_0BA( 0.15, 0.75 ));
        _unknown_09E0();
        wait(_func_0BA( 0.15, 0.75 ));
    }
}

_ID11965()
{
    self endon( "death" );
    self notify( "firing" );
    self endon( "firing" );
    _unknown_0A13();
    var_0 = %exposed_crouch_shoot_auto_v2;
    self _meth_814F( var_0, 1, 0.2, 1.0 );
    _ID42237::_ID10192( 0.25, ::_meth_814C, var_0, 0 );
}

_ID11968()
{
    var_0 = _ID42237::_ID16299( "pdrone_flash_wv" );

    if ( self._ID1194 == "allies" )
        var_0 = _ID42237::_ID16299( "pdrone_flash_wv" );

    if ( _func_02F( self._ID24614 ) )
        var_0 = _ID42237::_ID16299( self._ID24614 );

    if ( !_func_02F( self._ID24897 ) )
        thread _unknown_0A80( self._ID41709 );

    _func_157( var_0, self, "tag_flash" );
}

_ID11940( var_0 )
{
    self _meth_80A1( var_0 );
}

_ID12018()
{
    self endon( "death" );
    self waittill( "move" );
    thread _unknown_0AD8();
}

_ID15564( var_0 )
{
    var_1 = 170;
    var_2 = 1;
    var_3 = _func_067( var_0 );
    var_4 = _func_094( var_0, 0, 1 );
    var_5 = _func_0F6( var_4 );

    if ( var_3 > 0 && var_5 > 0 )
    {
        var_1 = var_5 / var_3;
        var_2 = 0;
    }

    if ( _func_02F( self._ID11949 ) )
        var_1 = self._ID11949;

    var_6 = _func_1A5();
    var_6._ID3079 = var_2;
    var_6._ID30394 = var_1;
    var_6._ID3143 = var_3;
    return var_6;
}

_ID11864()
{
    var_0 = _unknown_0C7A( self._ID1191, self._ID740 );
    var_1 = var_0[var_0.size - 2]["target"];
    var_2 = _func_0C8( var_1, "targetname" );

    if ( !_func_02F( var_2 ) )
    {
        var_3 = _func_20D( var_0[var_0.size - 1]["origin"], var_0[var_0.size - 1]["origin"] );
        var_2 = var_3[var_3.size - 1];
    }

    return var_2;
}

_ID11928()
{
    self endon( "death" );
    self endon( "drone_stop" );
    wait 0.05;
    var_0 = _unknown_0CCE( self._ID1191, self._ID740 );
    var_1 = level._ID11813[self._ID1194]["stand"]["run"];

    if ( _func_02F( self._ID30407 ) )
        var_1 = self._ID30407;

    var_2 = _unknown_0B70( var_1 );
    var_3 = var_2._ID30394;
    var_4 = var_2._ID3079;

    if ( _func_02F( self._ID11929 ) )
    {
        var_2 = [[ self._ID11929 ]]();

        if ( _func_02F( var_2 ) )
        {
            var_1 = var_2._ID30407;
            var_3 = var_2._ID30394;
            var_4 = var_2._ID3079;
        }

        var_2 = undefined;
    }

    if ( !var_4 )
        thread _unknown_0CF3( var_3 );

    _unknown_0A00( var_1, self._ID24424 );
    var_5 = 0.5;
    var_6 = 0;
    self._ID36115 = 1;
    self._ID9410 = var_0[var_6];
    var_7 = 0;
    var_8 = undefined;

    for (;;)
    {
        if ( !_func_02F( var_0[var_6] ) )
            break;

        var_9 = var_0[var_6]["vec"];
        var_10 = self._ID740 - var_0[var_6]["origin"];
        var_11 = _func_0FB( _func_119( var_9 ), var_10 );

        if ( !_func_02F( var_0[var_6]["dist"] ) )
            break;

        var_12 = var_11 + level._ID11917;

        while ( var_12 > var_0[var_6]["dist"] )
        {
            var_12 -= var_0[var_6]["dist"];
            var_6++;
            self._ID9410 = var_0[var_6];

            if ( _func_02F( var_8 ) )
            {
                if ( var_6 == 0 )
                {

                }

                if ( !_func_02F( self._ID4975 ) )
                    self._ID4975 = self._ID12026;

                var_13 = level._ID11813[self._ID1194]["stairs"][var_8];
                _unknown_0AAF( var_13, self._ID24424 );
                var_7 = 1;
            }

            if ( !_func_02F( var_0[var_6]["dist"] ) )
            {
                self _meth_82BF( _func_11A( var_0[var_0.size - 1]["vec"] ), var_5 );
                var_14 = _func_0F3( self._ID740, var_0[var_0.size - 1]["origin"] );
                var_15 = var_14 / var_3 * self._ID24424;
                var_16 = var_0[var_0.size - 1]["origin"] + ( 0, 0, 100 );
                var_17 = var_0[var_0.size - 1]["origin"] - ( 0, 0, 100 );
                var_18 = _func_091( var_16, var_17 );

                if ( _func_039( "debug_drones" ) == "1" )
                {
                    thread _ID42237::_ID11707( var_16, var_17, 1, 1, 1, var_5 );
                    thread _ID42237::_ID11707( self._ID740, var_18, 0, 0, 1, var_5 );
                }

                self _meth_82B8( var_18, var_15 );
                wait(var_15);
                self notify( "goal" );
                thread _unknown_0F6A();
                thread _unknown_0BF7( var_0[var_0.size - 1], var_18 );
                return;
            }

            if ( !_func_02F( var_0[var_6] ) )
            {
                self notify( "goal" );
                thread _unknown_0C0A();
                return;
            }
        }

        if ( _func_02F( self._ID11929 ) )
        {
            var_2 = [[ self._ID11929 ]]();

            if ( _func_02F( var_2 ) )
            {
                if ( var_2._ID30407 != var_1 )
                {
                    var_1 = var_2._ID30407;
                    var_3 = var_2._ID30394;
                    var_4 = var_2._ID3079;

                    if ( !var_4 )
                        thread _unknown_0EA3( var_3 );
                    else
                        self notify( "drone_move_z" );

                    _unknown_0BBB( var_1, self._ID24424 );
                }
            }
        }

        self._ID9410 = var_0[var_6];
        var_19 = var_0[var_6]["vec"] * var_12;
        var_19 += var_0[var_6]["origin"];
        var_20 = var_19;
        var_16 = var_20 + ( 0, 0, 100 );
        var_17 = var_20 - ( 0, 0, 100 );
        var_20 = _func_091( var_16, var_17 );

        if ( !var_4 )
            self._ID11915 = var_20;

        if ( _func_039( "debug_drones" ) == "1" )
        {
            thread _ID42237::_ID11707( var_16, var_17, 1, 1, 1, var_5 );
            thread _unknown_101F( var_20, 1, 0, 0, 16, var_5 );
        }

        var_21 = _func_11A( var_20 - self._ID740 );
        self _meth_82BF( ( 0, var_21[1], 0 ), var_5 );
        var_22 = var_3 * var_5 * self._ID24424;
        var_23 = _func_119( var_20 - self._ID740 );
        var_19 = var_23 * var_22;
        var_19 += self._ID740;

        if ( _func_039( "debug_drones" ) == "1" )
            thread _ID42237::_ID11707( self._ID740, var_19, 0, 0, 1, var_5 );

        self _meth_82B8( var_19, var_5 );
        wait(var_5);

        if ( _func_02F( self._ID9410["script_noteworthy"] ) && self._ID9410["script_noteworthy"] == "stairs_start_up" || self._ID9410["script_noteworthy"] == "stairs_start_down" )
        {
            var_24 = _func_129( self._ID9410["script_noteworthy"], "_" );
            var_8 = var_24[2];
            continue;
        }

        if ( var_7 == 1 )
        {
            if ( _func_02F( self._ID9410["script_noteworthy"] ) && self._ID9410["script_noteworthy"] == "stairs_end" )
            {
                var_25 = self._ID4975;
                _unknown_0CDB( var_25, self._ID24424 );
                var_7 = 0;
                var_8 = undefined;
            }
        }
    }

    thread _unknown_0D7F();
}

_ID11931( var_0 )
{
    self endon( "death" );
    self endon( "drone_stop" );
    self notify( "drone_move_z" );
    self endon( "drone_move_z" );
    var_1 = 0.05;

    for (;;)
    {
        if ( _func_02F( self._ID11915 ) && var_0 > 0 )
        {
            var_2 = self._ID11915[2] - self._ID740[2];
            var_3 = _func_0F4( self._ID11915, self._ID740 );
            var_4 = var_3 / var_0;

            if ( var_4 > 0 && var_2 != 0 )
            {
                var_5 = _func_0C3( var_2 ) / var_4;
                var_6 = var_5 * var_1;

                if ( var_2 >= var_5 )
                    self._ID740 = ( self._ID740[0], self._ID740[1], self._ID740[2] + var_6 );
                else if ( var_2 <= var_5 * -1 )
                    self._ID740 = ( self._ID740[0], self._ID740[1], self._ID740[2] - var_6 );
            }
        }

        wait(var_1);
    }
}

_ID16511( var_0, var_1 )
{
    var_2 = 1;
    var_3 = [];
    var_3[0]["origin"] = var_1;
    var_3[0]["dist"] = 0;
    var_4 = undefined;
    var_4 = var_0;
    var_5["entity"] = _ID42372::_ID16013;
    var_5["node"] = _ID42372::_ID16015;
    var_5["vehicle_node"] = _ID42372::_ID53485;
    var_5["struct"] = _ID42372::_ID16017;
    var_6 = undefined;
    var_7 = [[ var_5["entity"] ]]( var_4 );
    var_8 = [[ var_5["node"] ]]( var_4 );
    var_9 = [[ var_5["vehicle_node"] ]]( var_4 );
    var_10 = [[ var_5["struct"] ]]( var_4 );

    if ( var_7.size )
        var_6 = "entity";
    else if ( var_8.size )
        var_6 = "node";
    else if ( var_9.size )
        var_6 = "vehicle_node";
    else if ( var_10.size )
        var_6 = "struct";

    var_11 = var_3.size;

    for (;;)
    {
        var_12 = [[ var_5[var_6] ]]( var_4 );
        var_13 = _ID42237::_ID28945( var_12 );

        if ( !_func_02F( var_13 ) )
            break;

        var_11 = var_3.size;
        var_14 = var_13._ID740;

        if ( _func_02F( var_13._ID851 ) )
        {
            if ( !_func_02F( self._ID12060 ) )
                self._ID12060 = -1 + _func_0B8( 2 );

            if ( !_func_02F( var_13._ID65 ) )
                var_13._ID65 = ( 0, 0, 0 );

            var_15 = _func_11F( var_13._ID65 );
            var_16 = _func_11E( var_13._ID65 );
            var_17 = _func_11D( var_13._ID65 );
            var_18 = ( 0, self._ID12060 * var_13._ID851, 0 );
            var_14 += var_15 * var_18[0];
            var_14 += var_16 * var_18[1];
            var_14 += var_17 * var_18[2];
        }

        var_3[var_11]["origin"] = var_14;
        var_3[var_11]["target"] = var_13._ID1191;

        if ( _func_02F( self._ID31388 ) && self._ID31388 == "use_last_node_angles" && _func_02F( var_13._ID65 ) )
            var_3[var_11]["angles"] = var_13._ID65;

        if ( _func_02F( var_13._ID922 ) )
            var_3[var_11]["script_noteworthy"] = var_13._ID922;

        if ( _func_02F( var_13._ID920 ) )
            var_3[var_11]["script_linkname"] = var_13._ID920;

        var_3[var_11 - 1]["dist"] = _func_0F3( var_3[var_11]["origin"], var_3[var_11 - 1]["origin"] );
        var_3[var_11 - 1]["vec"] = _func_119( var_3[var_11]["origin"] - var_3[var_11 - 1]["origin"] );

        if ( !_func_02F( var_3[var_11 - 1]["target"] ) )
            var_3[var_11 - 1]["target"] = var_13._ID1193;

        if ( !_func_02F( var_3[var_11 - 1]["script_noteworthy"] ) && _func_02F( var_13._ID922 ) )
            var_3[var_11 - 1]["script_noteworthy"] = var_13._ID922;

        if ( !_func_02F( var_3[var_11 - 1]["script_linkname"] ) && _func_02F( var_13._ID920 ) )
            var_3[var_11 - 1]["script_linkname"] = var_13._ID920;

        if ( !_func_02F( var_13._ID1191 ) )
            break;

        var_4 = var_13._ID1191;
    }

    if ( _func_02F( self._ID31388 ) && self._ID31388 == "use_last_node_angles" && _func_02F( var_3[var_11]["angles"] ) )
        var_3[var_11]["vec"] = _func_11F( var_3[var_11]["angles"] );
    else
        var_3[var_11]["vec"] = var_3[var_11 - 1]["vec"];

    var_13 = undefined;
    return var_3;
}

_ID11716( var_0, var_1, var_2, var_3, var_4, var_5 )
{
    var_6 = var_0 + ( var_4, 0, 0 );
    var_7 = var_0 - ( var_4, 0, 0 );
    thread _ID42237::_ID11707( var_6, var_7, var_1, var_2, var_3, var_5 );
    var_6 = var_0 + ( 0, var_4, 0 );
    var_7 = var_0 - ( 0, var_4, 0 );
    thread _ID42237::_ID11707( var_6, var_7, var_1, var_2, var_3, var_5 );
    var_6 = var_0 + ( 0, 0, var_4 );
    var_7 = var_0 - ( 0, 0, var_4 );
    thread _ID42237::_ID11707( var_6, var_7, var_1, var_2, var_3, var_5 );
}

_ID7353()
{
    if ( !_func_02F( self ) )
        return;

    if ( !_func_02F( self._ID922 ) )
        return;

    switch ( self._ID922 )
    {

    }

    case "delete_on_goal":
    case "die_on_goal":
}
