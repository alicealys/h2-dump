// H2 PC GSC
// Decompiled by https://github.com/xensik/gsc-tool

_ID44880( var_0 )
{
    _ID42407::_ID32187( 1 );
    self._ID3130 = level._ID48818;

    if ( !isdefined( level._ID51765[var_0] ) )
        level._ID51765[var_0] = [];

    level._ID51765[var_0][level._ID51765[var_0].size] = self;
    var_1 = self;

    if ( isdefined( self.target ) )
    {
        var_1 = _ID42237::_ID16638( self.target, "targetname" );
        self._ID70 = var_1._ID70;
    }

    self._ID3048 = var_1;
    _ID47582( var_1 );
    thread _ID46126();
    thread _ID43483( var_0 );
}

_ID43483( var_0 )
{
    self waittill( "death" );

    if ( isdefined( self ) )
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
    if ( isai( self ) )
        _ID51592( var_0 );
    else
        _ID44460( var_0 );
}

_ID51592( var_0 )
{
    self endon( "panic_button" );
    self endon( "death" );
    self endon( "do_anim" );
    self._ID9433 = _ID42407::_ID16122( var_0 );
    self._ID47419 = _ID42407::_ID16122( var_0 );
    thread _ID46126();
    _ID50624();
    waitframe;
    self._ID54599 = undefined;
    self animcustom( ::_ID48706 );
}

_ID44460( var_0 )
{
    self endon( "do_anim" );
    self._ID9433 = _ID42407::_ID16122( var_0 );
    thread _ID46126();

    for (;;)
    {
        _ID50624();
        waitframe;
        self._ID54599 = undefined;
        var_1 = self._ID9433;
        self clearanim( var_1, 0 );
        self setanimrestart( self._ID9433, 1, 0, self._ID3130 );
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
        self clearanim( var_1, 0 );
        self animmode( "nogravity" );
        self setanimrestart( self._ID9433, 1, 0, self._ID3130 );
        _ID50624();
        waitframe;
    }
}

_ID50702( var_0, var_1 )
{
    if ( isai( self ) )
        _ID52789( var_0, var_1 );
    else
        _ID47834( var_0, var_1 );
}

_ID52789( var_0, var_1 )
{
    self endon( "panic_button" );
    self endon( "death" );
    self endon( "do_anim" );
    self._ID47419 = _ID42407::_ID16122( var_0 );
    self._ID53105 = var_1;
    self._ID9433 = _ID42407::_ID16122( var_0 );
    thread _ID46126();
    _ID50624();
    waitframe;
    self._ID54599 = undefined;
    self animcustom( ::_ID49914 );
}

_ID47834( var_0, var_1 )
{
    self endon( "do_anim" );
    self._ID9433 = _ID42407::_ID16122( var_0 );
    thread _ID46126();

    for (;;)
    {
        _ID50624();
        waitframe;
        self._ID54599 = undefined;
        var_2 = self._ID9433;
        self._ID9433 = _ID42237::_ID28945( level._ID30895["generic"][var_1] );
        self clearanim( var_2, 0 );
        self setanimrestart( self._ID9433, 1, 0, self._ID3130 );
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
        self clearanim( var_2, 0 );
        self animmode( "nogravity" );
        self setanimrestart( self._ID9433, 1, 0, self._ID3130 );
        _ID50624();
        waitframe;
    }
}

_ID50624( var_0, var_1 )
{
    if ( !isdefined( self._ID9433 ) )
        return;

    if ( !isdefined( var_1 ) )
        var_1 = 0;

    var_2 = getanimlength( self._ID9433 );

    if ( isdefined( var_0 ) && isdefined( self._ID54599 ) )
        var_2 *= ( var_0 - self._ID54599 );
    else if ( isdefined( var_0 ) )
        var_2 *= var_0;
    else if ( isdefined( self._ID54599 ) )
        var_2 *= ( 1.0 - self._ID54599 );

    var_3 = var_2 / self._ID3130 + var_1;

    if ( var_3 > 0 )
        wait(var_3);
}

_ID47190( var_0, var_1, var_2 )
{
    if ( isai( self ) )
        _ID44979( var_0, var_1, var_2 );
    else
        _ID53179( var_0, var_1, var_2 );
}

_ID44979( var_0, var_1, var_2 )
{
    self endon( "panic_button" );
    self endon( "death" );
    wait 0.1;
    _ID50624( var_1, var_2 );
    waitframe;
    self._ID54599 = undefined;
    self._ID47419 = var_0;
    self._ID53679 = var_1;
    self._ID46954 = var_2;
    self animcustom( ::_ID53532 );
}

