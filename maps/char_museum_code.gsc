// H2 PC GSC
// Decompiled by https://github.com/xensik/gsc-tool

_ID44880( var_0 )
{
    _ID42407::_ID32187( 1 );
    self._ID3130 = level._ID48818;

    if ( !_func_02F( level._ID51765[var_0] ) )
        level._ID51765[var_0] = [];

    level._ID51765[var_0][level._ID51765[var_0].size] = self;
    var_1 = self;

    if ( _func_02F( self._ID1191 ) )
    {
        var_1 = _ID42237::_ID16638( self._ID1191, "targetname" );
        self._ID70 = var_1._ID70;
    }

    self._ID3048 = var_1;
    _unknown_006A( var_1 );
    thread _unknown_016C();
    thread _unknown_0068( var_0 );
}

_ID43483( var_0 )
{
    self waittill( "death" );

    if ( _func_02F( self ) )
        level._ID51765[var_0] = _ID42237::_ID3321( level._ID51765[var_0], self );
    else
        level._ID51765[var_0] = [];
}

_ID47582( var_0 )
{
    self._ID9433 = _ID42407::_ID16122( var_0._ID70 );
    var_0 _ID42259::_ID3023( self, var_0._ID70 );
}

_ID53260( var_0 )
{
    if ( _func_0D4( self ) )
        _unknown_00C8( var_0 );
    else
        _unknown_00DF( var_0 );
}

_ID51592( var_0 )
{
    self endon( "panic_button" );
    self endon( "death" );
    self endon( "do_anim" );
    self._ID9433 = _ID42407::_ID16122( var_0 );
    self._ID47419 = _ID42407::_ID16122( var_0 );
    thread _unknown_01E3();
    _unknown_017F();
    waitframe;
    self._ID54599 = undefined;
    self _meth_81A6( ::_unknown_0120 );
}

_ID44460( var_0 )
{
    self endon( "do_anim" );
    self._ID9433 = _ID42407::_ID16122( var_0 );
    thread _unknown_0205();

    for (;;)
    {
        _unknown_01A2();
        waitframe;
        self._ID54599 = undefined;
        var_1 = self._ID9433;
        self _meth_814C( var_1, 0 );
        self _meth_8157( self._ID9433, 1, 0, self._ID3130 );
    }
}

_ID48706()
{
    self endon( "killanimscript" );
    self endon( "panic_button" );
    self endon( "death" );
    self endon( "do_anim" );
    self notify( "new_custom_anim" );
    self endon( "new_custom_anim" );
    var_0 = self._ID47419;

    for (;;)
    {
        var_1 = self._ID9433;
        self _meth_814C( var_1, 0 );
        self _meth_819A( "nogravity" );
        self _meth_8157( self._ID9433, 1, 0, self._ID3130 );
        _unknown_0200();
        waitframe;
    }
}

_ID50702( var_0, var_1 )
{
    if ( _func_0D4( self ) )
        _unknown_01CC( var_0, var_1 );
    else
        _unknown_01E6( var_0, var_1 );
}

_ID52789( var_0, var_1 )
{
    self endon( "panic_button" );
    self endon( "death" );
    self endon( "do_anim" );
    self._ID47419 = _ID42407::_ID16122( var_0 );
    self._ID53105 = var_1;
    self._ID9433 = _ID42407::_ID16122( var_0 );
    thread _unknown_02AB();
    _unknown_0247();
    waitframe;
    self._ID54599 = undefined;
    self _meth_81A6( ::_unknown_0231 );
}

_ID47834( var_0, var_1 )
{
    self endon( "do_anim" );
    self._ID9433 = _ID42407::_ID16122( var_0 );
    thread _unknown_02CE();

    for (;;)
    {
        _unknown_026C();
        waitframe;
        self._ID54599 = undefined;
        var_2 = self._ID9433;
        self._ID9433 = _ID42237::_ID28945( level._ID30895["generic"][var_1] );
        self _meth_814C( var_2, 0 );
        self _meth_8157( self._ID9433, 1, 0, self._ID3130 );
    }
}

_ID49914()
{
    self endon( "killanimscript" );
    self endon( "panic_button" );
    self endon( "death" );
    self endon( "do_anim" );
    self notify( "new_custom_anim" );
    self endon( "new_custom_anim" );
    var_0 = self._ID47419;
    var_1 = self._ID53105;

    for (;;)
    {
        var_2 = self._ID9433;
        self._ID9433 = _ID42237::_ID28945( level._ID30895["generic"][var_1] );
        self _meth_814C( var_2, 0 );
        self _meth_819A( "nogravity" );
        self _meth_8157( self._ID9433, 1, 0, self._ID3130 );
        _unknown_02EA();
        waitframe;
    }
}

_ID50624( var_0, var_1 )
{
    if ( !_func_02F( self._ID9433 ) )
        return;

    if ( !_func_02F( var_1 ) )
        var_1 = 0;

    var_2 = _func_067( self._ID9433 );

    if ( _func_02F( var_0 ) && _func_02F( self._ID54599 ) )
        var_2 *= var_0 - self._ID54599;
    else if ( _func_02F( var_0 ) )
        var_2 *= var_0;
    else if ( _func_02F( self._ID54599 ) )
        var_2 *= 1.0 - self._ID54599;

    var_3 = var_2 / self._ID3130 + var_1;

    if ( var_3 > 0 )
        wait(var_3);
}

_ID47190( var_0, var_1, var_2 )
{
    if ( _func_0D4( self ) )
        _unknown_037E( var_0, var_1, var_2 );
    else
        _unknown_0395( var_0, var_1, var_2 );
}

_ID44979( var_0, var_1, var_2 )
{
    self endon( "panic_button" );
    self endon( "death" );
    wait 0.1;
    _unknown_037B( var_1, var_2 );
    waitframe;
    self._ID54599 = undefined;
    self._ID47419 = var_0;
    self._ID53679 = var_1;
    self._ID46954 = var_2;
    self _meth_81A6( ::_unknown_03D0 );
}

