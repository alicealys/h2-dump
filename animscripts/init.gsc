// H2 PC GSC
// Decompiled by https://github.com/xensik/gsc-tool

_ID20021( var_0 )
{
    self._ID1312[var_0] = _func_1A5();
    self._ID1312[var_0]._ID811 = "none";
    self._ID1312[var_0]._ID18214 = 1;

    if ( _func_0E3( var_0 ) != "" )
        self._ID1312[var_0]._ID39925 = 1;
    else
        self._ID1312[var_0]._ID39925 = 0;
}

_ID21003( var_0 )
{
    return _func_02F( self._ID1312[var_0] );
}

_ID32639()
{
    anim._ID8868 = 55;
    anim._ID2440 = 10;
    anim._ID2438 = 4096;
    anim._ID2439 = 45;
    anim._ID2430 = 20;
    anim._ID44892 = 6400;
    anim._ID51480 = 30;
    anim._ID26214 = 25;
    anim._ID26212 = anim._ID2438;
    anim._ID26213 = anim._ID2439;
    anim._ID26206 = 30;
    anim._ID23081 = 65;
    anim._ID23080 = 65;
}

_ID13282()
{
    if ( animscripts\utility::_ID20902( self._ID949 ) )
        return 1;

    if ( _func_1BE( self._ID834 ) == "rocketlauncher" )
        return 1;

    return 0;
}
#using_animtree("generic_human");