_ID53179( var_0, var_1, var_2 )
{
    _ID50624( var_1, var_2 );
    waitframe;
    self._ID54599 = undefined;
    var_3 = self._ID9433;
    self._ID9433 = var_0;
    self clearanim( var_3, 0.2 );
    self setanimrestart( self._ID9433, 1, 0.2, self._ID3130 );
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

    if ( isdefined( self._ID47419 ) )
        var_0 = self._ID47419;

    if ( isdefined( self._ID53679 ) )
        var_1 = self._ID53679;

    if ( isdefined( self._ID46954 ) )
        var_2 = self._ID46954;

    var_3 = self._ID9433;
    self._ID9433 = var_0;
    self clearanim( var_3, 0.2 );
    self animmode( "nogravity" );
    self setanimrestart( self._ID9433, 1, 0.2, self._ID3130 );
    self waittill( "new_custom_anim" );
}

_ID46126()
{
    if ( isai( self ) )
        _ID49652();
    else
        _ID47514();
}

_ID49652()
{
    self endon( "panic_button" );
    self endon( "death" );

    while ( !_ID42407::_ID13023( "do_anim" ) )
        wait 0.05;

    _ID42407::_ID13027( "do_anim" );
    _ID42407::_ID13031( "do_anim" );
    self animcustom( ::_ID49361 );
}

_ID47514()
{
    while ( !_ID42407::_ID13023( "do_anim" ) )
        wait 0.05;

    _ID42407::_ID13027( "do_anim" );
    _ID42407::_ID13031( "do_anim" );
    self setanim( self._ID9433, 1, 0, 0 );
}

_ID49361()
{
    self endon( "killanimscript" );
    self endon( "panic_button" );
    self endon( "death" );
    self notify( "new_custom_anim" );
    self animmode( "nogravity" );
    self setanim( self._ID9433, 1, 0, 0 );
    self waittill( "new_custom_anim" );
}

_ID44299( var_0, var_1, var_2, var_3 )
{
    if ( isai( self ) )
        _ID52326( var_0, var_1, var_2, var_3 );
    else
        _ID52929( var_0, var_1, var_2, var_3 );
}

_ID52326( var_0, var_1, var_2, var_3 )
{
    self._ID47419 = var_0;
    self._ID49637 = var_1;
    self._ID48720 = var_2;
    self._ID53076 = var_3;
    self animcustom( ::_ID53908 );
}

_ID52929( var_0, var_1, var_2, var_3 )
{
    self setanim( var_0, var_1, var_2, var_3 );
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

    if ( isdefined( self._ID45053 ) )
        self animmode( self._ID45053 );
    else
        self animmode( "nogravity" );

    self setanim( var_0, var_1, var_2, var_3 );
    self waittill( "new_custom_anim" );
}

_ID52822( var_0, var_1 )
{
    wait 0.05;
    self._ID54599 = var_1;
    var_2 = spawn( "script_origin", getstartorigin( var_0.origin, var_0.angles, _ID42407::_ID16122( var_0._ID70 ) ) );
    var_2.angles = getstartangles( var_0.origin, var_0.angles, _ID42407::_ID16122( var_0._ID70 ) );
    var_3 = getangledelta( _ID42407::_ID16122( var_0._ID70 ), 0, self._ID54599 );
    var_4 = var_2 localtoworldcoords( var_3 );
    var_5 = getmovedelta( _ID42407::_ID16122( var_0._ID70 ), 0, self._ID54599 );
    self setanimtime( _ID42407::_ID16122( var_0._ID70 ), self._ID54599 );

    if ( isai( self ) )
        self forceteleport( var_4, var_2.angles + ( 0, var_5, 0 ) );
    else
    {
        self.origin = var_4;
        self.angles = var_2.angles + ( 0, var_5, 0 );
    }

    var_2 _ID42237::_ID10192( 0.05, ::delete );
}

_ID46347( var_0, var_1, var_2, var_3 )
{
    var_4 = getvehiclenode( var_0, "targetname" );
    var_5 = level._ID6678;
    level._ID6678 = _ID42411::_ID35196( "credits_camera" );
    level._ID6678 vehicle_teleport( var_4.origin, var_4.angles );
    level._ID6678 thread _ID42411::_ID40218( var_4 );
    level._ID6678 attachpath( var_4 );
    level._ID6678 vehicle_setspeedimmediate( 0, 1000, 1000 );

    if ( !isdefined( var_1 ) )
        var_1 = 30;

    var_6 = distance( level._ID6678.origin, var_5.origin );
    var_7 = var_6 / var_1;

    if ( !isdefined( var_2 ) )
        var_2 = 0.25;

    if ( !isdefined( var_3 ) )
        var_3 = 0.25;

    if ( !var_2 && !var_3 )
        level.player playerlinktoblend( level._ID6678, undefined, var_7 );
    else
        level.player playerlinktoblend( level._ID6678, undefined, var_7, var_7 * var_2, var_7 * var_3 );

    thread h2_museum_parent_camera_delta( var_7 );

    if ( var_7 > 0.5 && var_7 < 1.0 )
        wait(var_7);
    else if ( var_7 > 1.0 )
        wait(var_7 - 1.0);

    var_5 _ID42237::_ID10192( 1.5, ::delete );
}