_ID53179( var_0, var_1, var_2 )
{
    _unknown_039A( var_1, var_2 );
    waitframe;
    self._ID54599 = undefined;
    var_3 = self._ID9433;
    self._ID9433 = var_0;
    self _meth_814C( var_3, 0.2 );
    self _meth_8157( self._ID9433, 1, 0.2, self._ID3130 );
}

_ID53532()
{
    self endon( "killanimscript" );
    self endon( "panic_button" );
    self endon( "death" );
    self notify( "new_custom_anim" );
    self endon( "new_custom_anim" );
    var_0 = undefined;
    var_1 = undefined;
    var_2 = undefined;

    if ( _func_02F( self._ID47419 ) )
        var_0 = self._ID47419;

    if ( _func_02F( self._ID53679 ) )
        var_1 = self._ID53679;

    if ( _func_02F( self._ID46954 ) )
        var_2 = self._ID46954;

    var_3 = self._ID9433;
    self._ID9433 = var_0;
    self _meth_814C( var_3, 0.2 );
    self _meth_819A( "nogravity" );
    self _meth_8157( self._ID9433, 1, 0.2, self._ID3130 );
    self waittill( "new_custom_anim" );
}

_ID46126()
{
    if ( _func_0D4( self ) )
        _unknown_049F();
    else
        _unknown_04B4();
}

_ID49652()
{
    self endon( "panic_button" );
    self endon( "death" );

    while ( !_ID42407::_ID13023( "do_anim" ) )
        wait 0.05;

    _ID42407::_ID13027( "do_anim" );
    _ID42407::_ID13031( "do_anim" );
    self _meth_81A6( ::_unknown_04F4 );
}

_ID47514()
{
    while ( !_ID42407::_ID13023( "do_anim" ) )
        wait 0.05;

    _ID42407::_ID13027( "do_anim" );
    _ID42407::_ID13031( "do_anim" );
    self _meth_8155( self._ID9433, 1, 0, 0 );
}

_ID49361()
{
    self endon( "killanimscript" );
    self endon( "panic_button" );
    self endon( "death" );
    self notify( "new_custom_anim" );
    self _meth_819A( "nogravity" );
    self _meth_8155( self._ID9433, 1, 0, 0 );
    self waittill( "new_custom_anim" );
}

_ID44299( var_0, var_1, var_2, var_3 )
{
    if ( _func_0D4( self ) )
        _unknown_057E( var_0, var_1, var_2, var_3 );
    else
        _unknown_058F( var_0, var_1, var_2, var_3 );
}

_ID52326( var_0, var_1, var_2, var_3 )
{
    self._ID47419 = var_0;
    self._ID49637 = var_1;
    self._ID48720 = var_2;
    self._ID53076 = var_3;
    self _meth_81A6( ::_unknown_05AC );
}

_ID52929( var_0, var_1, var_2, var_3 )
{
    self _meth_8155( var_0, var_1, var_2, var_3 );
}

_ID53908()
{
    self endon( "killanimscript" );
    self endon( "panic_button" );
    self endon( "death" );
    self notify( "new_custom_anim" );
    var_0 = self._ID47419;
    var_1 = self._ID49637;
    var_2 = self._ID48720;
    var_3 = self._ID53076;

    if ( _func_02F( self._ID45053 ) )
        self _meth_819A( self._ID45053 );
    else
        self _meth_819A( "nogravity" );

    self _meth_8155( var_0, var_1, var_2, var_3 );
    self waittill( "new_custom_anim" );
}

_ID52822( var_0, var_1 )
{
    wait 0.05;
    self._ID54599 = var_1;
    var_2 = _func_06A( "script_origin", _func_071( var_0._ID740, var_0._ID65, _ID42407::_ID16122( var_0._ID70 ) ) );
    var_2._ID65 = _func_072( var_0._ID740, var_0._ID65, _ID42407::_ID16122( var_0._ID70 ) );
    var_3 = _func_094( _ID42407::_ID16122( var_0._ID70 ), 0, self._ID54599 );
    var_4 = var_2 _meth_81BC( var_3 );
    var_5 = _func_095( _ID42407::_ID16122( var_0._ID70 ), 0, self._ID54599 );
    self _meth_8120( _ID42407::_ID16122( var_0._ID70 ), self._ID54599 );

    if ( _func_0D4( self ) )
        self _meth_81D2( var_4, var_2._ID65 + ( 0, var_5, 0 ) );
    else
    {
        self._ID740 = var_4;
        self._ID65 = var_2._ID65 + ( 0, var_5, 0 );
    }

    var_2 _ID42237::_ID10192( 0.05, ::_meth_80B7 );
}

_ID46347( var_0, var_1, var_2, var_3 )
{
    var_4 = _func_1F2( var_0, "targetname" );
    var_5 = level._ID6678;
    level._ID6678 = _ID42411::_ID35196( "credits_camera" );
    level._ID6678 _meth_8286( var_4._ID740, var_4._ID65 );
    level._ID6678 thread _ID42411::_ID40218( var_4 );
    level._ID6678 _meth_8287( var_4 );
    level._ID6678 _meth_828E( 0, 1000, 1000 );

    if ( !_func_02F( var_1 ) )
        var_1 = 30;

    var_6 = _func_0F3( level._ID6678._ID740, var_5._ID740 );
    var_7 = var_6 / var_1;

    if ( !_func_02F( var_2 ) )
        var_2 = 0.25;

    if ( !_func_02F( var_3 ) )
        var_3 = 0.25;

    if ( !var_2 && !var_3 )
        level._ID794 _meth_8087( level._ID6678, undefined, var_7 );
    else
        level._ID794 _meth_8087( level._ID6678, undefined, var_7, var_7 * var_2, var_7 * var_3 );

    thread _unknown_080A( var_7 );

    if ( var_7 > 0.5 && var_7 < 1.0 )
        wait(var_7);
    else if ( var_7 > 1.0 )
        wait(var_7 - 1.0);

    var_5 _ID42237::_ID10192( 1.5, ::_meth_80B7 );
}