_ID616()
{
    self._ID7 = _func_1A5();
    self._ID7._ID21758 = 0;
    self._ID834 = self._ID1302;
    _unknown_03C5();

    if ( !_func_02F( self._ID834 ) || self._ID834 == "" )
        self._ID834 = "none";

    if ( self._ID949 == "" )
        self._ID949 = "none";

    if ( self._ID34144 == "" )
        self._ID34144 = "none";

    _unknown_00E2( self._ID834 );
    _unknown_00E9( self._ID949 );
    _unknown_00F0( self._ID34144 );
    self _meth_817F();
    self._ID7._ID41701["left"] = "none";
    self._ID7._ID41701["right"] = "none";
    self._ID7._ID41701["chest"] = "none";
    self._ID7._ID41701["back"] = "none";
    self._ID7._ID41702["left"] = "none";
    self._ID7._ID41702["right"] = "none";
    self._ID7._ID41702["chest"] = "none";
    self._ID7._ID41702["back"] = "none";
    self._ID22034 = self._ID1302;
    self._ID30178 = %animscript_root;
    thread _unknown_05EB();
    var_0 = animscripts\utility::_ID39993();
    self._ID7._ID24729 = var_0;

    if ( var_0 )
        thread animscripts\shared::_ID30318();

    self._ID7._ID30103 = 3;
    self._ID7._ID30106 = 1;
    self._ID7._ID28253 = "stand";
    self._ID7._ID17423 = "stand";
    self._ID7._ID24414 = "stop";
    self._ID7._ID36185 = "stop";
    self._ID7._ID35357 = "none";
    self._ID7._ID17524 = "none";
    self._ID7._ID28534 = -1;
    self._ID309 = 1;
    self._ID23656 = 750;
    animscripts\shared::_ID26732( self._ID834, "right" );

    if ( animscripts\utility::_ID20902( self._ID949 ) )
        animscripts\shared::_ID26732( self._ID949, "back" );

    self._ID7._ID24711 = 0;
    self._ID7._ID8365 = _func_03D();
    self._ID7._ID21921 = _func_03D();
    self._ID7._ID36843 = 0;
    self._ID7._ID11035 = !self _meth_8147();
    self._ID7._ID22617 = 0;
    self._ID7._ID26210 = 0;
    self._ID7._ID21978 = 0;
    self._ID7._ID24783 = 0;
    self._ID7._ID29139 = undefined;
    _func_036( "ai_reactToBulletChance", 0.8 );
    _func_036( "ai_reactToBulletCooldown", 5000 );

    if ( self._ID1194 != "allies" )
        self._ID18169 = 1;

    self._ID7._ID28304 = undefined;
    self._ID7._ID35573 = "stand";
    self._ID7497 = animscripts\utility::_ID7496;
    self._ID1363 = 0;
    self._ID1502 = 0;
    thread _unknown_0571();
    self._ID4867 = 1;
    self._ID7._ID23782 = 0;
    self._ID7._ID24881 = 0;
    self._ID7._ID23782 = 0;
    self._ID7._ID23784 = 0;
    self._ID7._ID11043 = 0;
    self._ID1759 = 1;
    self._ID7336 = 0;
    self._ID34156 = 0;
    self._ID34155 = 1;
    self._ID24704 = 1;
    self._ID10147 = 55;
    self._ID7._ID24800 = 0;

    if ( !_func_02F( self._ID31213 ) )
        self._ID31213 = 0;

    _unknown_05A6();
    animscripts\weaponlist::_ID29364();
    self._ID21920 = 0;
    self._ID8376 = 0;
    self._ID36839 = 0;
    self._ID36842 = 0;

    if ( self._ID1194 == "allies" )
        self._ID36847 = 0.5;
    else
        self._ID36847 = 0;

    if ( self._ID1194 == "allies" )
        thread _unknown_0466();

    if ( self._ID1194 == "allies" )
        self._ID28963 = 0;
    else
        self._ID28963 = 256;

    self._ID2938 = 8000;
    self._ID2939 = 0;
    animscripts\animset::_ID33414();
    self._ID13288 = [];
    self._ID13288["corner"] = 1;
    self._ID13288["cover_crouch"] = 1;
    self._ID13288["stop"] = 1;
    self._ID13288["stop_immediate"] = 1;
    self._ID13288["move"] = 1;
    self._ID13288["exposed"] = 1;
    self._ID13288["corner_normal"] = 1;
    var_1 = _func_1D9( self._ID13288 );

    for ( var_2 = 0; var_2 < var_1.size; var_2++ )
        _ID42237::_ID7866( var_1[var_2] );

    self._ID29050 = 0;
    thread _unknown_0600();
    self._ID33932 = 0;

    if ( _func_02F( level._ID53529 ) && level._ID53529 )
    {
        self._ID11002 = undefined;
        self._ID10902 = 1;
    }
    else
        self._ID11002 = 1;

    self._ID24936 = 1;

    if ( _func_02F( level._ID51158 ) )
    {
        if ( _func_02F( level._ID51158[self._ID1194] ) )
            self._ID24936 = !level._ID51158[self._ID1194];
    }

    self._ID54135 = _func_1A5();
    self._ID54135._ID894 = 45;
    self._ID54135._ID590 = -45;
    self._ID54135._ID1252 = 35;
    self._ID54135._ID307 = -35;
    self._ID50389 = _func_1A5();
    self._ID50389._ID894 = 45;
    self._ID50389._ID590 = -45;
    self._ID47383 = 1;

    if ( !_func_02F( level._ID11039 ) )
        thread animscripts\combat_utility::_ID24161();

    thread _unknown_08A4();
    thread _unknown_0595();
}

updateignoreplayersuppression( var_0 )
{
    self endon( "entitydeleted" );
    self endon( "death" );

    if ( !_func_03A( "ai_ignoreFriendlyPlayerSuppressionWhenPassive" ) )
        return;

    if ( !_func_02F( var_0 ) || var_0 )
    {
        switch ( level._ID912 )
        {

        }
    }

    for (;;)
    {
        self._ID514 = !animscripts\utility::_ID20775( 0 );
        waittillframeend;
    }

    case "oilrig":
    case "gulag":
    default:
}

_ID54191( var_0 )
{
    for (;;)
    {
        if ( !_func_02F( var_0 ) )
        {
            if ( _func_02F( self ) )
            {
                self _meth_814C( %actor_ik_move_root, 0 );
                self _meth_814C( %stand_exposed_ik_add, 0 );
            }

            break;
        }

        waittillframeend;
    }
}

