// H2 PC GSC
// Decompiled by https://github.com/xensik/gsc-tool
#using_animtree("generic_human");

_ID19852( var_0 )
{
    self clearanim( %body, 0.3 );
    self setanim( %body, 1, 0 );

    if ( var_0 != "pain" && var_0 != "death" )
        self._ID7._ID35357 = "none";

    self._ID7._ID2433 = 1.0;
    self._ID7._ID2435 = 1.0;
    self._ID7._ID2434 = 1.0;
    self._ID7._ID2437 = 0;
    self._ID7._ID2436 = 0;
    _ID39726();
}

_ID39672()
{
    if ( isdefined( self._ID10423 ) && self._ID10423 != self._ID7._ID28253 )
    {
        if ( self._ID7._ID28253 == "prone" )
            _ID13390( 0.5 );

        if ( self._ID10423 == "prone" )
        {
            self setproneanimnodes( -45, 45, %prone_legs_down, %exposed_aiming, %prone_legs_up );
            _ID13067( 0.5 );
            self setanimknoball( _ID22630( "default_prone", "straight_level" ), %body, 1, 0.1, 1 );
        }
    }

    self._ID10423 = undefined;
}

_ID19930( var_0 )
{
    if ( isdefined( self._ID22609 ) )
    {
        if ( var_0 != "pain" && var_0 != "death" )
            self kill( self._ID740 );

        if ( var_0 != "pain" )
        {
            self._ID22609 = undefined;
            self notify( "kill_long_death" );
        }
    }

    if ( isdefined( self._ID7._ID23138 ) && var_0 != "death" )
        self kill( self._ID740 );

    if ( isdefined( self._ID7._ID28304 ) )
    {
        var_1 = self._ID7._ID28304;
        self._ID7._ID28304 = undefined;
        [[ var_1 ]]( var_0 );
    }

    if ( var_0 != "combat" && var_0 != "pain" && var_0 != "death" && _ID39997() )
        animscripts\combat::_ID36995( _ID22630( "combat", "pistol_to_primary" ), 1 );

    if ( var_0 != "combat" && var_0 != "move" && var_0 != "pain" )
        self._ID7._ID22753 = undefined;

    if ( var_0 != "death" )
        self._ID7._ID24881 = 0;

    if ( isdefined( self._ID20766 ) && ( var_0 == "pain" || var_0 == "death" || var_0 == "flashed" ) )
        animscripts\combat_utility::_ID12146();

    self._ID20766 = undefined;
    animscripts\squadmanager::_ID2476( var_0 );
    self._ID8893 = undefined;
    self._ID36839 = 0;
    self._ID20879 = 0;
    self._ID7305 = 0;
    self._ID7._ID2428 = undefined;
    self._ID7._ID31561 = gettime();
    self._ID7._ID3462 = 0;
    self._ID7._ID52500 = 0;

    if ( isdefined( self._ID700 ) && ( self._ID700._ID1244 == "Conceal Prone" || self._ID700._ID1244 == "Conceal Crouch" || self._ID700._ID1244 == "Conceal Stand" ) )
    {
        self._ID7._ID3462 = 1;
        self._ID7._ID52500 = level._ID912 == "favela";
    }

    _ID19852( var_0 );
    _ID39672();
}

_ID16541()
{
    if ( isdefined( self._ID41303 ) && self._ID41303 )
    {
        if ( _ID20902( self._ID834 ) )
            return self._ID834;
        else if ( _ID20902( self._ID949 ) )
            return self._ID949;
    }

    return self._ID834;
}

_ID4716( var_0, var_1, var_2 )
{
    for ( var_3 = 0; var_3 < var_0 * 20; var_3++ )
    {
        for ( var_4 = 0; var_4 < 10; var_4++ )
        {
            var_5 = ( 0, randomint( 360 ), 0 );
            var_6 = anglestoforward( var_5 );
            var_7 = var_6 * var_2;
        }

        wait 0.05;
    }
}

_ID28594()
{
    self endon( "death" );
    self notify( "displaceprint" );
    self endon( "displaceprint" );

    for (;;)
        wait 0.05;
}

isincombatinternal( var_0 )
{
    if ( !isdefined( var_0 ) )
        var_0 = 1;

    if ( var_0 && self._ID39 > 1 )
        return 1;

    if ( isdefined( self._ID322 ) )
        return 1;

    return self._ID7._ID8365 > gettime();
}

_ID20775( var_0 )
{
    if ( isdefined( self.stairsstayincombat ) && self.stairsstayincombat && animscripts\stairs_utility::_ID54360() )
        return 1;

    var_1 = isincombatinternal( var_0 );

    if ( var_1 && animscripts\stairs_utility::_ID54360() )
        self.stairsstayincombat = 1;
    else
        self.stairsstayincombat = undefined;

    return var_1;
}

_ID39726()
{
    if ( isdefined( self._ID322 ) )
        self._ID7._ID8365 = gettime() + anim._ID8369 + randomint( anim._ID8370 );
}

_ID16256()
{
    if ( isdefined( self._ID322 ) )
    {
        if ( _ID42237::_ID14385( "_cloaked_stealth_enabled" ) )
            self._ID7._ID21917 = animscripts\combat_utility::_ID15797( self._ID322 );
        else
            self._ID7._ID21917 = self._ID322 getshootatpos();

        self._ID7._ID21921 = gettime();
        return self._ID7._ID21917;
    }
    else if ( isdefined( self._ID7._ID21921 ) && isdefined( self._ID7._ID21917 ) && self._ID7._ID21921 + 3000 < gettime() )
        return self._ID7._ID21917;
    else
    {
        var_0 = self getshootatpos();
        var_0 += ( 196 * self._ID604[0], 196 * self._ID604[1], 196 * self._ID604[2] );
        return var_0;
    }
}

_ID16462( var_0 )
{
    if ( !isdefined( self._ID18328 ) )
    {
        if ( _ID20830( var_0 ) )
            return var_0._ID65[1] + 90;
        else if ( _ID20833( var_0 ) )
            return var_0._ID65[1] - 90;
        else if ( var_0._ID1244 == "Cover Multi" )
        {
            if ( isdefined( self._ID217 ) && isdefined( self._ID217._ID36185 ) )
            {
                if ( self._ID217._ID36185 == "right" )
                    return var_0._ID65[1] - 90;
                else if ( self._ID217._ID36185 == "left" )
                    return var_0._ID65[1] + 90;
            }
        }
    }

    return var_0._ID65[1];
}

_ID16468( var_0 )
{
    if ( isdefined( self._ID700 ) )
        var_1 = self._ID700._ID65[1] - _ID16756( var_0 );
    else
        var_1 = self._ID65[1] - _ID16756( var_0 );

    var_1 = angleclamp180( var_1 );
    return var_1;
}

_ID16467()
{
    var_0 = undefined;

    if ( isdefined( self._ID322 ) )
        var_0 = self._ID322._ID740;
    else
    {
        if ( isdefined( self._ID700 ) )
            var_1 = anglestoforward( self._ID700._ID65 );
        else
            var_1 = anglestoforward( self._ID65 );

        var_1 *= 150;
        var_0 = self._ID740 + var_1;
    }

    if ( isdefined( self._ID700 ) )
        var_2 = self._ID700._ID65[1] - _ID16756( var_0 );
    else
        var_2 = self._ID65[1] - _ID16756( var_0 );

    var_2 = angleclamp180( var_2 );
    return var_2;
}

_ID16762( var_0 )
{
    if ( _ID20915() )
    {
        var_1 = anglestoforward( self._ID65 );
        var_2 = rotatepointaroundvector( var_1, var_0 - self._ID740, self._ID65[2] * -1 );
        var_0 = var_2 + self._ID740;
    }

    var_3 = self._ID65[1] - _ID16756( var_0 );
    var_3 = angleclamp180( var_3 );
    return var_3;
}