h2_museum_prepare_exhibit_input( var_0, var_1, var_2 )
{
    wait(var_2);
    _ID42237::_ID14413( var_0 );

    if ( !_ID42237::_ID14385( "in_an_exhibit" ) )
    {
        _ID42237::_ID14402( "in_an_exhibit" );
        _ID42237::_ID14413( "camera_is_parented_delta" );
        thread h2_museum_listen_for_player_input( var_1 );
        _ID42237::_ID14413( var_1 );
        _ID42237::_ID14388( "camera_is_parented_delta" );
        _ID42237::_ID14413( "exhibit_zoomout_done" );
        h2_museum_cleanup_exhibit_flags();
    }
}

h2_museum_custom_exhibit( var_0, var_1, var_2 )
{
    wait(var_0);

    if ( !_ID42237::_ID14385( "in_an_exhibit" ) )
    {
        _ID42237::_ID14402( "in_an_exhibit" );

        if ( var_2 == 1 )
            thread h2_museum_parent_camera_delta( 0 );

        _ID42237::_ID14413( "camera_is_parented_delta" );
        thread h2_museum_listen_for_player_input( "custom_exhibit_done" );
        wait(var_1 - var_0);
        _ID42237::_ID14402( "custom_exhibit_done" );
        _ID42237::_ID14388( "camera_is_parented_delta" );
        _ID42237::_ID14413( "exhibit_zoomout_done" );
        var_3 = 1;
        level.player playerlinktoblend( level._ID6678, undefined, var_3, 0, var_3 * 0.33 );
        h2_museum_cleanup_exhibit_flags();
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
        level.player playerlinktodelta( level._ID6678, undefined, 1.0, 0, 0, 0, 0, 1 );
        level.player setviewangleresistance( 50, 50, 20, 20 );
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

    var_4 = ( var_1 - var_2 ) / 1.33;
    var_5 = 0.5625 * var_4;
    var_6 = 0;

    while ( !_ID42237::_ID14385( var_0 ) )
    {
        if ( level.player adsbuttonpressed() )
        {
            if ( var_6 == 0 )
            {
                var_6 = 1;
                thread h2_museum_player_fovchange( var_2, var_3 );
                level.player lerpviewangleclamp( var_3, var_3 * 0.5, var_3 * 0.5, var_4, var_4, var_5, var_5 );
                level.player setviewangleresistance( 50, 50, 20, 20 );
            }
        }
        else if ( var_6 == 1 )
        {
            var_6 = 0;
            thread h2_museum_player_fovchange( var_1, var_3 );
            level.player lerpviewangleclamp( var_3, var_3 * 0.5, var_3 * 0.5, 0, 0, 0, 0 );
            level.player setviewangleresistance( 50, 50, 20, 20 );
        }

        wait 0.05;
    }

    var_7 = _ID42237::_ID37527( var_0 == "custom_exhibit_done", 1.0, 2.0 );
    thread h2_museum_player_fovchange( var_1, var_3 * var_7 );
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
    if ( level._ID44088 == "free" || self.classname == "actor_enemy_dog" || issubstr( self.classname, "ally_socom_" ) || issubstr( self.classname, "actor_enemy_juggernaut" ) )
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
    foreach ( var_2 in level._ID51765[var_0] )
        var_2 _ID42407::_ID13025( "do_anim" );
}

_ID44199()
{
    self endon( "death" );
    self waittill( "reached_path_end" );
    self delete();
}

_ID51044()
{
    self endon( "death" );
    wait 0.1;
    var_0 = self;

    if ( isdefined( self.target ) )
    {
        var_0 = _ID42237::_ID16638( self.target, "targetname" );
        self._ID70 = var_0._ID70;
    }

    if ( var_0._ID70 == "civilian_texting_sitting" )
        self attach( "electronics_pda", "TAG_INHAND" );

    _ID42407::_ID32187( 1 );
    var_0 _ID42259::_ID3025( self, var_0._ID70 );
}

_ID54372()
{
    self endon( "death" );
    var_0 = _ID42237::_ID16299( "scuba_bubbles_friendly" );

    while ( _ID42407::_ID13019( "do_anim" ) )
    {
        var_1 = randomint( 3 ) + 1;

        for ( var_2 = 0; var_2 < var_1; var_2++ )
        {
            playfxontag( var_0, self, "tag_eye" );
            wait 0.05;
        }

        wait(randomfloatrange( 0.6, 2.5 ));
    }
}

_ID52707()
{
    self.ignoreme = 1;
    thread _ID49347::weapons_specialfeatures_reset();
    var_0 = "beretta";
    var_1 = "viewhands_us_army";
    self takeallweapons();
    self giveweapon( var_0 );
    self switchtoweapon( var_0 );
    self setviewmodel( var_1 );
    self setoffhandprimaryclass( "fraggrenade" );
    self giveweapon( "fraggrenade" );
    self setoffhandsecondaryclass( "flash_grenade" );
    self giveweapon( "flash_grenade" );
    self freezecontrols( 1 );
    thread _ID49347::weapons_specialfeatures();
}

_ID49885()
{
    var_0 = self.script_noteworthy;

    for (;;)
    {
        self waittill( "trigger",  var_1  );

        if ( isplayernumber( var_1 ) && level._ID49963 != var_0 )
        {
            _ID45460();

            while ( var_1 istouching( self ) )
                wait 0.05;
        }
    }
}

_ID45460()
{
    if ( _ID42237::_ID14385( "panic_button" ) )
        return;

    level._ID49963 = self.script_noteworthy;

    if ( level._ID44088 == "free" )
        level._ID17617 = getaispeciesarray();

    foreach ( var_1 in level._ID17617 )
    {
        if ( isdefined( var_1 ) )
            var_1 delete();
    }

    if ( isdefined( level._ID30179 ) )
    {
        level._ID30179 delete();
        level._ID30179 = undefined;
    }

    level._ID17617 = [];
    wait 0.05;

    if ( level._ID49963 == "none" )
        return;

    var_3 = getentarray( self.script_noteworthy, "targetname" );

    if ( level._ID44088 == "free" )
    {
        switch ( self.script_noteworthy )
        {
            case "room1":
                maps\char_museum::_ID46166();
                break;
            case "room2":
                maps\char_museum::_ID53550();
                break;
        }
    }

    _ID42237::_ID3350( var_3, ::_ID51643 );
}

_ID51643()
{
    self.count = 3;
    _ID42407::_ID35014( 1 );
}

_ID50810()
{
    self endon( "death" );
    _ID42407::_ID13024( "do_anim" );
    self.ignoreme = 1;
    self.ignoreall = 1;
    self._ID46957 = [];
    self._ID46957["grenadeawareness"] = self.grenadeawareness;
    self._ID46957["ignoreexplosionevents"] = self.ignoreexplosionevents;
    self._ID46957["ignorerandombulletdamage"] = self.ignorerandombulletdamage;
    self._ID46957["ignoresuppression"] = self.ignoresuppression;
    self._ID46957["disableBulletWhizbyReaction"] = self._ID11002;
    self._ID46957["newEnemyReactionDistSq"] = self.newenemyreactiondistsq;
    self._ID46957["health"] = self.health;
    self._ID46957["maxhealth"] = self.maxhealth;
    self._ID46957["flashbangimmunity"] = self._ID14507;
    self.grenadeawareness = 0;
    self.ignoreexplosionevents = 1;
    self.ignorerandombulletdamage = 1;
    self.ignoresuppression = 1;
    self._ID11002 = 1;
    self.newenemyreactiondistsq = 0;
    self.name = " ";
    self.health = 1;
    self.maxhealth = 1;
    self._ID14507 = 1;
    _ID42407::_ID26355();

    if ( isdefined( self.team ) && self.team == "axis" )
        self.team = "neutral";

    if ( isai( self ) )
    {
        _ID42407::_ID10949();
        self clearenemy();
        self pushplayer( 1 );
        jump loc_EC1
    }

    self.alertlevel = "noncombat";

    if ( isdefined( self.type ) && self.type == "civilian" )
        return;

    level._ID17617[level._ID17617.size] = self;
}

_ID43902()
{
    foreach ( var_1 in level._ID805 )
    {
        var_1._ID5261 = _ID42313::_ID9125( "black", 0, var_1 );
        var_1._ID5261.alpha = 1;
    }
}

_ID43899( var_0 )
{
    foreach ( var_2 in level._ID805 )
    {
        var_2._ID5261 fadeovertime( var_0 );
        var_2._ID5261.alpha = 0;
        var_2._ID5261 _ID42237::_ID10192( var_0, ::destroy );
    }
}

_ID48755()
{
    var_0 = _ID49411();
    _ID42237::_ID3350( var_0, ::_ID49053 );
    level._ID46762 = var_0;
    var_1 = [];
    var_1[var_1.size] = "delayed";
    var_0 = _ID42237::_ID3320( level._ID46762 );
    _ID42237::_ID14413( "looked_at_big_board" );
    var_2 = getentarray( "snd_departure_board", "targetname" );

    foreach ( var_4 in var_2 )
        var_4 playsound( var_4._ID31438 );

    var_0 = _ID42237::_ID3320( level._ID46762 );

    foreach ( var_7 in var_0 )
    {
        var_7 thread _ID43595( var_1[randomint( var_1.size )] );
        wait 0.2;
    }
}

_ID49411()
{
    var_0 = getentarray( "sign_departure_status", "targetname" );
    var_1 = [];

    foreach ( var_3 in var_0 )
    {
        var_4 = 1;
        var_5 = var_3.origin;

        foreach ( var_7 in var_1 )
        {
            if ( var_7.origin != var_5 )
                continue;

            var_4 = 0;
            var_7._ID50590[var_3.script_noteworthy] = var_3;
            break;
        }

        if ( !var_4 )
            continue;

        var_9 = spawnstruct();
        var_9.origin = var_5;
        var_9._ID50590 = [];
        var_9._ID50590[var_3.script_noteworthy] = var_3;
        var_1[var_1.size] = var_9;
    }

    return var_1;
}

_ID49053()
{
    self._ID36223["angles"] = [];
    self._ID36223["angles"]["bottom"] = self._ID50590["ontime"].angles;
    self._ID36223["angles"]["top"] = self._ID50590["boarding"].angles;
    self._ID36223["angles"]["waiting"] = self._ID50590["delayed"].angles;
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
    self._ID50590["arriving"].angles = self._ID36223["angles"]["top"];
    self._ID50590["boarding"].angles = self._ID36223["angles"]["waiting"];
    self._ID50590["boarding"] hide();
    self._ID50590["delayed"] hide();
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
        var_6 rotatepitch( 180, var_1 );
        var_8.angles = self._ID36223["angles"]["top"];
        wait 0.05;
        var_8 show();
        wait(var_1 - 0.1);
        var_7 hide();
        var_7.angles = self._ID36223["angles"]["waiting"];
        wait 0.05;
    }
}