h2_museum_prepare_exhibit_input( var_0, var_1, var_2 )
{
    wait(var_2);
    _ID42237::_ID14413( var_0 );

    if ( !_ID42237::_ID14385( "in_an_exhibit" ) )
    {
        _ID42237::_ID14402( "in_an_exhibit" );
        _ID42237::_ID14413( "camera_is_parented_delta" );
        thread _unknown_087E( var_1 );
        _ID42237::_ID14413( var_1 );
        _ID42237::_ID14388( "camera_is_parented_delta" );
        _ID42237::_ID14413( "exhibit_zoomout_done" );
        _unknown_0870();
    }
}

h2_museum_custom_exhibit( var_0, var_1, var_2 )
{
    wait(var_0);

    if ( !_ID42237::_ID14385( "in_an_exhibit" ) )
    {
        _ID42237::_ID14402( "in_an_exhibit" );

        if ( var_2 == 1 )
            thread _unknown_08A3( 0 );

        _ID42237::_ID14413( "camera_is_parented_delta" );
        thread _unknown_08CD( "custom_exhibit_done" );
        wait(var_1 - var_0);
        _ID42237::_ID14402( "custom_exhibit_done" );
        _ID42237::_ID14388( "camera_is_parented_delta" );
        _ID42237::_ID14413( "exhibit_zoomout_done" );
        var_3 = 1;
        level._ID794 _meth_8087( level._ID6678, undefined, var_3, 0, var_3 * 0.33 );
        _unknown_08D7();
    }
}

h2_museum_cleanup_exhibit_flags()
{
    _ID42237::_ID14388( "in_an_exhibit" );
    _ID42237::_ID14388( "in_a_corridor" );
    _ID42237::_ID14388( "camera_is_parented_delta" );
    _ID42237::_ID14388( "exhibit_zoomout_done" );
    _ID42237::_ID14388( "custom_exhibit_done" );
}

h2_museum_parent_camera_delta( var_0 )
{
    if ( _ID42237::_ID14385( "in_a_corridor" ) )
        _ID42237::_ID14388( "in_a_corridor" );
    else
    {
        wait(var_0 + 0.05);
        _ID42237::_ID14413( "in_an_exhibit" );
        level._ID794 _meth_8084( level._ID6678, undefined, 1.0, 0, 0, 0, 0, 1 );
        level._ID794 _meth_80AA( 50, 50, 20, 20 );
        wait 0.05;
        _ID42237::_ID14402( "camera_is_parented_delta" );
    }
}

h2_museum_listen_for_player_input( var_0 )
{
    var_1 = 45;
    var_2 = 15;
    var_3 = 1.5;

    if ( var_0 == "custom_exhibit_done" )
        var_2 = 25;

    var_4 = var_1 - var_2 / 1.33;
    var_5 = 0.5625 * var_4;
    var_6 = 0;

    while ( !_ID42237::_ID14385( var_0 ) )
    {
        if ( level._ID794 _meth_8349() )
        {
            if ( var_6 == 0 )
            {
                var_6 = 1;
                thread _unknown_09FD( var_2, var_3 );
                level._ID794 _meth_80A9( var_3, var_3 * 0.5, var_3 * 0.5, var_4, var_4, var_5, var_5 );
                level._ID794 _meth_80AA( 50, 50, 20, 20 );
            }
        }
        else if ( var_6 == 1 )
        {
            var_6 = 0;
            thread _unknown_0A2D( var_1, var_3 );
            level._ID794 _meth_80A9( var_3, var_3 * 0.5, var_3 * 0.5, 0, 0, 0, 0 );
            level._ID794 _meth_80AA( 50, 50, 20, 20 );
        }

        wait 0.05;
    }

    var_7 = _ID42237::_ID37527( var_0 == "custom_exhibit_done", 1.0, 2.0 );
    thread _unknown_0A6E( var_1, var_3 * var_7 );
    _ID42237::_ID14402( "exhibit_zoomout_done" );
}

h2_museum_player_fovchange( var_0, var_1 )
{
    var_2 = _ID54167::_ID43386( "new_fov_called", 1 );
    var_2 _ID54167::_ID48800( 0.0 ) _ID54167::_ID44191( var_0, var_1, 0 );
    var_2 _ID54167::_ID48166();
}

_ID45849()
{
    if ( level._ID44088 == "free" || self._ID170 == "actor_enemy_dog" || _func_125( self._ID170, "ally_socom_" ) || _func_125( self._ID170, "actor_enemy_juggernaut" ) )
    {
        self._ID31152 = undefined;
        self._ID31299 = 1;
    }
    else
    {
        self._ID31153 = 1;
        self._ID31152 = 1;
    }
}

_ID51953()
{
    self._ID24424 = 1.0;
    self._ID3195 = 1.0;

    if ( level._ID44088 == "free" )
        self._ID31152 = 1;
    else
        self._ID31152 = undefined;
}

_ID52521( var_0 )
{
    var_1 = level._ID51765[var_0];

    for ( var_3 = _func_1DA( var_1 ); _func_02F( var_3 ); var_3 = _func_1BF( var_1, var_3 ) )
    {
        var_2 = var_1[var_3];
        var_2 _ID42407::_ID13025( "do_anim" );
    }

    var_clear_2
    var_clear_0
}

_ID44199()
{
    self endon( "death" );
    self waittill( "reached_path_end" );
    self _meth_80B7();
}