_ID16760()
{
    var_0 = undefined;

    if ( isdefined( self._ID322 ) )
        var_0 = self._ID322._ID740;
    else
    {
        var_1 = anglestoforward( self._ID65 );
        var_1 *= 150;
        var_0 = self._ID740 + var_1;
    }

    var_2 = self._ID65[1] - _ID16756( var_0 );
    var_2 = angleclamp180( var_2 );
    return var_2;
}

_ID16756( var_0 )
{
    return vectortoyaw( var_0 - self._ID740 );
}

_ID16757( var_0 )
{
    var_1 = vectortoangles( ( var_0[0], var_0[1], 0 ) - ( self._ID740[0], self._ID740[1], 0 ) );
    return var_1[1];
}

_ID1737()
{
    var_0 = self._ID65[1] - _ID16756( self._ID322._ID740 );
    var_0 = angleclamp180( var_0 );

    if ( var_0 < 0 )
        var_0 = -1 * var_0;

    return var_0;
}

_ID1738()
{
    var_0 = self._ID65[1] - _ID16757( self._ID322._ID740 );
    var_0 = angleclamp180( var_0 );

    if ( var_0 < 0 )
        var_0 = -1 * var_0;

    return var_0;
}

_ID1739( var_0 )
{
    var_1 = self._ID65[1] - _ID16756( var_0 );
    var_1 = angleclamp180( var_1 );

    if ( var_1 < 0 )
        var_1 = -1 * var_1;

    return var_1;
}

_ID1736( var_0 )
{
    var_1 = self._ID65[1] - var_0;
    var_1 = angleclamp180( var_1 );

    if ( var_1 < 0 )
        var_1 = -1 * var_1;

    return var_1;
}

_ID16759( var_0, var_1 )
{
    var_2 = vectortoangles( var_0 - var_1 );
    return var_2[1];
}

_ID16763( var_0, var_1 )
{
    var_2 = self gettagangles( var_0 )[1] - _ID16759( var_1, self gettagorigin( var_0 ) );
    var_2 = angleclamp180( var_2 );
    return var_2;
}

_ID16761( var_0 )
{
    if ( isdefined( self._ID1244 ) && ( self._ID1244 == "Cover Up 3D" || self._ID1244 == "Cover Left 3D" || self._ID1244 == "Cover Right 3D" || self._ID1244 == "Exposed 3D" ) )
    {
        var_1 = _ID16702( self );
        var_2 = anglestoforward( var_1 );
        var_3 = rotatepointaroundvector( var_2, var_0 - self._ID740, var_1[2] * -1 );
        var_3 += self._ID740;
        var_4 = var_1[1] - _ID16756( var_3 );
        var_4 = angleclamp180( var_4 );
        return var_4;
    }

    var_4 = self._ID65[1] - _ID16756( var_0 );
    var_4 = angleclamp180( var_4 );
    return var_4;
}

_ID16274( var_0 )
{
    var_1 = self gettagangles( "TAG_EYE" )[1] - _ID16756( var_0 );
    var_1 = angleclamp180( var_1 );
    return var_1;
}

_ID20923( var_0 )
{
    if ( isdefined( self._ID8893 ) )
        return self._ID8893 doesnodeallowstance( var_0 );

    return self isstanceallowed( var_0 );
}

_ID7496( var_0 )
{
    if ( !isdefined( var_0 ) )
        var_0 = self._ID7._ID28253;

    switch ( var_0 )
    {
        case "stand":
            if ( _ID20923( "stand" ) )
                var_1 = "stand";
            else if ( _ID20923( "crouch" ) )
                var_1 = "crouch";
            else if ( _ID20923( "prone" ) )
                var_1 = "prone";
            else
                var_1 = "stand";

            break;
        case "crouch":
            if ( _ID20923( "crouch" ) )
                var_1 = "crouch";
            else if ( _ID20923( "stand" ) )
                var_1 = "stand";
            else if ( _ID20923( "prone" ) )
                var_1 = "prone";
            else
                var_1 = "crouch";

            break;
        case "prone":
            if ( _ID20923( "prone" ) )
                var_1 = "prone";
            else if ( _ID20923( "crouch" ) )
                var_1 = "crouch";
            else if ( _ID20923( "stand" ) )
                var_1 = "stand";
            else
                var_1 = "prone";

            break;
        default:
            var_1 = "stand";
            break;
    }

    return var_1;
}

_ID16178()
{
    var_0 = self._ID700;

    if ( isdefined( var_0 ) && ( self nearnode( var_0 ) || isdefined( self._ID8893 ) && var_0 == self._ID8893 ) )
        return var_0;

    return undefined;
}

_ID16466()
{
    var_0 = _ID16178();

    if ( isdefined( var_0 ) )
        return var_0._ID1244;

    return "none";
}

_ID16459()
{
    var_0 = _ID16178();

    if ( isdefined( var_0 ) )
        return var_0._ID65[1];

    return self._ID278;
}

_ID16460()
{
    var_0 = _ID16178();

    if ( isdefined( var_0 ) )
        return anglestoforward( var_0._ID65 );

    return anglestoforward( self._ID65 );
}

_ID16465()
{
    var_0 = _ID16178();

    if ( isdefined( var_0 ) )
        return var_0._ID740;

    return self._ID740;
}

_ID30670( var_0, var_1 )
{
    var_2 = int( var_0 ) % var_1;
    var_2 += var_1;
    return var_2 % var_1;
}

_ID1735( var_0 )
{
    return abs( angleclamp180( var_0 ) );
}

_ID28805( var_0 )
{
    var_1 = cos( var_0 );
    var_2 = sin( var_0 );
    var_3["front"] = 0;
    var_3["right"] = 0;
    var_3["back"] = 0;
    var_3["left"] = 0;

    if ( isdefined( self._ID2832 ) )
    {
        var_3["front"] = 1;
        return var_3;
    }

    if ( var_1 > 0 )
    {
        if ( var_2 > var_1 )
            var_3["left"] = 1;
        else if ( var_2 < -1 * var_1 )
            var_3["right"] = 1;
        else
            var_3["front"] = 1;
    }
    else
    {
        var_4 = -1 * var_1;

        if ( var_2 > var_4 )
            var_3["left"] = 1;
        else if ( var_2 < var_1 )
            var_3["right"] = 1;
        else
            var_3["back"] = 1;
    }

    return var_3;
}

_ID16547( var_0 )
{
    var_0 = angleclamp( var_0 );

    if ( var_0 < 45 || var_0 > 315 )
        var_1 = "front";
    else if ( var_0 < 135 )
        var_1 = "left";
    else if ( var_0 < 225 )
        var_1 = "back";
    else
        var_1 = "right";

    return var_1;
}

_ID20783( var_0, var_1 )
{
    for ( var_2 = var_1.size - 1; var_2 >= 0; var_2-- )
    {
        if ( var_0 == var_1[var_2] )
            return 1;
    }

    return 0;
}

_ID27176( var_0 )
{
    if ( isdefined( var_0 ) )
    {
        self setflaggedanimknoballrestart( "playAnim", var_0, %animscript_root, 1, 0.1, 1 );
        var_1 = getanimlength( var_0 );
        var_1 = 3 * var_1 + 1;
        thread _ID25128( "time is up", "time is up", var_1 );
        self waittill( "time is up" );
        self notify( "enddrawstring" );
    }
}

_ID25128( var_0, var_1, var_2 )
{
    self endon( "death" );
    self endon( var_1 );
    wait(var_2);
    self notify( var_0 );
}

_ID11752( var_0 )
{
    self endon( "killanimscript" );
    self endon( "enddrawstring" );

    for (;;)
        wait 0.05;
}

_ID11753( var_0, var_1, var_2, var_3 )
{
    var_4 = var_3 * 20;

    for ( var_5 = 0; var_5 < var_4; var_5++ )
        wait 0.05;
}