_ID52279()
{
    self endon( "death" );
    self._ID17509 = 1;
    _ID42407::_ID17509();
    var_0 = getweaponmodel( "beretta" );
    self attach( var_0, "tag_weapon_right" );
    self hidepart( "TAG_SILENCER" );
    self waittill( "panic_button" );
    self detach( var_0, "tag_weapon_right" );
}

_ID45527( var_0, var_1 )
{
    self endon( "panic_button" );
    self endon( "death" );
    self endon( "do_anim" );
    self._ID47419 = _ID42407::_ID16122( var_0 );
    self._ID53105 = var_1;
    self._ID9433 = _ID42407::_ID16122( var_0 );
    thread _ID46126();
    _ID50624();
    waitframe;
    self animcustom( ::_ID52380 );
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
        self clearanim( var_2, 0 );
        self animmode( "nogravity" );
        self setanimrestart( self._ID9433, 1, 0, self._ID3130 );
        _ID50624();
        waitframe;
    }
}

_ID44661()
{
    thread _ID42237::_ID44574( level.player, &"CHAR_MUSEUM_DO_NOT", &"CHAR_MUSEUM_DO_NOT_PC", "trigger" );
    self usetriggerrequirelookat();
    thread _ID47456();
    thread _ID54736();
    var_0 = getent( self.target, "targetname" );
    var_0 _ID42407::_ID13024( "ready" );
    var_0 _ID42407::_ID13025( "ready" );
    var_1 = getentarray( "panic_button", "targetname" );
    var_2 = [];

    foreach ( var_4 in var_1 )
        var_2[var_2.size] = getent( var_4.target, "targetname" );

    foreach ( var_8, var_7 in var_2 )
    {
        var_7 _ID42407::_ID3428( "bell" );
        var_1[var_8] _ID42259::_ID3018( var_7, "pressing_button_infront" );
    }

    for (;;)
    {
        var_0 _ID42407::_ID13027( "ready" );
        self waittill( "trigger" );
        _ID42475::_ID34575( "aud_start_battle_mix" );
        panic_button_body_sense();
        var_9 = getaispeciesarray();

        if ( !var_9.size )
            continue;

        if ( !_ID46802( var_9 ) )
            continue;

        if ( _ID42237::_ID14385( "panic_button" ) )
            continue;

        _ID42237::_ID14402( "panic_button" );
        _ID42237::_ID3350( level._ID805, _ID42407::_ID28099, "arcademode_kill_streak_lost" );
        level.player.ignoreme = 0;
        _ID42237::_ID3350( var_9, ::_ID45396 );
        var_10 = 32;
        var_11 = 26;

        if ( self.script_noteworthy == "room1_button" && var_9.size == var_10 )
            thread do_not_push_this_button_think( self.script_noteworthy );
        else if ( self.script_noteworthy == "room2_button" && var_9.size == var_11 )
            thread do_not_push_this_button_think( self.script_noteworthy );

        _ID42237::_ID14426( "panic_button" );
        _ID42475::_ID34575( "aud_stop_battle_mix" );
    }
}