_ID51044()
{
    self endon( "death" );
    wait 0.1;
    var_0 = self;

    if ( _func_02F( self._ID1191 ) )
    {
        var_0 = _ID42237::_ID16638( self._ID1191, "targetname" );
        self._ID70 = var_0._ID70;
    }

    if ( var_0._ID70 == "civilian_texting_sitting" )
        self _meth_801D( "electronics_pda", "TAG_INHAND" );

    _ID42407::_ID32187( 1 );
    var_0 _ID42259::_ID3025( self, var_0._ID70 );
}

_ID54372()
{
    self endon( "death" );
    var_0 = _ID42237::_ID16299( "scuba_bubbles_friendly" );

    while ( _ID42407::_ID13019( "do_anim" ) )
    {
        var_1 = _func_0B7( 3 ) + 1;

        for ( var_2 = 0; var_2 < var_1; var_2++ )
        {
            _func_157( var_0, self, "tag_eye" );
            wait 0.05;
        }

        wait(_func_0BA( 0.6, 2.5 ));
    }
}

_ID52707()
{
    self._ID511 = 1;
    thread _ID49347::weapons_specialfeatures_reset();
    var_0 = "beretta";
    var_1 = "viewhands_us_army";
    self _meth_831B();
    self _meth_8319( var_0 );
    self _meth_8320( var_0 );
    self _meth_834E( var_1 );
    self _meth_834F( "fraggrenade" );
    self _meth_8319( "fraggrenade" );
    self _meth_8324( "flash_grenade" );
    self _meth_8319( "flash_grenade" );
    self _meth_8334( 1 );
    thread _ID49347::weapons_specialfeatures();
}

_ID49885()
{
    var_0 = self._ID922;

    for (;;)
    {
        self waittill( "trigger",  var_1  );

        if ( _func_1B3( var_1 ) && level._ID49963 != var_0 )
        {
            _unknown_0CC1();

            while ( var_1 _meth_80B0( self ) )
                wait 0.05;
        }
    }
}

_ID45460()
{
    if ( _ID42237::_ID14385( "panic_button" ) )
        return;

    level._ID49963 = self._ID922;

    if ( level._ID44088 == "free" )
        level._ID17617 = _func_0DF();

    var_0 = level._ID17617;

    for ( var_2 = _func_1DA( var_0 ); _func_02F( var_2 ); var_2 = _func_1BF( var_0, var_2 ) )
    {
        var_1 = var_0[var_2];

        if ( _func_02F( var_1 ) )
            var_1 _meth_80B7();
    }

    var_clear_2
    var_clear_0

    if ( _func_02F( level._ID30179 ) )
    {
        level._ID30179 _meth_80B7();
        level._ID30179 = undefined;
    }

    level._ID17617 = [];
    wait 0.05;

    if ( level._ID49963 == "none" )
        return;

    var_3 = _func_1A2( self._ID922, "targetname" );

    if ( level._ID44088 == "free" )
    {
        switch ( self._ID922 )
        {

        }
    }

    _ID42237::_ID3350( var_3, ::_unknown_0DA1 );
    case "room2":
    case "room1":
}

_ID51643()
{
    self._ID216 = 3;
    _ID42407::_ID35014( 1 );
}

_ID50810()
{
    self endon( "death" );
    _ID42407::_ID13024( "do_anim" );
    self._ID511 = 1;
    self._ID507 = 1;
    self._ID46957 = [];
    self._ID46957["grenadeawareness"] = self._ID465;
    self._ID46957["ignoreexplosionevents"] = self._ID509;
    self._ID46957["ignorerandombulletdamage"] = self._ID512;
    self._ID46957["ignoresuppression"] = self._ID513;
    self._ID46957["disableBulletWhizbyReaction"] = self._ID11002;
    self._ID46957["newEnemyReactionDistSq"] = self._ID686;
    self._ID46957["health"] = self._ID486;
    self._ID46957["maxhealth"] = self._ID626;
    self._ID46957["flashbangimmunity"] = self._ID14507;
    self._ID465 = 0;
    self._ID509 = 1;
    self._ID512 = 1;
    self._ID513 = 1;
    self._ID11002 = 1;
    self._ID686 = 0;
    self._ID680 = " ";
    self._ID486 = 1;
    self._ID626 = 1;
    self._ID14507 = 1;
    _ID42407::_ID26355();

    if ( _func_02F( self._ID1194 ) && self._ID1194 == "axis" )
        self._ID1194 = "neutral";

    if ( _func_0D4( self ) )
    {
        _ID42407::_ID10949();
        self _meth_8172();
        self _meth_81AF( 1 );
        jump loc_EC1
    }

    self._ID38 = "noncombat";

    if ( _func_02F( self._ID1244 ) && self._ID1244 == "civilian" )
        return;

    level._ID17617[level._ID17617.size] = self;
}

_ID43902()
{
    var_0 = level._ID805;

    for ( var_2 = _func_1DA( var_0 ); _func_02F( var_2 ); var_2 = _func_1BF( var_0, var_2 ) )
    {
        var_1 = var_0[var_2];
        var_1._ID5261 = _ID42313::_ID9125( "black", 0, var_1 );
        var_1._ID5261._ID55 = 1;
    }

    var_clear_2
    var_clear_0
}

_ID43899( var_0 )
{
    var_1 = level._ID805;

    for ( var_3 = _func_1DA( var_1 ); _func_02F( var_3 ); var_3 = _func_1BF( var_1, var_3 ) )
    {
        var_2 = var_1[var_3];
        var_2._ID5261 _meth_808B( var_0 );
        var_2._ID5261._ID55 = 0;
        var_2._ID5261 _ID42237::_ID10192( var_0, ::_meth_808F );
    }

    var_clear_2
    var_clear_0
}