_ID34075( var_0 )
{
    self notify( "got known enemy2" );
    self endon( "got known enemy2" );
    self endon( "death" );

    if ( !isdefined( self._ID322 ) )
        return;

    if ( self._ID322._ID1194 == "allies" )
        var_1 = ( 0.4, 0.7, 1 );
    else
        var_1 = ( 1, 0.7, 0.4 );

    for (;;)
    {
        wait 0.05;

        if ( !isdefined( self._ID584 ) )
            continue;
    }
}

_ID18223()
{
    if ( isdefined( self._ID700 ) )
        return _ID6885() || _ID6899();
    else
        return _ID6884() || _ID6898();
}

_ID16257()
{
    return self._ID17020;
}

_ID40001()
{
    if ( !_ID18223() )
        return;

    self._ID19389 = _ID16257();
    self._ID19385 = self._ID740;
}

_ID40000()
{
    if ( !_ID18223() )
        return 0;

    var_0 = self getmuzzlepos();
    var_1 = self getshootatpos() - var_0;

    if ( isdefined( self._ID19389 ) && isdefined( self._ID19385 ) )
    {
        if ( distance( self._ID740, self._ID19385 ) < 25 )
            return 0;
    }

    self._ID19389 = undefined;
    var_2 = self canshoot( _ID16257(), var_1 );

    if ( !var_2 )
    {
        self._ID19389 = _ID16257();
        return 0;
    }

    return 1;
}

_ID10045()
{
    wait 5;
    self notify( "timeout" );
}

_ID10034( var_0, var_1, var_2 )
{
    self endon( "death" );
    self notify( "stop debug " + var_0 );
    self endon( "stop debug " + var_0 );
    var_3 = spawnstruct();
    var_3 thread _ID10045();
    var_3 endon( "timeout" );

    if ( self._ID322._ID1194 == "allies" )
        var_4 = ( 0.4, 0.7, 1 );
    else
        var_4 = ( 1, 0.7, 0.4 );

    for (;;)
        wait 0.05;
}

_ID10033( var_0, var_1 )
{
    thread _ID10034( var_0, var_1, 2.15 );
}

_ID10035( var_0, var_1, var_2 )
{
    thread _ID10034( var_0, var_1, var_2 );
}

_ID10016( var_0, var_1 )
{
    var_2 = var_0 / var_1;
    var_3 = undefined;

    if ( var_0 == self._ID6323 )
        var_3 = "all rounds";
    else if ( var_2 < 0.25 )
        var_3 = "small burst";
    else if ( var_2 < 0.5 )
        var_3 = "med burst";
    else
        var_3 = "long burst";

    thread _ID10035( self._ID740 + ( 0, 0, 42 ), var_3, 1.5 );
    thread _ID10033( self._ID740 + ( 0, 0, 60 ), "Suppressing" );
}

_ID28604()
{
    self endon( "death" );
    self notify( "stop shoot " + self._ID13703 );
    self endon( "stop shoot " + self._ID13703 );
    var_0 = 0.25;
    var_1 = var_0 * 20;

    for ( var_2 = 0; var_2 < var_1; var_2 += 1 )
        wait 0.05;
}

_ID28603()
{

}

_ID34055( var_0, var_1, var_2, var_3 )
{
    self endon( "death" );
    var_4 = var_3 * 20;

    for ( var_5 = 0; var_5 < var_4; var_5 += 1 )
        wait 0.05;
}

_ID34054( var_0, var_1, var_2, var_3 )
{
    thread _ID34055( var_0, var_1 + ( 0, 0, -5 ), var_2, var_3 );
}

_ID33781( var_0 )
{
    if ( !isdefined( var_0 ) )
        var_0 = 1;

    [[ anim._ID33782 ]]( var_0 );
}

_ID33783( var_0 )
{
    self._ID7._ID21978 = gettime();
    _ID42298::_ID32178();
    self notify( "shooting" );
    self shoot( 1, undefined, var_0 );
}

_ID33784( var_0 )
{
    level notify( "an_enemy_shot",  self  );
    _ID33783( var_0 );
}

_ID33813( var_0, var_1 )
{
    var_2 = bulletspread( self getmuzzlepos(), var_0, 4 );
    self._ID7._ID21978 = gettime();

    if ( !isdefined( var_1 ) )
        var_1 = 1;

    self notify( "shooting" );
    self shoot( 1, var_2, var_1 );
}

_ID37696()
{
    var_0 = spawn( "script_model", ( 0, 0, 0 ) );
    var_0 setmodel( "temp" );
    var_0._ID740 = self gettagorigin( "tag_weapon_right" ) + ( 50, 50, 0 );
    var_0._ID65 = self gettagangles( "tag_weapon_right" );
    var_1 = anglestoright( var_0._ID65 );
    var_1 *= 15;
    var_2 = anglestoforward( var_0._ID65 );
    var_2 *= 15;
    var_0 movegravity( ( 0, 50, 150 ), 100 );
    var_3 = "weapon_" + self._ID1302;
    var_4 = spawn( var_3, var_0._ID740 );
    var_4._ID65 = self gettagangles( "tag_weapon_right" );
    var_4 linkto( var_0 );
    var_5 = var_0._ID740;

    while ( isdefined( var_4 ) && isdefined( var_4._ID740 ) )
    {
        var_6 = var_5;
        var_7 = var_0._ID740;
        var_8 = vectortoangles( var_7 - var_6 );
        var_2 = anglestoforward( var_8 );
        var_2 *= 4;
        var_9 = bullettrace( var_7, var_7 + var_2, 1, var_4 );

        if ( isalive( var_9["entity"] ) && var_9["entity"] == self )
        {
            wait 0.05;
            continue;
        }

        if ( var_9["fraction"] < 1.0 )
            break;

        var_5 = var_0._ID740;
        wait 0.05;
    }

    if ( isdefined( var_4 ) && isdefined( var_4._ID740 ) )
        var_4 unlink();

    var_0 delete();
}

_ID26591()
{
    var_0 = "TAG_EYE";
    self endon( "death" );
    self notify( "stop personal effect" );
    self endon( "stop personal effect" );

    while ( isdefined( self ) )
    {
        wait 1;

        if ( !isdefined( self ) )
            break;

        if ( isdefined( self._ID7._ID24414 ) && self._ID7._ID24414 == "stop" )
        {
            if ( isdefined( self._ID20777 ) && self._ID20777 == 1 )
                continue;

            playfxontag( level._ID1426["cold_breath"], self, var_0 );
            wait(2.5 + randomfloat( 3 ));
            continue;
        }

        wait 1.5;
    }
}

_ID26593()
{
    self notify( "stop personal effect" );
}

_ID26592()
{
    self endon( "death" );
    self notify( "stop personal effect" );
    self endon( "stop personal effect" );

    for (;;)
    {
        self waittill( "spawned",  var_0  );

        if ( _ID42407::_ID35060( var_0 ) )
            continue;

        var_0 thread _ID26591();
    }
}

_ID20934()
{
    if ( isdefined( self._ID14800 ) )
        return self._ID14800;

    if ( self._ID1057 <= self._ID36847 )
        return 0;

    return self issuppressed();
}

_ID20915()
{
    return isdefined( self._ID1063 ) && self._ID1063 == 1 && ( isdefined( self._ID986 ) && self._ID986 == 1 );
}

_ID16702( var_0 )
{
    if ( !isdefined( var_0 ) )
        return ( 0, 0, 0 );

    if ( !isdefined( var_0._ID31037 ) )
        return var_0._ID65;

    var_1 = var_0._ID65;
    var_2 = angleclamp180( var_1[0] + var_0._ID31037[0] );
    var_3 = var_1[1];
    var_4 = angleclamp180( var_1[2] + var_0._ID31037[2] );
    return ( var_2, var_3, var_4 );
}