panic_button_body_sense()
{
    var_0 = getent( _ID42237::_ID16182( level.player.origin, getentarray( "panic_button", "targetname" ), 512 ).target, "targetname" );

    if ( ( _ID42237::_ID14385( "button_infront" ) || _ID42237::_ID14385( "button_behind" ) ) && level.player isonground() && level.player getstance() != "prone" )
    {
        setsaveddvar( "actionSlotsHide", 1 );
        setsaveddvar( "compass", 0 );
        setsaveddvar( "hud_showStance", 0 );
        setsaveddvar( "ammoCounterHide", 1 );
        var_1 = spawn( "script_origin", var_0.origin + ( 0, 0, 8 ) );
        var_2 = _ID42407::_ID35028( "viewbody" );
        var_2 _ID42407::_ID3428();
        var_2 dontcastshadows();
        var_2 hide();

        if ( _ID42237::_ID14385( "button_infront" ) )
            var_1 _ID42259::_ID3018( var_2, "pressing_button_infront" );
        else
            var_1 _ID42259::_ID3018( var_2, "pressing_button_behind" );

        level.player allowcrouch( 0 );
        level.player allowprone( 0 );
        level.player disableweapons( 1, 200, 0.1 );
        var_3 = level.player _ID42259::_ID53505( var_2, 40, 100, 0.2, 0.5 );
        level.player playerlinktoblend( var_2, "tag_player", var_3, var_3 / 4, var_3 / 4 );
        wait(var_3 + 0.05);
        var_2 show();

        if ( _ID42237::_ID14385( "button_infront" ) )
        {
            thread h2_button_press( "front", var_0 );
            thread _ID42259::_ID3111( var_0, "pressing_button_infront" );
            var_1 _ID42259::_ID3111( var_2, "pressing_button_infront" );
        }
        else
        {
            thread h2_button_press( "back", var_0 );
            thread _ID42259::_ID3111( var_0, "pressing_button_behind" );
            var_1 _ID42259::_ID3111( var_2, "pressing_button_behind" );
        }

        level.player unlink();
        var_2 delete();
        level.player allowcrouch( 1 );
        level.player allowprone( 1 );
        level.player enableweapons();
        setsaveddvar( "actionSlotsHide", 0 );
        setsaveddvar( "compass", 1 );
        setsaveddvar( "hud_showStance", 1 );
        setsaveddvar( "ammoCounterHide", 0 );
    }
    else
        thread _ID42259::_ID3111( var_0, "pressing_button_else" );
}