_ID48755()
{
    var_0 = _unknown_0FAC();
    _ID42237::_ID3350( var_0, ::_unknown_0FE4 );
    level._ID46762 = var_0;
    var_1 = [];
    var_1[var_1.size] = "delayed";
    var_0 = _ID42237::_ID3320( level._ID46762 );
    _ID42237::_ID14413( "looked_at_big_board" );
    var_2 = _func_1A2( "snd_departure_board", "targetname" );
    var_3 = var_2;

    for ( var_5 = _func_1DA( var_3 ); _func_02F( var_5 ); var_5 = _func_1BF( var_3, var_5 ) )
    {
        var_4 = var_3[var_5];
        var_4 _meth_80A1( var_4._ID31438 );
    }

    var_clear_2
    var_clear_0
    var_0 = _ID42237::_ID3320( level._ID46762 );
    var_6 = var_0;

    for ( var_8 = _func_1DA( var_6 ); _func_02F( var_8 ); var_8 = _func_1BF( var_6, var_8 ) )
    {
        var_7 = var_6[var_8];
        var_7 thread _unknown_10D1( var_1[_func_0B7( var_1.size )] );
        wait 0.2;
    }

    var_clear_2
    var_clear_0
}

_ID49411()
{
    var_0 = _func_1A2( "sign_departure_status", "targetname" );
    var_1 = [];
    var_2 = var_0;

    for ( var_10 = _func_1DA( var_2 ); _func_02F( var_10 ); var_10 = _func_1BF( var_2, var_10 ) )
    {
        var_3 = var_2[var_10];
        var_4 = 1;
        var_5 = var_3._ID740;
        var_6 = var_1;

        for ( var_8 = _func_1DA( var_6 ); _func_02F( var_8 ); var_8 = _func_1BF( var_6, var_8 ) )
        {
            var_7 = var_6[var_8];

            if ( var_7._ID740 != var_5 )
                continue;

            var_4 = 0;
            var_7._ID50590[var_3._ID922] = var_3;
            break;
        }

        var_clear_4
        var_clear_2

        if ( !var_4 )
            continue;

        var_9 = _func_1A5();
        var_9._ID740 = var_5;
        var_9._ID50590 = [];
        var_9._ID50590[var_3._ID922] = var_3;
        var_1[var_1.size] = var_9;
    }

    var_clear_8
    var_clear_0
    return var_1;
}

_ID49053()
{
    self._ID36223["angles"] = [];
    self._ID36223["angles"]["bottom"] = self._ID50590["ontime"]._ID65;
    self._ID36223["angles"]["top"] = self._ID50590["boarding"]._ID65;
    self._ID36223["angles"]["waiting"] = self._ID50590["delayed"]._ID65;
    self._ID36223["order"] = [];
    self._ID36223["order"]["ontime"] = "arriving";
    self._ID36223["order"]["arriving"] = "boarding";
    self._ID36223["order"]["boarding"] = "delayed";
    self._ID36223["order"]["delayed"] = "ontime";
    self._ID36223["ontime"] = [];
    self._ID36223["ontime"]["bottom"] = "ontime";
    self._ID36223["ontime"]["top"] = "arriving";
    self._ID36223["arriving"] = [];
    self._ID36223["arriving"]["bottom"] = "arriving";
    self._ID36223["arriving"]["top"] = "boarding";
    self._ID36223["boarding"] = [];
    self._ID36223["boarding"]["bottom"] = "boarding";
    self._ID36223["boarding"]["top"] = "delayed";
    self._ID36223["delayed"] = [];
    self._ID36223["delayed"]["bottom"] = "delayed";
    self._ID36223["delayed"]["top"] = "ontime";
    self._ID46920 = "ontime";
    self._ID50590["arriving"]._ID65 = self._ID36223["angles"]["top"];
    self._ID50590["boarding"]._ID65 = self._ID36223["angles"]["waiting"];
    self._ID50590["boarding"] _meth_805A();
    self._ID50590["delayed"] _meth_805A();
}

_ID43595( var_0 )
{
    for ( var_1 = 0.2; self._ID46920 != var_0; self._ID46920 = var_2 )
    {
        var_2 = self._ID36223["order"][self._ID46920];
        var_3 = self._ID36223[self._ID46920]["top"];
        var_4 = self._ID36223[self._ID46920]["bottom"];
        var_5 = self._ID36223[var_2]["top"];
        var_6 = self._ID50590[var_3];
        var_7 = self._ID50590[var_4];
        var_8 = self._ID50590[var_5];
        var_6 _meth_82C0( 180, var_1 );
        var_8._ID65 = self._ID36223["angles"]["top"];
        wait 0.05;
        var_8 _meth_8059();
        wait(var_1 - 0.1);
        var_7 _meth_805A();
        var_7._ID65 = self._ID36223["angles"]["waiting"];
        wait 0.05;
    }
}

_ID52279()
{
    self endon( "death" );
    self._ID17509 = 1;
    _ID42407::_ID17509();
    var_0 = _func_043( "beretta" );
    self _meth_801D( var_0, "tag_weapon_right" );
    self _meth_804E( "TAG_SILENCER" );
    self waittill( "panic_button" );
    self _meth_802A( var_0, "tag_weapon_right" );
}

_ID45527( var_0, var_1 )
{
    self endon( "panic_button" );
    self endon( "death" );
    self endon( "do_anim" );
    self._ID47419 = _ID42407::_ID16122( var_0 );
    self._ID53105 = var_1;
    self._ID9433 = _ID42407::_ID16122( var_0 );
    thread _unknown_104B();
    _unknown_0FE7();
    waitframe;
    self _meth_81A6( ::_unknown_1442 );
}

_ID52380()
{
    self endon( "panic_button" );
    self endon( "killanimscript" );
    self endon( "death" );
    self endon( "do_anim" );
    self notify( "new_custom_anim" );
    self endon( "new_custom_anim" );
    var_0 = self._ID47419;
    var_1 = self._ID53105;

    for (;;)
    {
        var_2 = self._ID9433;
        self._ID9433 = _ID42237::_ID28945( level._ID30895["generic"][var_1] );
        self _meth_814C( var_2, 0 );
        self _meth_819A( "nogravity" );
        self _meth_8157( self._ID9433, 1, 0, self._ID3130 );
        _unknown_1046();
        waitframe;
    }
}