_ID20849()
{
    if ( self._ID1057 <= self._ID36847 * 0.25 )
        return 0;

    return self issuppressed();
}

_ID16464( var_0, var_1 )
{
    if ( isdefined( var_0._ID25468 ) )
        return var_0._ID25468;

    var_2 = ( -26, 0.4, 36 );
    var_3 = ( -32, 7, 63 );
    var_4 = ( 43.5, 11, 36 );
    var_5 = ( 36, 8.3, 63 );
    var_6 = ( 3.5, -12.5, 45 );
    var_7 = ( -3.7, -22, 63 );
    var_8 = 0;
    var_9 = ( 0, 0, 0 );
    var_10 = anglestoright( var_0._ID65 );
    var_11 = anglestoforward( var_0._ID65 );

    if ( !isdefined( var_1 ) )
    {
        var_1 = var_0._ID1244;

        if ( var_1 == "Cover Multi" )
            var_1 = _ID16194( var_0 );
    }

    switch ( var_1 )
    {
        case "Cover Left 3D":
        case "Cover Left":
            if ( var_0 gethighestnodestance() == "crouch" )
                var_9 = _ID6630( var_10, var_11, var_2 );
            else
                var_9 = _ID6630( var_10, var_11, var_3 );

            break;
        case "Cover Right 3D":
        case "Cover Right":
            if ( var_0 gethighestnodestance() == "crouch" )
                var_9 = _ID6630( var_10, var_11, var_4 );
            else
                var_9 = _ID6630( var_10, var_11, var_5 );

            break;
        case "Conceal Stand":
        case "Cover Stand":
        case "Turret":
            var_9 = _ID6630( var_10, var_11, var_7 );
            break;
        case "Conceal Crouch":
        case "Cover Crouch":
        case "Cover Crouch Window":
            var_9 = _ID6630( var_10, var_11, var_6 );
            break;
    }

    var_0._ID25468 = var_9;
    return var_0._ID25468;
}

_ID6630( var_0, var_1, var_2 )
{
    return var_0 * var_2[0] + var_1 * var_2[1] + ( 0, 0, var_2[2] );
}

_ID29285()
{
    return isdefined( self._ID322 ) && self seerecently( self._ID322, 5 );
}

_ID6884( var_0 )
{
    if ( !isdefined( self._ID322 ) )
        return 0;

    if ( _ID42237::_ID14385( "_cloaked_stealth_enabled" ) )
    {
        if ( isdefined( self._ID12963 ) && self._ID12963 == self._ID322 )
            return 1;
        else
            return self cansee( self._ID322 );
    }

    if ( isdefined( var_0 ) && self cansee( self._ID322, var_0 ) || self cansee( self._ID322 ) )
    {
        if ( !_ID7448( self geteye(), self._ID322 getshootatpos() ) )
            return 0;

        self._ID17020 = _ID16256();
        _ID11578();
        return 1;
    }

    return 0;
}

_ID6885()
{
    if ( !isdefined( self._ID322 ) )
    {
        self._ID17020 = undefined;
        return 0;
    }

    var_0 = _ID16256();

    if ( !isdefined( self._ID700 ) )
        var_1 = self cansee( self._ID322 );
    else
        var_1 = _ID6888( var_0, self._ID700 );

    if ( var_1 )
    {
        self._ID17020 = var_0;
        _ID11578();
        jump loc_157E
    }

    return var_1;
}

_ID6888( var_0, var_1 )
{
    if ( _ID20830( var_1 ) || _ID20833( var_1 ) || _ID20831( var_1 ) )
    {
        if ( !animscripts\corner::_ID6887( var_0, var_1 ) )
            return 0;
    }

    var_2 = _ID16464( var_1 );
    var_3 = var_1._ID740 + var_2;

    if ( !_ID7448( var_3, var_0, var_1 ) )
        return 0;

    if ( !sighttracepassed( var_3, var_0, 0, undefined ) )
    {
        if ( var_1._ID1244 == "Cover Crouch" || var_1._ID1244 == "Conceal Crouch" )
        {
            var_3 = ( 0, 0, 64 ) + var_1._ID740;
            return sighttracepassed( var_3, var_0, 0, undefined );
        }

        if ( _ID20915() && var_1._ID1244 == "Cover Up 3D" )
        {
            var_4 = anglestoup( self._ID65 );
            var_3 = var_1._ID740 + ( var_4[0] * 32, var_4[1] * 32, var_4[2] * 32 );
            return sighttracepassed( var_3, var_0, 0, undefined );
        }

        return 0;
    }

    return 1;
}

_ID20831( var_0 )
{
    if ( var_0._ID1244 != "Cover Multi" )
        return 0;

    if ( !isdefined( self._ID217 ) )
        return 0;

    if ( isdefined( self._ID217._ID36185 ) )
        return self._ID217._ID36185 == "right" || self._ID217._ID36185 == "left";

    if ( isdefined( self._ID217._ID3368 ) )
        return self._ID217._ID3368 == "right" || self._ID217._ID3368 == "left";

    return 0;
}

_ID16194( var_0, var_1 )
{
    if ( !isdefined( var_1 ) )
        var_1 = var_0 animscripts\cover_multi::_ID8885();

    switch ( var_1 )
    {
        case "right":
            return "Cover Right";
        case "left":
            return "Cover Left";
        case "stand":
            return "Cover Stand";
        case "crouch":
            return "Cover Crouch";
    }

    endswitch( 5 )  case "right" loc_16EB case "stand" loc_16F7 case "left" loc_16F1 case "crouch" loc_16FD default loc_1703
}

_ID7448( var_0, var_1, var_2 )
{
    var_3 = self._ID307 - anim._ID2430;
    var_4 = self._ID1252 + anim._ID2430;
    var_5 = angleclamp180( vectortoangles( var_1 - var_0 )[0] );

    if ( var_5 > var_4 )
        return 0;

    if ( var_5 < var_3 )
    {
        if ( isdefined( var_2 ) && var_2._ID1244 != "Cover Crouch" && var_2._ID1244 != "Conceal Crouch" )
            return 0;

        if ( var_5 < anim._ID8868 + var_3 )
            return 0;
    }

    return 1;
}

_ID11578()
{
    self._ID7._ID33961 = 1;
}

_ID39718()
{
    if ( !isdefined( self._ID7._ID33961 ) )
        self._ID7._ID33961 = 1;

    if ( self._ID7._ID33961 )
    {
        self._ID7._ID16913 = gettime() + randomintrange( 15000, 30000 );
        self._ID7._ID33961 = 0;
    }
}

_ID34077( var_0, var_1, var_2 )
{
    for (;;)
    {
        wait 0.05;
        wait 0.05;
    }
}

_ID2472()
{
    if ( !self canattackenemynode() )
        return 0;

    var_0 = undefined;

    if ( isdefined( self._ID322._ID700 ) )
    {
        var_1 = _ID16464( self._ID322._ID700 );
        var_0 = self._ID322._ID700._ID740 + var_1;
    }
    else if ( _ID42237::_ID14385( "_cloaked_stealth_enabled" ) )
        var_0 = animscripts\combat_utility::_ID15797( self._ID322 );
    else
        var_0 = self._ID322 getshootatpos();

    if ( !self canshoot( var_0 ) )
        return 0;

    if ( self._ID912 == "combat" )
    {
        if ( !sighttracepassed( self geteye(), self getmuzzlepos(), 0, undefined ) )
            return 0;
    }

    self._ID17020 = var_0;
    return 1;
}