h2_button_press( var_0, var_1 )
{
    var_2 = _ID54167::_ID43386( "bell" + var_0, 1 );

    switch ( var_0 )
    {
        case "front":
            var_2 _ID54167::_ID48800( 0.0 ) _ID54167::_ID50321( 12, -1, 16.0, 16.0 ) _ID54167::_ID52391( var_1, "tag_origin" ) _ID54167::_ID44518( -4 ) _ID54167::_ID44956();
            var_2 _ID54167::_ID48800( 0.25 ) _ID54167::_ID50321( 4.2, -1, 6.0, 6.0 ) _ID54167::_ID52391( var_1, "tag_origin" ) _ID54167::_ID44518( -4 );
            var_2 _ID54167::_ID48800( 0.9 ) _ID54167::_ID50321( 12, -1, 8.0, 8.0 ) _ID54167::_ID52391( var_1, "tag_origin" ) _ID54167::_ID44518( -4 );
            var_2 _ID54167::_ID48800( 1.35 ) _ID54167::_ID48959();
            var_2 _ID54167::_ID48800( 0.65 ) _ID54167::_ID47198( 0.08, 0.3, level.player, 10000 ) _ID54167::_ID48161( "tank_rumble", level.player, 0.15 );
            break;
        case "back":
            var_2 _ID54167::_ID48800( 0.0 ) _ID54167::_ID50321( 12, -1, 16.0, 16.0 ) _ID54167::_ID52391( var_1, "tag_origin" ) _ID54167::_ID44518( -4 ) _ID54167::_ID44956();
            var_2 _ID54167::_ID48800( 0.25 ) _ID54167::_ID50321( 4.2, -1, 6.0, 6.0 ) _ID54167::_ID52391( var_1, "tag_origin" ) _ID54167::_ID44518( -4 );
            var_2 _ID54167::_ID48800( 1.4 ) _ID54167::_ID50321( 12, -1, 8.0, 8.0 ) _ID54167::_ID52391( var_1, "tag_origin" ) _ID54167::_ID44518( -4 );
            var_2 _ID54167::_ID48800( 2.0 ) _ID54167::_ID48959();
            var_2 _ID54167::_ID48800( 0.3 ) _ID54167::_ID47198( 0.06, 0.2, level.player, 10000 ) _ID54167::_ID48161( "tank_rumble", level.player, 0.05 );
            var_2 _ID54167::_ID48800( 1.0 ) _ID54167::_ID47198( 0.08, 0.3, level.player, 10000 ) _ID54167::_ID48161( "tank_rumble", level.player, 0.15 );
            break;
    }

    var_2 _ID54167::_ID48166();
}