_ID50926()
{
    self endon( "death" );
    thread _unknown_0605( thisthread );
    var_0 = -30;
    var_1 = -0.35;
    self _meth_8156( %actor_ik_move_root, 0 );
    self _meth_8156( %stand_exposed_ik_add, 1 );
    var_2 = 0;

    for (;;)
    {
        self waittill( "actorik",  var_9, var_8, var_7, var_6, var_5, var_4, var_3  );

        if ( var_3 <= 0.01 )
        {
            if ( var_2 == 0 )
            {
                self _meth_8156( %actor_ik_move_root, 0 );
                var_2 = 1;
            }

            continue;
        }

        var_6 *= -1;
        var_10 = var_0;

        if ( _func_0F9( self._ID1283 ) > 0.01 )
            var_10 = -10;

        var_11 = 0;
        var_12 = 1;

        if ( var_8[2] < var_1 && var_6[2] < var_1 )
        {
            var_13 = _func_11F( self._ID65 );
            var_14 = _func_0FB( var_13, var_8 );
            var_15 = _func_0FB( var_13, var_6 );

            if ( var_14 < 0 && var_15 < 0 )
                var_12 = 0;
        }

        if ( var_12 )
        {
            var_16 = 8;
            var_17 = 8;

            if ( var_4 )
                var_17 = 5;

            if ( var_5 )
                var_16 = 5;

            var_18[0] = var_9;
            var_18[1] = var_9 + var_8 * var_16;
            var_18[2] = var_7;
            var_18[3] = var_7 + var_6 * var_17;
            var_19[0] = 1;
            var_19[1] = 1;
            var_19[2] = 1;
            var_19[3] = 1;
            var_20[0] = _func_0C4( var_18[0][2], var_18[1][2] );
            var_20[1] = _func_0C4( var_18[2][2], var_18[3][2] );
            var_21[0] = 0;
            var_21[1] = 0;

            if ( _func_0C3( var_20[0] - var_20[1] ) < 1 )
            {
                var_21[0] = 1;
                var_21[1] = 1;
            }
            else if ( var_20[0] < var_20[1] )
                var_21[0] = 1;
            else
                var_21[1] = 1;

            var_22[0] = 0;
            var_22[1] = 0;
            var_22[2] = 0;
            var_22[3] = 0;

            for ( var_23 = 0; var_23 < 4; var_23++ )
            {
                var_24 = var_18[var_23] + ( 0, 0, 30 );
                var_25 = var_18[var_23] - ( 0, 0, 30 );
                var_26 = self _meth_83F2( var_24, var_25, 1.5, 3, 1, 1, 0, 1, 1, 1 );
                var_27 = var_24 + 2 * var_26["fraction"] * ( 0, 0, -30 );
                var_22[var_23] = var_27[2] - self._ID740[2];

                if ( var_26["fraction"] == 1 )
                    var_19[var_23] = 0;
            }

            if ( var_19[0] || var_19[1] )
                var_28 = _func_0E6( var_22[0], var_22[1] );
            else
                var_28 = 0;

            if ( var_19[2] || var_19[3] )
                var_29 = _func_0E6( var_22[2], var_22[3] );
            else
                var_29 = 0;

            if ( var_21[0] == 1 && var_21[1] == 1 )
                var_11 = _func_0C4( var_28, var_29 );
            else if ( var_21[0] == 1 )
                var_11 = var_28;
            else
                var_11 = var_29;

            var_11 = _func_0EE( var_11, var_10, 0 );
        }

        if ( var_11 < 0 )
        {
            var_30 = var_11 / var_0;
            self _meth_8156( %actor_ik_move_root, var_30 * var_3 );
            var_2 = 0;
        }
        else if ( var_2 == 0 )
        {
            self _meth_8156( %actor_ik_move_root, 0 );
            var_2 = 1;
        }
    }
}

_ID44492()
{
    if ( !_func_02F( self._ID31217 ) )
        return 1;

    var_0[0] = "Griggs";
    var_0[1] = "Nikolai";
    var_1 = var_0;

    for ( var_3 = _func_1DA( var_1 ); _func_02F( var_3 ); var_3 = _func_1BF( var_1, var_3 ) )
    {
        var_2 = var_1[var_3];

        if ( _func_125( self._ID31217, var_2 ) )
            return 0;
    }

    var_clear_2
    var_clear_0
    return 1;
}