_ID6899()
{
    if ( !_ID18251() )
    {
        self._ID17020 = undefined;
        return 0;
    }

    if ( !isplayernumber( self._ID322 ) )
        return _ID2472();

    if ( isdefined( self._ID700 ) )
    {
        if ( _ID20830( self._ID700 ) || _ID20833( self._ID700 ) )
        {
            if ( !animscripts\corner::_ID6887( _ID16256(), self._ID700 ) )
                return 0;
        }

        var_0 = _ID16464( self._ID700 );
        var_1 = self._ID700._ID740 + var_0;
    }
    else
        var_1 = self getmuzzlepos();

    if ( !_ID7448( var_1, self._ID584 ) )
        return 0;

    return _ID14211( var_1 );
}

_ID6898()
{
    if ( !_ID18251() )
    {
        self._ID17020 = undefined;
        return 0;
    }

    if ( !isplayernumber( self._ID322 ) )
        return _ID2472();

    var_0 = self getmuzzlepos();

    if ( !_ID7448( var_0, self._ID584 ) )
        return 0;

    return _ID14211( var_0 );
}

_ID18251()
{
    if ( !isdefined( self._ID322 ) )
        return 0;

    if ( !isdefined( self._ID584 ) )
        return 0;

    _ID39718();

    if ( gettime() > self._ID7._ID16913 )
        return 0;

    if ( !_ID24705() )
        return isdefined( self._ID17020 );

    return 1;
}

_ID6883( var_0 )
{
    if ( !sighttracepassed( self getshootatpos(), var_0, 0, undefined ) )
        return 0;

    if ( self._ID7._ID41701["right"] == "none" )
        return 0;

    var_1 = self getmuzzlepos();
    return sighttracepassed( var_1, var_0, 0, undefined );
}

_ID24705()
{
    if ( isdefined( self._ID17020 ) && !_ID6883( self._ID17020 ) )
        return 1;

    return !isdefined( self._ID21918 ) || self._ID21918 != self._ID584 || distancesquared( self._ID21919, self._ID740 ) > 1024;
}

_ID14211( var_0 )
{
    if ( !_ID24705() )
        return isdefined( self._ID17020 );

    if ( isdefined( self._ID322 ) && distancesquared( self._ID740, self._ID322._ID740 ) > squared( self._ID322._ID630 ) )
    {
        self._ID17020 = undefined;
        return 0;
    }

    if ( !sighttracepassed( self getshootatpos(), var_0, 0, undefined ) )
    {
        self._ID17020 = undefined;
        return 0;
    }

    self._ID21919 = self._ID740;
    self._ID21918 = self._ID584;
    var_1 = _ID16256();
    var_2 = bullettrace( self._ID584, var_1, 0, undefined );
    var_3 = var_2["position"];
    var_4 = self._ID584 - var_3;
    var_5 = vectornormalize( self._ID584 - var_0 );
    var_4 -= var_5 * vectordot( var_4, var_5 );
    var_6 = 20.0;
    var_7 = int( length( var_4 ) / var_6 + 0.5 );

    if ( var_7 < 1 )
        var_7 = 1;

    if ( var_7 > 20 )
        var_7 = 20;

    var_8 = self._ID584 - var_3;
    var_8 = ( var_8[0] / var_7, var_8[1] / var_7, var_8[2] / var_7 );
    var_7++;
    var_9 = var_3;
    self._ID17020 = undefined;
    var_10 = 0;
    var_11 = 2;

    for ( var_12 = 0; var_12 < var_7 + var_11; var_12++ )
    {
        var_13 = sighttracepassed( var_0, var_9, 0, undefined );
        var_14 = var_9;

        if ( var_12 == var_7 - 1 )
            var_8 -= var_5 * vectordot( var_8, var_5 );

        var_9 += var_8;

        if ( var_13 )
        {
            var_10++;
            self._ID17020 = var_14;

            if ( var_12 > 0 && var_10 < var_11 && var_12 < var_7 + var_11 - 1 )
                continue;

            return 1;
            continue;
        }

        var_10 = 0;
    }

    return isdefined( self._ID17020 );
}

_ID2989( var_0, var_1 )
{
    var_2 = var_0.size;
    var_3 = randomint( var_2 );

    if ( var_2 == 1 )
        return var_0[0];

    var_4 = 0;
    var_5 = 0;

    for ( var_6 = 0; var_6 < var_2; var_6++ )
        var_5 += var_1[var_6];

    var_7 = randomfloat( var_5 );
    var_8 = 0;

    for ( var_6 = 0; var_6 < var_2; var_6++ )
    {
        var_8 += var_1[var_6];

        if ( var_7 >= var_8 )
            continue;

        var_3 = var_6;
        break;
    }

    return var_0[var_3];
}

_ID28586( var_0, var_1, var_2, var_3, var_4, var_5 )
{
    var_6 = var_0 / 0.05;

    for ( var_7 = 0; var_7 < var_6; var_7++ )
        wait 0.05;
}

_ID28584( var_0, var_1, var_2, var_3, var_4 )
{
    var_5 = 100.0;
    var_6 = 0;
    var_0 += _ID42237::_ID28976( 30 );

    for ( var_7 = 0; var_7 < var_5; var_7++ )
    {
        var_6 += 0.5;
        wait 0.05;
    }
}

_ID9342( var_0, var_1 )
{
    return var_0[0] * var_1[1] - var_0[1] * var_1[0] > 0;
}

_ID16307()
{
    return getweaponmodel( self._ID470 );
}

_ID30757( var_0 )
{
    if ( !isdefined( var_0 ) )
        var_0 = 500;

    return gettime() - self._ID26599 < var_0;
}

_ID6902()
{
    if ( !self._ID464 )
        return 0;

    if ( self._ID31213 )
        return 1;

    return isplayernumber( self._ID322 );
}

_ID39984()
{
    return weaponisboltaction( self._ID1302 );
}

_ID28958( var_0 )
{
    var_1 = randomint( var_0.size );

    if ( var_0.size > 1 )
    {
        var_2 = 0;

        for ( var_3 = 0; var_3 < var_0.size; var_3++ )
            var_2 += var_0[var_3];

        var_4 = randomfloat( var_2 );
        var_2 = 0;

        for ( var_3 = 0; var_3 < var_0.size; var_3++ )
        {
            var_2 += var_0[var_3];

            if ( var_4 < var_2 )
            {
                var_1 = var_3;
                break;
            }
        }
    }

    return var_1;
}

_ID46450( var_0, var_1 )
{
    if ( !isdefined( anim._ID45684 ) )
        anim._ID45684 = [];

    anim._ID45684[var_0] = 1;
    level._ID1426["bloodpool_" + var_0] = var_1;
}

_ID32631( var_0, var_1 )
{
    if ( !isdefined( anim._ID25932 ) )
        anim._ID25932 = [];

    anim._ID25932[var_0] = 1;
    level._ID1426["step_" + var_0] = var_1;
}

_ID32632( var_0, var_1 )
{
    if ( !isdefined( anim._ID25934 ) )
        anim._ID25934 = [];

    anim._ID25934[var_0] = 1;
    level._ID1426["step_small_" + var_0] = var_1;
}

_ID39540( var_0 )
{
    if ( isdefined( anim._ID25932 ) )
        anim._ID25932[var_0] = undefined;

    level._ID1426["step_" + var_0] = undefined;
}

_ID39541( var_0 )
{
    if ( isdefined( anim._ID25934 ) )
        anim._ID25934[var_0] = undefined;

    level._ID1426["step_small_" + var_0] = undefined;
}

_ID32706( var_0, var_1, var_2, var_3, var_4, var_5 )
{
    if ( !isdefined( var_2 ) )
        var_2 = "all";

    if ( !isdefined( level._ID1540 ) )
        level._ID1540 = [];

    level._ID1540[var_0][var_2] = spawnstruct();
    level._ID1540[var_0][var_2]._ID1067 = var_1;
    level._ID1540[var_0][var_2]._ID15142 = var_3;
    anim._ID25064[var_0] = animscripts\notetracks::_ID9577;
    _ID32707( var_0, var_2, var_4, var_5 );
}