do_not_push_this_button_think( var_0 )
{
    level.player endon( "death" );

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

    if ( !isdefined( self._ID38863 ) )
        _ID42237::_ID38863();

    var_0 movez( -1, 0.1 );
    var_0 playsound( "detpack_trigger" );
    wait 1;
    var_0 movez( 1, 0.1 );
    wait 0.25;
    var_0 _ID42407::_ID13025( "ready" );
    _ID42237::_ID14426( "panic_button" );

    if ( isdefined( self._ID38863 ) )
        _ID42237::_ID38865();
}

_ID54736()
{
    for (;;)
    {
        _ID42237::_ID14413( "panic_button" );

        if ( !isdefined( self._ID38863 ) )
            _ID42237::_ID38863();

        _ID42237::_ID14426( "panic_button" );

        if ( isdefined( self._ID38863 ) )
            _ID42237::_ID38865();
    }
}

_ID47456()
{
    var_0 = spawn( "trigger_radius", self.origin, 0, 50, 72 );
    var_1 = newhudelem();
    var_1 setshader( "panic_button", 1, 1 );
    var_1.alpha = 0;
    var_1.color = ( 1, 1, 1 );
    var_1.x = self.origin[0];
    var_1.y = self.origin[1];
    var_1.z = self.origin[2];
    var_1 setwaypoint( 1, 0, 0 );
    wait 0.05;

    for (;;)
    {
        var_0 waittill( "trigger",  var_2  );

        if ( !isplayernumber( var_2 ) )
            continue;

        while ( var_2 istouching( var_0 ) )
        {
            var_3 = 1;

            if ( _ID42407::_ID27540( self.origin, 0.8, 1 ) && var_3 )
                _ID53579( var_1 );
            else
                _ID52917( var_1 );

            wait 0.25;
        }

        _ID52917( var_1 );
    }
}

_ID53579( var_0 )
{
    if ( var_0.alpha != 0 )
        return;

    var_0 fadeovertime( 0.2 );
    var_0.alpha = 0.6;
    wait 0.2;
}

_ID52917( var_0 )
{
    if ( var_0.alpha == 0 )
        return;

    var_0 fadeovertime( 0.2 );
    var_0.alpha = 0;
    wait 0.2;
}

_ID46802( var_0 )
{
    foreach ( var_2 in var_0 )
    {
        if ( var_2 _ID45251() )
            return 1;
    }

    return 0;
}
#using_animtree("generic_human");

_ID45251()
{
    if ( isdefined( self._ID9433 ) && ( self._ID9433 == %oilrig_sub_b_idle_3 || self._ID9433 == %oilrig_sub_b_idle_4 ) )
        return 0;

    if ( isdefined( self.type ) && self.type == "civilian" )
        return 0;

    return 1;
}

_ID45396()
{
    if ( !isalive( self ) )
        return;

    if ( !_ID45251() )
        return;

    if ( self.classname == "actor_enemy_villian_shepherd" )
    {
        _ID42407::_ID14803( self._ID34144, "primary" );
        self.neverswitchweapon = 1;
    }

    self notify( "panic_button" );
    self notify( "stop_first_frame" );
    self stopanimscripted();

    if ( self._ID3048._ID70 == "gulag_end_evac_soap" )
    {
        self unlink();
        var_0 = self getdroptofloorposition( self.origin );
        self forceteleport( var_0, self.angles );
    }

    if ( isdefined( self._ID17509 ) )
        _ID42407::_ID17508();

    thread _ID49443();
    self.grenadeawareness = self._ID46957["grenadeawareness"];
    self.ignoreexplosionevents = self._ID46957["ignoreexplosionevents"];
    self.ignorerandombulletdamage = self._ID46957["ignorerandombulletdamage"];
    self.ignoresuppression = self._ID46957["ignoresuppression"];
    self._ID11002 = self._ID46957["disableBulletWhizbyReaction"];
    self.newenemyreactiondistsq = self._ID46957["newEnemyReactionDistSq"];
    self._ID14507 = self._ID46957["flashbangimmunity"];
    self.health = 150;
    self.maxhealth = 150;

    if ( isdefined( self._ID21151 ) && self._ID21151 == 1 )
    {
        self.health = 3600;
        self.maxhealth = 3600;
    }

    if ( isdefined( self._ID31247 ) )
    {
        self.health = self._ID31247;
        self.maxhealth = self._ID31247;
    }

    _ID42407::_ID26353();
    _ID42407::_ID12508();
    self pushplayer( 0 );
    self.goalradius = 4000;
    self.fixednode = 0;
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
    wait(randomfloat( 0.5 ));
    self.ignoreall = 0;
    self.ignoreme = 0;
    self.team = "axis";
    self.favoriteenemy = level.player;
}