_ID44661()
{
    thread _ID42237::_ID44574( level._ID794, &"CHAR_MUSEUM_DO_NOT", &"CHAR_MUSEUM_DO_NOT_PC", "trigger" );
    self _meth_8187();
    thread _unknown_1699();
    thread _unknown_1690();
    var_0 = _func_1A1( self._ID1191, "targetname" );
    var_0 _ID42407::_ID13024( "ready" );
    var_0 _ID42407::_ID13025( "ready" );
    var_1 = _func_1A2( "panic_button", "targetname" );
    var_2 = [];
    var_3 = var_1;

    for ( var_5 = _func_1DA( var_3 ); _func_02F( var_5 ); var_5 = _func_1BF( var_3, var_5 ) )
    {
        var_4 = var_3[var_5];
        var_2[var_2.size] = _func_1A1( var_4._ID1191, "targetname" );
    }

    var_clear_2
    var_clear_0
    var_6 = var_2;

    for ( var_8 = _func_1DA( var_6 ); _func_02F( var_8 ); var_8 = _func_1BF( var_6, var_8 ) )
    {
        var_7 = var_6[var_8];
        var_7 _ID42407::_ID3428( "bell" );
        var_1[var_8] _ID42259::_ID3018( var_7, "pressing_button_infront" );
    }

    var_clear_2

    for (;;)
    {
        var_0 _ID42407::_ID13027( "ready" );
        self waittill( "trigger" );
        _ID42475::_ID34575( "aud_start_battle_mix" );
        _unknown_15EC();
        var_9 = _func_0DF();

        if ( !var_9.size )
            continue;

        if ( !_unknown_1797( var_9 ) )
            continue;

        if ( _ID42237::_ID14385( "panic_button" ) )
            continue;

        _ID42237::_ID14402( "panic_button" );
        _ID42237::_ID3350( level._ID805, _ID42407::_ID28099, "arcademode_kill_streak_lost" );
        level._ID794._ID511 = 0;
        _ID42237::_ID3350( var_9, ::_unknown_17EB );
        var_10 = 32;
        var_11 = 26;

        if ( self._ID922 == "room1_button" && var_9.size == var_10 )
            thread _unknown_175C( self._ID922 );
        else if ( self._ID922 == "room2_button" && var_9.size == var_11 )
            thread _unknown_1775( self._ID922 );

        _ID42237::_ID14426( "panic_button" );
        _ID42475::_ID34575( "aud_stop_battle_mix" );
    }
}

panic_button_body_sense()
{
    var_0 = _func_1A1( _ID42237::_ID16182( level._ID794._ID740, _func_1A2( "panic_button", "targetname" ), 512 )._ID1191, "targetname" );

    if ( _ID42237::_ID14385( "button_infront" ) || _ID42237::_ID14385( "button_behind" ) && level._ID794 _meth_834C() && level._ID794 _meth_8188() != "prone" )
    {
        _func_0DB( "actionSlotsHide", 1 );
        _func_0DB( "compass", 0 );
        _func_0DB( "hud_showStance", 0 );
        _func_0DB( "ammoCounterHide", 1 );
        var_1 = _func_06A( "script_origin", var_0._ID740 + ( 0, 0, 8 ) );
        var_2 = _ID42407::_ID35028( "viewbody" );
        var_2 _ID42407::_ID3428();
        var_2 _meth_8095();
        var_2 _meth_805A();

        if ( _ID42237::_ID14385( "button_infront" ) )
            var_1 _ID42259::_ID3018( var_2, "pressing_button_infront" );
        else
            var_1 _ID42259::_ID3018( var_2, "pressing_button_behind" );

        level._ID794 _meth_8122( 0 );
        level._ID794 _meth_8123( 0 );
        level._ID794 _meth_8328( 1, 200, 0.1 );
        var_3 = level._ID794 _ID42259::_ID53505( var_2, 40, 100, 0.2, 0.5 );
        level._ID794 _meth_8087( var_2, "tag_player", var_3, var_3 / 4, var_3 / 4 );
        wait(var_3 + 0.05);
        var_2 _meth_8059();

        if ( _ID42237::_ID14385( "button_infront" ) )
        {
            thread _unknown_1809( "front", var_0 );
            thread _ID42259::_ID3111( var_0, "pressing_button_infront" );
            var_1 _ID42259::_ID3111( var_2, "pressing_button_infront" );
        }
        else
        {
            thread _unknown_1828( "back", var_0 );
            thread _ID42259::_ID3111( var_0, "pressing_button_behind" );
            var_1 _ID42259::_ID3111( var_2, "pressing_button_behind" );
        }

        level._ID794 _meth_8055();
        var_2 _meth_80B7();
        level._ID794 _meth_8122( 1 );
        level._ID794 _meth_8123( 1 );
        level._ID794 _meth_8329();
        _func_0DB( "actionSlotsHide", 0 );
        _func_0DB( "compass", 1 );
        _func_0DB( "hud_showStance", 1 );
        _func_0DB( "ammoCounterHide", 0 );
    }
    else
        thread _ID42259::_ID3111( var_0, "pressing_button_else" );
}

h2_button_press( var_0, var_1 )
{
    var_2 = _ID54167::_ID43386( "bell" + var_0, 1 );

    switch ( var_0 )
    {

    }

    var_2 _ID54167::_ID48166();
    case "back":
    case "front":
}