_ID32707( var_0, var_1, var_2, var_3 )
{
    if ( !isdefined( var_1 ) )
        var_1 = "all";

    if ( !isdefined( level._ID1540 ) )
        level._ID1540 = [];

    if ( isdefined( level._ID1540[var_0][var_1] ) )
        var_4 = level._ID1540[var_0][var_1];
    else
    {
        var_4 = spawnstruct();
        level._ID1540[var_0][var_1] = var_4;
    }

    anim._ID25064[var_0] = animscripts\notetracks::_ID9577;

    if ( isdefined( var_2 ) )
        var_4._ID34983 = var_2;

    if ( isdefined( var_3 ) )
        var_4._ID34985 = var_3;
}

_ID26590( var_0, var_1 )
{
    self endon( "death" );
    level notify( "newdebugline" );
    level endon( "newdebugline" );

    for (;;)
        wait 0.05;
}

_ID13067( var_0 )
{
    thread _ID13068( var_0 );
}

_ID13068( var_0 )
{
    if ( self _meth_85ca() )
        self.lowerbodyikwasalreadydisabled = 1;
    else
        self.lowerbodyikwasalreadydisabled = undefined;

    self _meth_8583();
    self endon( "death" );
    self notify( "anim_prone_change" );
    self endon( "anim_prone_change" );
    self enterprone( var_0, isdefined( self._ID7._ID25684 ) );
    self waittill( "killanimscript" );

    if ( self._ID7._ID28253 != "prone" && !isdefined( self._ID7._ID25684 ) )
        self._ID7._ID28253 = "prone";
}

_ID13390( var_0 )
{
    thread _ID13391( var_0 );
}

_ID13391( var_0 )
{
    if ( !( isdefined( self.lowerbodyikwasalreadydisabled ) && self.lowerbodyikwasalreadydisabled ) )
        self _meth_8582();

    self endon( "death" );
    self notify( "anim_prone_change" );
    self endon( "anim_prone_change" );
    self exitprone( var_0 );
    self waittill( "killanimscript" );

    if ( self._ID7._ID28253 == "prone" )
        self._ID7._ID28253 = "crouch";
}

_ID6834()
{
    if ( self._ID7._ID3462 )
        return 0;

    if ( !animscripts\weaponlist::_ID39983() )
        return 0;

    if ( weaponclass( self._ID1302 ) == "mg" )
        return 0;

    if ( isdefined( self._ID10881 ) && self._ID10881 == 1 )
        return 0;

    return 1;
}

_ID6860()
{
    if ( !_ID18223() )
        return 0;

    var_0 = self getmuzzlepos();
    return sighttracepassed( var_0, _ID16257(), 0, undefined );
}

_ID16432( var_0 )
{
    return self._ID7._ID24390[var_0];
}

_ID47584( var_0 )
{
    if ( isdefined( self._ID7._ID51542 ) && self._ID7._ID51542 == self._ID7._ID30423 )
        return self._ID7._ID44347;

    var_1 = randomint( var_0.size );
    self._ID7._ID44347 = var_0[var_1];
    self._ID7._ID51542 = self._ID7._ID30423;
    return var_0[var_1];
}

_ID28961( var_0, var_1 )
{
    if ( randomint( 2 ) )
        return var_0;
    else
        return var_1;
}

_ID3153( var_0 )
{
    return self._ID7._ID3291[var_0];
}

animarrayexist( var_0 )
{
    return isdefined( self._ID7._ID3291[var_0] );
}

_ID3154( var_0 )
{
    return isdefined( self._ID7._ID3291[var_0] ) && self._ID7._ID3291[var_0].size > 0;
}

_ID3156( var_0 )
{
    var_1 = randomint( self._ID7._ID3291[var_0].size );
    return self._ID7._ID3291[var_0][var_1];
}

_ID44378( var_0, var_1 )
{
    var_2 = self._ID7._ID3291[var_0].size - 1;
    var_3 = randomint( var_2 - 1 );

    if ( var_3 == var_1 )
        var_3 = var_2;

    return self._ID7._ID3291[var_0][var_3];
}

_ID50392( var_0 )
{
    var_1["covercrouch_blindfire_1"] = 0;
    var_1["covercrouch_blindfire_2"] = 1;
    var_1["covercrouch_blindfire_3"] = 2;
    var_1["covercrouch_blindfire_4"] = 3;
    var_1["corner_standR_blindfire_v1"] = 0;
    var_1["corner_standR_blindfire_v2"] = 1;
    var_1["corner_standL_blindfire_v1"] = 0;
    var_1["corner_standL_blindfire_v2"] = 1;
    var_1["coverstand_blindfire_1"] = 0;
    var_1["coverstand_blindfire_2"] = 1;

    if ( isdefined( var_1[var_0] ) )
        return var_1[var_0];
}

_ID44341( var_0 )
{
    var_1["favela_chaotic_standcover_fireA"] = 0;
    var_1["favela_chaotic_standcover_fireB"] = 1;
    var_1["favela_chaotic_standcover_fireC"] = 2;

    if ( isdefined( var_1[var_0] ) )
        return var_1[var_0];
}

_ID3291( var_0, var_1, var_2, var_3, var_4, var_5, var_6, var_7, var_8, var_9, var_10, var_11, var_12, var_13 )
{
    var_14 = [];

    if ( isdefined( var_0 ) )
        var_14[0] = var_0;
    else
        return var_14;

    if ( isdefined( var_1 ) )
        var_14[1] = var_1;
    else
        return var_14;

    if ( isdefined( var_2 ) )
        var_14[2] = var_2;
    else
        return var_14;

    if ( isdefined( var_3 ) )
        var_14[3] = var_3;
    else
        return var_14;

    if ( isdefined( var_4 ) )
        var_14[4] = var_4;
    else
        return var_14;

    if ( isdefined( var_5 ) )
        var_14[5] = var_5;
    else
        return var_14;

    if ( isdefined( var_6 ) )
        var_14[6] = var_6;
    else
        return var_14;

    if ( isdefined( var_7 ) )
        var_14[7] = var_7;
    else
        return var_14;

    if ( isdefined( var_8 ) )
        var_14[8] = var_8;
    else
        return var_14;

    if ( isdefined( var_9 ) )
        var_14[9] = var_9;
    else
        return var_14;

    if ( isdefined( var_10 ) )
        var_14[10] = var_10;
    else
        return var_14;

    if ( isdefined( var_11 ) )
        var_14[11] = var_11;
    else
        return var_14;

    if ( isdefined( var_12 ) )
        var_14[12] = var_12;
    else
        return var_14;

    if ( isdefined( var_13 ) )
        var_14[13] = var_13;

    return var_14;
}

_ID16104()
{
    return self._ID834;
}

_ID16106()
{
    return self._ID949;
}

_ID16107()
{
    return self._ID34144;
}

_ID16099()
{
    return self._ID1302;
}

_ID39990()
{
    return self._ID1302 == self._ID834 && self._ID1302 != "none";
}

_ID39994()
{
    return self._ID1302 == self._ID949 && self._ID1302 != "none";
}

_ID39997()
{
    return self._ID1302 == self._ID34144 && self._ID1302 != "none";
}

_ID16100()
{
    if ( self._ID1302 == self._ID834 )
        return "primary";
    else if ( self._ID1302 == self._ID949 )
        return "secondary";
    else if ( self._ID1302 == self._ID34144 )
        return "sidearm";
    else
    {

    }
}

_ID2398( var_0 )
{
    if ( isdefined( self._ID1312 ) && isdefined( self._ID1312[var_0] ) )
        return 1;

    return 0;
}

_ID16127( var_0 )
{
    var_1 = getangledelta( var_0, 0, 1 );
    return self localtoworldcoords( var_1 );
}