_ID49164()
{
    wait(randomfloatrange( 0, 0.6 ));
    playfxontag( _ID42237::_ID16299( "c4_blink" ), self, "tag_fx" );
}

museum_vfx_volumes()
{
    level _ID42237::_ID41068( "createfx_common_done", "start_is_set" );

    if ( isdefined( level._ID9228 ) && level._ID9228 )
        return;

    if ( isdefined( level._ID35897 ) && level._ID35897 == "no_game" || level._ID35897 == "museum_credits" )
        return;

    var_0 = [ "northeast_vfx", "south_vfx", "northwest_vfx" ];
    var_1 = [];

    foreach ( var_3 in var_0 )
    {
        _ID42407::_ID53651( var_3, var_3 );
        _ID42407::_ID52583( var_3, getentarray( var_3, "targetname" ) );
    }

    _ID42237::_ID14402( "northwest_vfx" );
}

museum_monitors()
{
    var_0 = getentarray( "museum_monitor", "targetname" );

    if ( level._ID44088 == "free" )
        _ID42237::_ID3350( var_0, ::museum_monitors_physics );
    else
        _ID42237::_ID3350( var_0, ::museum_monitors_model );
}

museum_monitors_physics()
{
    self physicslaunchclient( self.origin, ( 0, 0, 0 ) );
}

museum_monitors_model()
{
    if ( self.model == "com_widescreen_monitor_2" )
        self setmodel( "h2_com_widescreen_monitor_on_0" + ( randomint( 8 ) + 1 ) );

    _ID42237::_ID14413( "favela_done" );
    self hide();
    wait 5;
    self show();
}

museum_chicken()
{
    var_0 = getent( "favela_chicken", "targetname" );
    var_0 _ID42407::_ID3428( "chicken" );

    switch ( randomint( 3 ) )
    {
        case 1:
            var_0 setmodel( "chicken_white" );
            break;
        case 2:
            var_0 setmodel( "chicken_black_white" );
            break;
        default:
            break;
    }

    if ( level._ID44088 == "free" )
        var_0 thread museum_chicken_free();
    else
    {
        var_0 thread museum_chicken_credits();
        return;
    }

    var_0 setcandamage( 1 );

    for (;;)
    {
        var_0 waittill( "damage",  var_1, var_2  );

        if ( isplayernumber( var_2 ) )
            break;
    }

    var_0 notify( "death" );
    var_0 stopanimscripted();
    var_0 thread _ID42407::_ID27079( "animal_chicken_death" );

    if ( randomint( 2 ) )
        var_3 = "chicken_cage_death";
    else
        var_3 = "chicken_cage_death_02";

    var_0 _ID42259::_ID3111( var_0, var_3 );
}

museum_chicken_free()
{
    self endon( "death" );
    thread museum_chicken_free_start_stop();

    for (;;)
    {
        if ( randomint( 2 ) )
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
            self setanim( self._ID9433, 1, 0, 1 );
        else if ( _ID42237::_ID14385( "favela_go" ) && !_ID42237::_ID14385( "favela_done" ) )
            self setanim( self._ID9433, 1, 0, level._ID48818 );
        else
            self setanim( self._ID9433, 1, 0, 0 );

        level _ID42237::_ID41068( "favela_go", "favela_done", "panic_button" );
    }
}

museum_chicken_credits()
{
    _ID42259::_ID3018( self, "chicken_cage_loop_01" );
    thread museum_chicken_credits_stop();
    _ID42237::_ID14413( "favela_go" );
    wait 3;
    _ID42259::_ID3111( self, "chicken_cage_loop_01" );

    for (;;)
    {
        if ( randomint( 2 ) )
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
    self setanim( self._ID9433, 1, 0, 0 );
}

h2_wh_animated_lantern()
{
    self._ID3189 = "lantern";
    _ID42407::_ID3428();
    wait(randomfloatrange( 0, 3 ));
    _ID42259::_ID3092( [ self ], "idle", randomfloatrange( 0.8, 1.2 ) );
    thread _ID42259::_ID3044( self, "idle", "kill_anim" );
    playfxontag( level._ID1426["lamp_ceiling_glow"], self, "tag_light" );
    playfxontag( level._ID1426["lamp_ceiling_dust"], self, "tag_light" );
}