do_not_push_this_button_think( var_0 )
{
    level._ID794 endon( "death" );

    if ( var_0 != "room1_button" && var_0 != "room2_button" )
        return;

    _ID42237::_ID14426( "panic_button" );

    if ( var_0 == "room1_button" )
        level.room1_cleared = 1;
    else if ( var_0 == "room2_button" )
        level.room2_cleared = 1;

    if ( level.room1_cleared && level.room2_cleared )
        _ID42407::_ID16864( "NIGHT_MUSEUM" );
}

_ID52429( var_0 )
{
    var_0 _ID42407::_ID13021( "ready" );

    if ( !_func_02F( self._ID38863 ) )
        _ID42237::_ID38863();

    var_0 _meth_82BB( -1, 0.1 );
    var_0 _meth_80A1( "detpack_trigger" );
    wait 1;
    var_0 _meth_82BB( 1, 0.1 );
    wait 0.25;
    var_0 _ID42407::_ID13025( "ready" );
    _ID42237::_ID14426( "panic_button" );

    if ( _func_02F( self._ID38863 ) )
        _ID42237::_ID38865();
}

_ID54736()
{
    for (;;)
    {
        _ID42237::_ID14413( "panic_button" );

        if ( !_func_02F( self._ID38863 ) )
            _ID42237::_ID38863();

        _ID42237::_ID14426( "panic_button" );

        if ( _func_02F( self._ID38863 ) )
            _ID42237::_ID38865();
    }
}

_ID47456()
{
    var_0 = _func_06A( "trigger_radius", self._ID740, 0, 50, 72 );
    var_1 = _func_1AF();
    var_1 _meth_80D3( "panic_button", 1, 1 );
    var_1._ID55 = 0;
    var_1._ID196 = ( 1, 1, 1 );
    var_1._ID1331 = self._ID740[0];
    var_1._ID1339 = self._ID740[1];
    var_1._ID1342 = self._ID740[2];
    var_1 _meth_80DF( 1, 0, 0 );
    wait 0.05;

    for (;;)
    {
        var_0 waittill( "trigger",  var_2  );

        if ( !_func_1B3( var_2 ) )
            continue;

        while ( var_2 _meth_80B0( var_0 ) )
        {
            var_3 = 1;

            if ( _ID42407::_ID27540( self._ID740, 0.8, 1 ) && var_3 )
                _unknown_1C80( var_1 );
            else
                _unknown_1C93( var_1 );

            wait 0.25;
        }

        _unknown_1C9F( var_1 );
    }
}

_ID53579( var_0 )
{
    if ( var_0._ID55 != 0 )
        return;

    var_0 _meth_808B( 0.2 );
    var_0._ID55 = 0.6;
    wait 0.2;
}

_ID52917( var_0 )
{
    if ( var_0._ID55 == 0 )
        return;

    var_0 _meth_808B( 0.2 );
    var_0._ID55 = 0;
    wait 0.2;
}

_ID46802( var_0 )
{
    var_1 = var_0;

    for ( var_3 = _func_1DA( var_1 ); _func_02F( var_3 ); var_3 = _func_1BF( var_1, var_3 ) )
    {
        var_2 = var_1[var_3];

        if ( var_2 _unknown_1D0E() )
            return 1;
    }

    var_clear_2
    var_clear_0
    return 0;
}
#using_animtree("generic_human");

_ID45251()
{
    if ( _func_02F( self._ID9433 ) && self._ID9433 == %oilrig_sub_b_idle_3 || self._ID9433 == %oilrig_sub_b_idle_4 )
        return 0;

    if ( _func_02F( self._ID1244 ) && self._ID1244 == "civilian" )
        return 0;

    return 1;
}

_ID45396()
{
    if ( !_func_1A7( self ) )
        return;

    if ( !_unknown_1D5F() )
        return;

    if ( self._ID170 == "actor_enemy_villian_shepherd" )
    {
        _ID42407::_ID14803( self._ID34144, "primary" );
        self.neverswitchweapon = 1;
    }

    self notify( "panic_button" );
    self notify( "stop_first_frame" );
    self _meth_814B();

    if ( self._ID3048._ID70 == "gulag_end_evac_soap" )
    {
        self _meth_8055();
        var_0 = self _meth_8146( self._ID740 );
        self _meth_81D2( var_0, self._ID65 );
    }

    if ( _func_02F( self._ID17509 ) )
        _ID42407::_ID17508();

    thread _unknown_1E1E();
    self._ID465 = self._ID46957["grenadeawareness"];
    self._ID509 = self._ID46957["ignoreexplosionevents"];
    self._ID512 = self._ID46957["ignorerandombulletdamage"];
    self._ID513 = self._ID46957["ignoresuppression"];
    self._ID11002 = self._ID46957["disableBulletWhizbyReaction"];
    self._ID686 = self._ID46957["newEnemyReactionDistSq"];
    self._ID14507 = self._ID46957["flashbangimmunity"];
    self._ID486 = 150;
    self._ID626 = 150;

    if ( _func_02F( self._ID21151 ) && self._ID21151 == 1 )
    {
        self._ID486 = 3600;
        self._ID626 = 3600;
    }

    if ( _func_02F( self._ID31247 ) )
    {
        self._ID486 = self._ID31247;
        self._ID626 = self._ID31247;
    }

    _ID42407::_ID26353();
    _ID42407::_ID12508();
    self _meth_81AF( 0 );
    self._ID452 = 4000;
    self._ID381 = 0;
    level._ID45519++;
    self waittill( "death" );
    level._ID45519--;
    wait 0.5;

    if ( level._ID45519 == 0 )
        _ID42237::_ID14388( "panic_button" );
}

_ID49443()
{
    self endon( "death" );
    wait 0.5;
    wait(_func_0B8( 0.5 ));
    self._ID507 = 0;
    self._ID511 = 0;
    self._ID1194 = "axis";
    self._ID377 = level._ID794;
}

_ID49164()
{
    wait(_func_0BA( 0, 0.6 ));
    _func_157( _ID42237::_ID16299( "c4_blink" ), self, "tag_fx" );
}