_ID9641( var_0, var_1, var_2, var_3, var_4, var_5, var_6, var_7, var_8, var_9, var_10, var_11 )
{
    if ( !isdefined( var_0 ) )
        return 0;

    if ( self._ID253 == var_0 )
        return 1;

    if ( !isdefined( var_1 ) )
        return 0;

    if ( self._ID253 == var_1 )
        return 1;

    if ( !isdefined( var_2 ) )
        return 0;

    if ( self._ID253 == var_2 )
        return 1;

    if ( !isdefined( var_3 ) )
        return 0;

    if ( self._ID253 == var_3 )
        return 1;

    if ( !isdefined( var_4 ) )
        return 0;

    if ( self._ID253 == var_4 )
        return 1;

    if ( !isdefined( var_5 ) )
        return 0;

    if ( self._ID253 == var_5 )
        return 1;

    if ( !isdefined( var_6 ) )
        return 0;

    if ( self._ID253 == var_6 )
        return 1;

    if ( !isdefined( var_7 ) )
        return 0;

    if ( self._ID253 == var_7 )
        return 1;

    if ( !isdefined( var_8 ) )
        return 0;

    if ( self._ID253 == var_8 )
        return 1;

    if ( !isdefined( var_9 ) )
        return 0;

    if ( self._ID253 == var_9 )
        return 1;

    if ( !isdefined( var_10 ) )
        return 0;

    if ( self._ID253 == var_10 )
        return 1;

    return 0;
}

_ID39988()
{
    if ( !isdefined( self._ID1302 ) )
        return 0;

    return weaponclass( self._ID1302 ) == "pistol";
}

_ID39993()
{
    if ( !isdefined( self._ID1302 ) )
        return 0;

    return weaponclass( self._ID1302 ) == "rocketlauncher";
}

_ID39985()
{
    if ( !isdefined( self._ID1302 ) )
        return 0;

    return weaponclass( self._ID1302 ) == "mg";
}

_ID39996()
{
    if ( !isdefined( self._ID1302 ) )
        return 0;

    return weaponclass( self._ID1302 ) == "spread";
}

_ID39998()
{
    if ( !isdefined( self._ID1302 ) )
        return 0;

    return weaponclass( self._ID1302 ) == "smg";
}

_ID39992()
{
    if ( !isdefined( self._ID1302 ) )
        return 0;

    var_0 = weaponclass( self._ID1302 );

    switch ( var_0 )
    {
        case "mg":
        case "spread":
        case "smg":
        case "sniper":
        case "rifle":
            return 1;
    }

    return 0;
}

_ID33944( var_0 )
{
    return isdefined( self._ID949 ) && self._ID949 != "none" && ( var_0 < squared( 512 ) || self._ID7._ID30103 < 1 );
}

_ID28897( var_0 )
{
    self endon( "killanimscript" );
    var_1 = self._ID740;
    var_2 = ( 0, 0, 0 );

    for (;;)
    {
        wait 0.05;
        var_3 = distance( self._ID740, var_1 );
        var_1 = self._ID740;

        if ( self._ID486 == 1 )
        {
            self._ID7._ID24881 = 1;
            self startragdoll();
            self clearanim( var_0, 0.1 );
            wait 0.05;
            physicsexplosionsphere( var_1, 600, 0, var_3 * 0.1 );
            self notify( "killanimscript" );
            return;
        }
    }
}

_ID20527()
{
    return isdefined( self._ID14873 );
}

_ID33934()
{
    return isdefined( self._ID8931 ) && !isdefined( self._ID458 );
}

_ID20716()
{
    return isdefined( self._ID8931 );
}

_ID50875()
{
    var_0 = [ %casual_stand_idle, %casual_stand_idle_trans_in, %casual_stand_idle_trans_out, %casual_stand_idle_twitch, %casual_stand_idle_twitchb, %casual_stand_v2_idle, %casual_stand_v2_twitch_radio, %casual_stand_v2_twitch_shift, %casual_stand_v2_twitch_talk, %smg_casual_stand_idle_trans_in, %smg_casual_stand_idle_trans_out ];

    foreach ( var_2 in var_0 )
    {
        if ( self getanimweight( var_2 ) != 0.0 )
            return 1;
    }

    return 0;
}

_ID32833( var_0 )
{
    if ( var_0 )
    {
        self._ID9574["run"] = _ID22631( "unstable_run" );
        self._ID9574["walk"] = _ID22631( "unstable_walk" );
        self._ID20961 = 1;
    }
    else
    {
        self._ID9574["run"] = undefined;
        self._ID9574["walk"] = undefined;
        self._ID20961 = 0;
    }
}

_ID20961()
{
    return 0;
}

_ID32547( var_0 )
{
    if ( !isdefined( var_0 ) )
        return;

    if ( var_0 )
    {
        self._ID9574["run"] = _ID22631( "pistol_move" );
        self._ID9574["walk"] = _ID22631( "pistol_move" );
        self._ID2834 = 1;
        self allowedstances( "stand" );
        self._ID24844 = 1;
        self._ID11582 = 1;
        self._ID11002 = 1;
    }
    else
    {
        self._ID9574["run"] = undefined;
        self._ID9574["walk"] = undefined;
        self._ID2834 = undefined;
        self allowedstances( "stand", "crouch", "prone" );
        self._ID24844 = undefined;
        self._ID11582 = undefined;
        self._ID11002 = undefined;
    }
}

_ID20717()
{
    return !self._ID373 || isdefined( self._ID8931 );
}

_ID28972()
{
    self._ID7._ID19332 = randomint( 2 );
}

_ID20902( var_0 )
{
    return weaponclass( var_0 ) == "spread";
}

_ID20911( var_0 )
{
    return weaponclass( var_0 ) == "sniper";
}

_ID41682()
{
    return self._ID1302 != "none" && weaponisboltaction( self._ID1302 ) && weaponclass( self._ID1302 ) == "spread";
}

_ID16553( var_0, var_1 )
{
    var_2 = var_0 % anim._ID28968;
    return anim._ID28967[var_2] % var_1;
}

_ID16202()
{
    if ( _ID39994() )
        return "secondary";

    if ( _ID39997() )
        return "sidearm";

    return "primary";
}

_ID20830( var_0 )
{
    return var_0._ID1244 == "Cover Left" || var_0._ID1244 == "Cover Left 3D";
}

_ID20833( var_0 )
{
    return var_0._ID1244 == "Cover Right" || var_0._ID1244 == "Cover Right 3D";
}

_ID20829( var_0 )
{
    return var_0._ID1244 == "Cover Left 3D" || var_0._ID1244 == "Cover Right 3D" || var_0._ID1244 == "Cover Up 3D";
}

_ID22630( var_0, var_1 )
{
    if ( isdefined( anim._ID14773 ) || isdefined( anim._ID14774 ) )
        _ID42407::_ID12528( 1 );

    if ( isdefined( self._ID3152 ) )
    {
        if ( isdefined( anim._ID3277[self._ID3152][var_0] ) && isdefined( anim._ID3277[self._ID3152][var_0][var_1] ) )
            return anim._ID3277[self._ID3152][var_0][var_1];
    }

    return anim._ID3277["soldier"][var_0][var_1];
}

_ID22631( var_0 )
{
    if ( isdefined( anim._ID14773 ) || isdefined( anim._ID14774 ) )
        _ID42407::_ID12528( 1 );

    if ( isdefined( self._ID3152 ) )
    {
        if ( isdefined( anim._ID3277[self._ID3152][var_0] ) )
        {
            if ( isdefined( anim._ID3277["soldier"][var_0] ) )
            {
                var_1 = anim._ID3277["soldier"][var_0];

                foreach ( var_4, var_3 in anim._ID3277[self._ID3152][var_0] )
                    var_1[var_4] = var_3;

                return var_1;
            }

            return anim._ID3277[self._ID3152][var_0];
        }
    }

    return anim._ID3277["soldier"][var_0];
}