_ID41706( var_0 )
{
    var_1[0] = "m4_grenadier";
    var_1[1] = "m4_grunt";
    var_1[2] = "m4_silencer";
    var_1[3] = "m4m203";

    if ( !_func_02F( var_0 ) )
        return 0;

    for ( var_2 = 0; var_2 < var_1.size; var_2++ )
    {
        if ( _func_125( var_0, var_1[var_2] ) )
            return 1;
    }

    return 0;
}

_ID32701()
{
    self endon( "death" );

    if ( !_func_02F( level._ID22493 ) )
        level waittill( "loadout complete" );

    _ID42336::_ID15845();
    thread animscripts\squadmanager::_ID2130();
}

_ID28209()
{
    for (;;)
    {
        if ( self _meth_81D7( "stand" ) )
        {
            var_0[0] = "stand allowed";
            var_1[0] = ( 0, 1, 0 );
        }
        else
        {
            var_0[0] = "stand not allowed";
            var_1[0] = ( 1, 0, 0 );
        }

        if ( self _meth_81D7( "crouch" ) )
        {
            var_0[1] = "crouch allowed";
            var_1[1] = ( 0, 1, 0 );
        }
        else
        {
            var_0[1] = "crouch not allowed";
            var_1[1] = ( 1, 0, 0 );
        }

        if ( self _meth_81D7( "prone" ) )
        {
            var_0[2] = "prone allowed";
            var_1[2] = ( 0, 1, 0 );
        }
        else
        {
            var_0[2] = "prone not allowed";
            var_1[2] = ( 1, 0, 0 );
        }

        var_2 = self _meth_809E() + ( 0, 0, 30 );
        var_3 = ( 0, 0, -10 );

        for ( var_4 = 0; var_4 < var_0.size; var_4++ )
            var_5 = ( var_2[0] + var_3[0] * var_4, var_2[1] + var_3[1] * var_4, var_2[2] + var_3[2] * var_4 );

        wait 0.05;
    }
}

_ID33603()
{
    if ( !_func_02F( self._ID3195 ) || !_func_02F( self._ID24424 ) )
        _unknown_0B56();
}

_ID32193()
{
    self._ID3195 = 0.9 + _func_0B8( 0.2 );
    self._ID24474 = 0.9 + _func_0B8( 0.2 );
    self._ID24424 = 1;
    self._ID34146 = 1.35;
}

_ID19550( var_0, var_1, var_2, var_3 )
{
    anim waittill( "new exceptions" );
}

_ID312( var_0, var_1, var_2, var_3 )
{

}

_ID12985()
{
    self endon( "death" );

    if ( 1 )
        return;

    for (;;)
    {
        self waittill( "enemy" );

        if ( !_func_1A7( self._ID322 ) )
            continue;

        while ( _func_1B3( self._ID322 ) )
        {
            if ( animscripts\utility::_ID18223() )
                level._ID21967 = _func_03D();

            wait 2;
        }
    }
}

_ID20022()
{
    level._ID41787[0] = -36.8552;
    level._ID41787[1] = -27.0095;
    level._ID41787[2] = -15.5981;
    level._ID41787[3] = -4.37769;
    level._ID41787[4] = 17.7776;
    level._ID41787[5] = 59.8499;
    level._ID41787[6] = 104.808;
    level._ID41787[7] = 152.325;
    level._ID41787[8] = 201.052;
    level._ID41787[9] = 250.244;
    level._ID41787[10] = 298.971;
    level._ID41787[11] = 330.681;
}