museum_vfx_volumes()
{
    level _ID42237::_ID41068( "createfx_common_done", "start_is_set" );

    if ( _func_02F( level._ID9228 ) && level._ID9228 )
        return;

    if ( _func_02F( level._ID35897 ) && level._ID35897 == "no_game" || level._ID35897 == "museum_credits" )
        return;

    var_0 = [ "northeast_vfx", "south_vfx", "northwest_vfx" ];
    var_1 = [];
    var_2 = var_0;

    for ( var_4 = _func_1DA( var_2 ); _func_02F( var_4 ); var_4 = _func_1BF( var_2, var_4 ) )
    {
        var_3 = var_2[var_4];
        _ID42407::_ID53651( var_3, var_3 );
        _ID42407::_ID52583( var_3, _func_1A2( var_3, "targetname" ) );
    }

    var_clear_2
    var_clear_0
    _ID42237::_ID14402( "northwest_vfx" );
}

museum_monitors()
{
    var_0 = _func_1A2( "museum_monitor", "targetname" );

    if ( level._ID44088 == "free" )
        _ID42237::_ID3350( var_0, ::_unknown_1FDC );
    else
        _ID42237::_ID3350( var_0, ::_unknown_1FEB );
}

museum_monitors_physics()
{
    self _meth_82CC( self._ID740, ( 0, 0, 0 ) );
}

museum_monitors_model()
{
    if ( self._ID669 == "com_widescreen_monitor_2" )
        self _meth_80B8( "h2_com_widescreen_monitor_on_0" + _func_0B7( 8 ) + 1 );

    _ID42237::_ID14413( "favela_done" );
    self _meth_805A();
    wait 5;
    self _meth_8059();
}

museum_chicken()
{
    var_0 = _func_1A1( "favela_chicken", "targetname" );
    var_0 _ID42407::_ID3428( "chicken" );

    switch ( _func_0B7( 3 ) )
    {

    }

    endswitch( 3 )  case 2 loc_2087 case 1 loc_2088 default loc_2095

    if ( level._ID44088 == "free" )
        var_0 thread _unknown_20CA();
    else
    {
        var_0 thread _unknown_2127();
        return;
    }

    var_0 _meth_82CA( 1 );

    for (;;)
    {
        var_0 waittill( "damage",  var_2, var_1  );

        if ( _func_1B3( var_2 ) )
            break;
    }

    var_0 notify( "death" );
    var_0 _meth_814B();
    var_0 thread _ID42407::_ID27079( "animal_chicken_death" );

    if ( _func_0B7( 2 ) )
        var_3 = "chicken_cage_death";
    else
        var_3 = "chicken_cage_death_02";

    var_0 _ID42259::_ID3111( var_0, var_3 );
    case 1:
    default:
}

museum_chicken_free()
{
    self endon( "death" );
    thread _unknown_215E();

    for (;;)
    {
        if ( _func_0B7( 2 ) )
            var_0 = "chicken_cage_seated_idle";
        else
            var_0 = "chicken_cage_pecking_idle";

        thread _ID42259::_ID3044( self, var_0, "stop_idle" );
        self._ID9433 = level._ID30895["chicken"][var_0][0];
        self notify( "anim_defined" );
        thread _ID42407::_ID27001( "animal_chicken_idle_loop", undefined, 1, 1 );
        _ID42237::_ID14413( "panic_button" );
        self notify( "stop_idle" );
        thread _ID42237::_ID36516( "animal_chicken_idle_loop" );
        thread _ID42407::_ID27001( "animal_chicken_panic_loop", undefined, 1, 1 );
        thread _ID42259::_ID3044( self, "chicken_cage_freakout", "stop_freakout" );
        self._ID9433 = level._ID30895["chicken"]["chicken_cage_freakout"][0];
        _ID42237::_ID14426( "panic_button" );
        self notify( "stop_freakout" );
        thread _ID42237::_ID36516( "animal_chicken_panic_loop" );
    }
}

museum_chicken_free_start_stop()
{
    self waittill( "anim_defined" );

    for (;;)
    {
        if ( _ID42237::_ID14385( "panic_button" ) )
            self _meth_8155( self._ID9433, 1, 0, 1 );
        else if ( _ID42237::_ID14385( "favela_go" ) && !_ID42237::_ID14385( "favela_done" ) )
            self _meth_8155( self._ID9433, 1, 0, level._ID48818 );
        else
            self _meth_8155( self._ID9433, 1, 0, 0 );

        level _ID42237::_ID41068( "favela_go", "favela_done", "panic_button" );
    }
}

museum_chicken_credits()
{
    _ID42259::_ID3018( self, "chicken_cage_loop_01" );
    thread _unknown_2296();
    _ID42237::_ID14413( "favela_go" );
    wait 3;
    _ID42259::_ID3111( self, "chicken_cage_loop_01" );

    for (;;)
    {
        if ( _func_0B7( 2 ) )
            var_0 = "chicken_cage_loop_01";
        else
            var_0 = "chicken_cage_loop_02";

        self._ID9433 = level._ID30895["chicken"][var_0];
        _ID42259::_ID3111( self, var_0 );
    }
}

museum_chicken_credits_stop()
{
    _ID42237::_ID14413( "favela_done" );
    self _meth_8155( self._ID9433, 1, 0, 0 );
}

h2_wh_animated_lantern()
{
    self._ID3189 = "lantern";
    _ID42407::_ID3428();
    wait(_func_0BA( 0, 3 ));
    _ID42259::_ID3092( [ self ], "idle", _func_0BA( 0.8, 1.2 ) );
    thread _ID42259::_ID3044( self, "idle", "kill_anim" );
    _func_157( level._ID1426["lamp_ceiling_glow"], self, "tag_light" );
    _func_157( level._ID1426["lamp_ceiling_dust"], self, "tag_light" );
}