_ID22635( var_0, var_1, var_2 )
{
    if ( isdefined( self._ID3152 ) )
    {
        if ( isdefined( anim._ID3277[self._ID3152][var_0] ) && isdefined( anim._ID3277[self._ID3152][var_0][var_1] ) && isdefined( anim._ID3277[self._ID3152][var_0][var_1][var_2] ) )
            return anim._ID3277[self._ID3152][var_0][var_1][var_2];

        if ( isdefined( anim._ID3277[self._ID3152][var_0] ) && isdefined( anim._ID3277[self._ID3152][var_0][var_1] ) )
            return anim._ID3277[self._ID3152][var_0][var_1];
    }

    return anim._ID3277["soldier"][var_0][var_1][var_2];
}

_ID22634( var_0, var_1 )
{
    if ( isdefined( self._ID3152 ) )
    {
        if ( isdefined( anim._ID3277[self._ID3152][var_0] ) && isdefined( anim._ID3277[self._ID3152][var_0][var_1] ) )
            return anim._ID3277[self._ID3152][var_0][var_1];
    }

    return anim._ID3277["dog"][var_0][var_1];
}

_ID20727()
{
    if ( isdefined( self._ID7._ID26210 ) && isdefined( self._ID7._ID26196 ) )
    {
        var_0 = self._ID7._ID26210 + self._ID7._ID26196 * 1000;
        var_1 = gettime() < var_0;

        if ( !var_1 )
            self._ID7._ID26196 = 0;

        return var_1;
    }

    return 0;
}

_ID16035( var_0, var_1, var_2, var_3 )
{
    return var_0 + var_1 * var_3 + 0.5 * var_2 * squared( var_3 );
}

_ID16033( var_0, var_1, var_2, var_3 )
{
    if ( var_3 == 0 )
    {
        if ( var_2 == 0 )
            return 999999;

        return ( var_1 - var_0 ) / var_2;
    }

    var_4 = 0.5 * var_3;
    var_5 = var_2;
    var_6 = var_0 - var_1;
    var_7 = squared( var_5 ) - 4 * var_4 * var_6;

    if ( var_7 < 0 )
        return 999999;

    var_8 = ( -1 * var_5 - sqrt( var_7 ) ) / 2 * var_4;

    if ( var_8 >= 0 )
        return var_8;

    var_8 = ( -1 * var_5 + sqrt( var_7 ) ) / 2 * var_4;
    return var_8;
}

_ID16034( var_0, var_1, var_2, var_3 )
{
    var_4 = _ID16033( var_0, var_1, var_2, var_3 );
    var_5 = var_2 + var_3 * var_4;
    return var_5;
}

_ID14699( var_0, var_1 )
{
    if ( !isdefined( var_0 ) || var_1 == "" )
        return;

    if ( !isdefined( var_0._ID21710 ) )
        var_0._ID21710 = 1;
    else
        return;

    if ( var_0 _meth_844f( "tag_flash" ) == -1 )
    {
        var_0._ID21710 = undefined;
        return;
    }

    var_2 = spawn( "script_model", var_0 gettagorigin( "tag_flash" ) );

    if ( !isdefined( var_2 ) )
    {
        var_0._ID21710 = undefined;
        return;
    }

    var_2 setmodel( "tag_laser" );
    var_2 laseron( var_1 );
    var_3 = cos( 10 );
    var_4 = 0.5;

    for (;;)
    {
        if ( !isdefined( var_0 ) || !isalive( var_0 ) )
            break;

        if ( isdefined( var_0._ID322 ) )
        {
            var_2._ID740 = var_0 gettagorigin( "tag_flash" );
            var_5 = var_0 gettagangles( "tag_flash" );
            var_6 = vectornormalize( var_0._ID322 getshootatpos() - var_2._ID740 );
            var_7 = anglestoforward( var_5 );
            var_8 = vectornormalize( var_6 );
            var_9 = vectortoangles( var_8 );
            var_10 = vectordot( var_7, var_8 );

            if ( var_10 > var_3 )
            {
                var_2 laseron( var_1 );
                var_11 = vectortoangles( var_6 ) + ( randomfloatrange( -1 * var_4, var_4 ), randomfloatrange( -1 * var_4, var_4 ), randomfloatrange( -1 * var_4, var_4 ) );
                var_2._ID65 = vectorlerp( var_2._ID65, var_11, 0.15 );
            }
            else
                var_2 laseroff();
        }

        waittillframeend;
    }

    var_2 laseroff();
    var_2 delete();

    if ( isdefined( var_0 ) )
        var_0._ID21710 = undefined;
}

_ID47299()
{
    if ( isdefined( self._ID7._ID29139 ) )
        return self._ID7._ID29139;

    return getdvarfloat( "ai_reactToBulletChance" );
}

_ID46199( var_0 )
{
    var_1 = getanimlength( var_0 );
    var_2 = self getanimtime( var_0 );
    var_3 = var_2 + 0.05 * self._ID24474 / var_1;

    if ( var_3 > 1 )
        var_3 = 1;

    var_4 = getangledelta( var_0, var_2, var_3 );
    var_5 = length( var_4 );
    return self _meth_8585( var_5 );
}

_ID44569( var_0 )
{
    self._ID24936 = !var_0;
}

_ID47685( var_0, var_1 )
{
    if ( !isdefined( level._ID51158 ) )
    {
        level._ID51158 = [];
        level._ID51158["allies"] = 0;
        level._ID51158["axis"] = 0;
        level._ID51158["neutral"] = 0;
    }

    var_2 = getaiarray( var_0 );

    foreach ( var_4 in var_2 )
        var_4._ID24936 = !var_1;

    if ( level._ID51158[var_0] != var_1 )
        level._ID51158[var_0] = var_1;
}

_ID49045()
{
    return 1;
}

_ID48067()
{
    if ( isai( self ) && isdefined( self._ID51498 ) )
        return !self._ID51498;

    return 1;
}

_ID53635()
{
    return getdvarint( "ai_usesCQBTightTurns20", 1 );
}

using_run_tight_turn_20()
{
    return getdvarint( "ai_usesRunTightTurns20", 1 );
}

_ID49393()
{
    return 1;
}

_ID47946()
{
    return !( isdefined( self._ID7111 ) && self._ID7111 );
}

_ID48937()
{
    if ( isdefined( self._ID18272 ) )
        return 1;

    if ( !isdefined( self._ID3189 ) )
        return 1;

    if ( self._ID3189 == "soap" )
        return 0;

    if ( self._ID3189 == "meat" )
        return 0;

    if ( self._ID3189 == "royce" )
        return 0;

    return 1;
}

should_play_specific_covercrouch_anim()
{
    switch ( self._ID823 )
    {
        case "cover_crouch":
            foreach ( var_1 in _ID22630( "exposed_turn_crouch", "exposed2cover_turn_all" ) )
            {
                if ( self getanimweight( var_1 ) > 0 && self getanimtime( var_1 ) < 0.5 )
                    return 0;
            }

            return 1;
        case "move":
            return self getanimweight( %covercrouch_modern ) > 0.5;
        case "pain":
            foreach ( var_1 in _ID22630( "pain", "covercrouch_all" ) )
            {
                if ( self getanimweight( var_1 ) > 0.5 )
                    return 1;
            }

            return 0;
        case "combat":
            foreach ( var_1 in _ID22630( "default_crouch", "cover2exposed_turn_all" ) )
            {
                if ( self getanimweight( var_1 ) > 0 && self getanimtime( var_1 ) < 0.5 )
                    return 1;
            }

            if ( self getanimweight( %covercrouch_2_stand ) > 0 && self getanimtime( %covercrouch_2_stand ) < 0.5 )
                return 1;

            return 0;
    }

    return 0;
}