_ID14369()
{
    if ( _func_02F( anim._ID25083 ) )
        return;

    anim._ID25083 = 1;
    animscripts\animset::_ID19577();
    anim._ID39938 = 0;
    _ID42323::_ID19721();
    level._ID794._ID20394 = 0;
    level._ID24782 = _func_0B7( 3 );
    level._ID21967 = 100;
    anim._ID10137 = ::_unknown_0C6D;
    _unknown_0D23();
    _func_034( "scr_expDeathMayMoveCheck", "on" );
    _ID42336::_ID33348();
    anim._ID3185 = 0;
    animscripts\init_move_transitions::_ID19958();
    anim._ID8369 = 10000;
    anim._ID8370 = 6000;
    _unknown_0D5E();
    _unknown_0D99();

    if ( !_func_02F( anim._ID25931 ) )
    {
        anim._ID25933 = animscripts\notetracks::_ID28068;
        anim._ID25931 = animscripts\notetracks::_ID28067;
    }

    if ( !_func_02F( anim._ID25932 ) )
        anim._ID25932 = [];

    if ( !_func_02F( anim._ID25934 ) )
        anim._ID25934 = [];

    if ( !_func_02F( anim._ID33782 ) )
        anim._ID33782 = animscripts\utility::_ID33784;

    if ( !_func_02F( anim._ID33814 ) )
        anim._ID33814 = animscripts\utility::_ID33813;

    anim._ID14274["scripted"] = animscripts\notetracks::_ID14282;
    anim._ID14274["cover_right"] = animscripts\notetracks::_ID33808;
    anim._ID14274["cover_left"] = animscripts\notetracks::_ID33808;
    anim._ID14274["cover_crouch"] = animscripts\notetracks::_ID33808;
    anim._ID14274["cover_stand"] = animscripts\notetracks::_ID33808;
    anim._ID14274["move"] = animscripts\notetracks::_ID33808;
    animscripts\notetracks::_ID29430();

    if ( !_func_02F( level._ID14385 ) )
        _ID42237::_ID19699();

    _ID42298::_ID32787();
    level._ID26195 = undefined;
    animscripts\setposemovement::_ID19973();
    animscripts\face::_ID19954();
    anim._ID6452 = animscripts\utility::_ID3291( 1, 2, 2, 2, 3, 3, 3, 3, 4, 4, 5 );
    anim._ID13943 = animscripts\utility::_ID3291( 2, 3, 3, 3, 4, 4, 4, 5, 5 );
    anim._ID31869 = animscripts\utility::_ID3291( 1, 2, 2, 3, 3, 4, 4, 4, 4, 5, 5, 5 );
    anim._ID4717 = [];
    anim._ID4714 = 0;
    anim._ID794 = _func_1A2( "player", "classname" )[0];
    _unknown_0E3A();
    _unknown_0DA0();
    animscripts\cqb::_ID33547();
    _unknown_0E4F();
    _unknown_0AC7();
    anim._ID21894 = -100000;
    _unknown_0F3A();
    level._ID794 thread animscripts\combat_utility::_ID41555();
    thread _unknown_0EFA();
}

_ID19884()
{

}

_ID19855()
{
    animscripts\squadmanager::_ID19810();
    anim._ID794 thread animscripts\squadmanager::_ID2081();
    animscripts\battlechatter::_ID19643();
    anim._ID794 thread animscripts\battlechatter_ai::_ID2131();
    anim thread animscripts\battlechatter::_ID4953();
}

_ID19882()
{
    anim._ID25245 = _func_0B9( 0, 15 );
    anim._ID25244 = _func_0B9( 0, 10 );
    anim._ID24778 = _func_03D() + _func_0B9( 0, 20000 );
    anim._ID24779 = _func_03D() + _func_0B9( 0, 10000 );
    anim._ID24777 = _func_03D() + _func_0B9( 0, 15000 );
}

_ID19909()
{
    for ( var_0 = 0; var_0 < level._ID805.size; var_0++ )
    {
        var_1 = level._ID805[var_0];
        var_1._ID17424["fraggrenade"] = _func_0B9( 1000, 20000 );
        var_1._ID17424["flash_grenade"] = _func_0B9( 1000, 20000 );
        var_1._ID17424["double_grenade"] = _func_0B9( 1000, 60000 );
        var_1._ID17424["microwave_grenade"] = _func_0B9( 1000, 20000 );
        var_1._ID25254 = 0;
        var_1._ID21927 = -1000000;
        var_1._ID21925 = -1000000;
        var_1 thread _unknown_0FC9();
    }

    anim._ID17424["AI_fraggrenade"] = _func_0B9( 0, 20000 );
    anim._ID17424["AI_flash_grenade"] = _func_0B9( 0, 20000 );
    anim._ID17424["AI_smoke_grenade_american"] = _func_0B9( 0, 20000 );
    anim._ID17424["AI_microwave_grenade"] = _func_0B9( 0, 20000 );
    animscripts\combat_utility::_ID19910();
}

_ID19840()
{
    level._ID21879 = [];
    level._ID21879["axis"] = 0;
    level._ID21879["allies"] = 0;
    level._ID21879["team3"] = 0;
    level._ID21879["neutral"] = 0;
    level._ID21877 = [];
    level._ID21877["axis"] = ( 0, 0, 0 );
    level._ID21877["allies"] = ( 0, 0, 0 );
    level._ID21877["team3"] = ( 0, 0, 0 );
    level._ID21877["neutral"] = ( 0, 0, 0 );
    level._ID21878 = [];
    level._ID21878["axis"] = ( 0, 0, 0 );
    level._ID21878["allies"] = ( 0, 0, 0 );
    level._ID21878["team3"] = ( 0, 0, 0 );
    level._ID21878["neutral"] = ( 0, 0, 0 );
    level._ID21876 = [];
    level._ID2182 = [];
    level._ID2182["axis"] = 0;
    level._ID2182["allies"] = 0;
    level._ID2182["team3"] = 0;
    level._ID2182["neutral"] = 0;
    level._ID2184 = 30000;
    level._ID2183 = 3;
}

_ID2474()
{
    var_0 = 0;
    var_1 = 3;

    for (;;)
    {
        var_2 = _func_0DE();

        if ( var_2.size == 0 )
        {
            wait 0.05;
            var_0 = 0;
            continue;
        }

        for ( var_3 = 0; var_3 < var_2.size; var_3++ )
        {
            if ( !_func_02F( var_2[var_3] ) )
                continue;

            var_2[var_3] notify( "do_slow_things" );
            var_0++;

            if ( var_0 == var_1 )
            {
                wait 0.05;
                var_0 = 0;
            }
        }
    }
}

_ID32705()
{
    waitframe;

    if ( _func_02F( self._ID17476._ID27831 ) )
    {
        var_0 = _func_0C1( self._ID17476._ID27831 * 0.7 );

        if ( var_0 < 1 )
            var_0 = 1;

        self._ID17424["fraggrenade"] = _func_0B9( 0, var_0 );
        self._ID17424["flash_grenade"] = _func_0B9( 0, var_0 );
        self._ID17424["microwave_grenade"] = _func_0B9( 0, var_0 );
    }

    if ( _func_02F( self._ID17476._ID27800 ) )
    {
        var_0 = _func_0C1( self._ID17476._ID27800 );
        var_1 = _func_0C1( var_0 / 2 );

        if ( var_0 <= var_1 )
            var_0 = var_1 + 1;

        self._ID17424["double_grenade"] = _func_0B9( var_1, var_0 );
    }
}

_ID5023()
{
    if ( _func_02F( level._ID11032 ) )
        return;

    self endon( "death" );

    for (;;)
    {
        self waittill( "grenade_fire",  var_1, var_0  );
        var_0 thread _ID42407::_ID17388();
    }
}

_ID33592()
{
    anim._ID28968 = 60;
    anim._ID28967 = [];

    for ( var_0 = 0; var_0 < anim._ID28968; var_0++ )
        anim._ID28967[var_0] = var_0;

    for ( var_0 = 0; var_0 < anim._ID28968; var_0++ )
    {
        var_1 = _func_0B7( anim._ID28968 );
        var_2 = anim._ID28967[var_0];
        anim._ID28967[var_0] = anim._ID28967[var_1];
        anim._ID28967[var_1] = var_2;
    }
}

_ID25706()
{
    if ( _func_02F( level._ID11054 ) )
        return;

    self waittill( "death" );

    if ( !_func_02F( self ) )
    {
        if ( _func_02F( self._ID7._ID39999 ) )
            self._ID7._ID39999 _meth_80B7();
    }
}
