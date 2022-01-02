// H2 PC GSC
// Decompiled by https://github.com/xensik/gsc-tool

init()
{
    level._ID1426["c4_light_blink"] = loadfx( "vfx/lights/light_c4_blink" );
    level._ID1426["claymore_laser"] = loadfx( "vfx/props/claymore_laser" );
    loadgrenadeexplosionfx( "dirt" );
    loadgrenadeexplosionfx( "dust" );
    loadgrenadeexplosionfx( "mud" );
    loadgrenadeexplosionfx( "snow" );
    loadgrenadeexplosionfx( "water" );
    setgrenadeexplosionfxoverride( "water_waist", "water" );
    setgrenadeexplosionfxoverride( "water_ankle", "water" );
    setgrenadeexplosionfxoverride( "water_knee", "water" );
    setgrenadeexplosionfxoverride( "foliage_debris", "dirt" );
    setgrenadeexplosionfxoverride( "foliage_vegetation", "dirt" );
    setgrenadeexplosionfxoverride( "foliage_leaves", "dirt" );
    setgrenadeexplosionfxoverride( "grass", "dirt" );
    setgrenadeexplosionfxoverride( "grass_tall", "dirt" );
    setgrenadeexplosionfxoverride( "sand", "dirt" );
    setgrenadeexplosionfxoverride( "ice", "snow" );
    setgrenadeexplosionfxoverride( "default", "dust" );

    for ( var_0 = 0; var_0 < level._ID805.size; var_0++ )
        level._ID805[var_0] thread _ID41525();
}

_ID41525()
{
    level._ID6519 = 0;
    self endon( "death" );
    self._ID6512 = [];
    self._ID37697 = 0;
    thread _ID41478();
    thread _ID41481();
    thread _ID41485();
    thread _ID5008();
    thread _ID4990();

    for (;;)
    {
        self waittill( "grenade_pullback",  var_0  );
        self._ID37697 = 1;

        if ( var_0 == "c4" )
        {
            _ID5018();
            continue;
        }

        if ( var_0 == "smoke_grenade_american" )
        {
            _ID5027();
            continue;
        }

        _ID5023();
    }
}

loadgrenadeexplosionfx( var_0 )
{
    level._ID1426["explosion_overlay_" + var_0 + "_left"] = loadfx( "vfx/explosion/explosion_overlay_" + var_0 + "_left" );
    level._ID1426["explosion_overlay_" + var_0 + "_bottom"] = loadfx( "vfx/explosion/explosion_overlay_" + var_0 + "_middle" );
    level._ID1426["explosion_overlay_" + var_0 + "_right"] = loadfx( "vfx/explosion/explosion_overlay_" + var_0 + "_right" );
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

    if ( isdefined( level._ID1426[var_2] ) )
        return level._ID1426[var_2];

    var_2 = "explosion_overlay_default_" + var_0;
    return level._ID1426[var_2];
}

_ID5027()
{
    self waittill( "grenade_fire",  var_0, var_1  );

    if ( !isdefined( level._ID34439 ) )
        level._ID34439 = 0;

    var_0 thread _ID34436();
}

_ID5022()
{
    self._ID37697 = 0;
    var_0 = gettime();
    self waittill( "grenade_fire",  var_1, var_2  );

    if ( isdefined( var_1 ) )
    {
        var_3 = gettime();
        var_4 = var_3 - var_0;

        if ( var_4 >= 1250 )
        {
            var_1 waittill( "explode",  var_5  );

            if ( soundexists( "null" ) )
                thread _ID42237::_ID27077( "null", var_5 );

            radiusdamage( var_5, 96, 300, 200, self, "MOD_UNKNOWN", "flash_grenade" );
        }
    }
}

_ID5008()
{
    for (;;)
    {
        self waittill( "grenade_fire",  var_0, var_1  );

        if ( var_1 == "semtex_grenade" )
        {
            thread _ID38069( var_0 );
            var_0 thread _ID31870( self );
        }
    }
}

_ID38069( var_0 )
{
    self._ID37697 = 0;

    if ( !isdefined( level._ID37698 ) )
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

    if ( !isdefined( var_1 ) )
        return;

    if ( var_1.code_classname != "script_vehicle" )
        return;

    var_1._ID18176 = 1;
    self waittill( "explode" );

    if ( !isdefined( var_1 ) || !isalive( var_1 ) )
        return;

    if ( var_1 _ID42411::_ID20532() || var_1 _ID42413::_ID3628( var_0 ) )
    {
        var_1._ID18176 = undefined;
        return;
    }

    var_1 kill( var_1.origin, var_0 );
}

_ID4990()
{
    for (;;)
    {
        self waittill( "grenade_fire",  var_0, var_1  );

        if ( var_1 == "concussion_grenade" )
            thread _ID38052( var_0 );
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
    setdvar( "noflash", "1" );
    wait 0.05;
    setdvar( "noflash", "0" );
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
    self waittill( "grenade_fire",  var_0, var_1  );

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
        self waittill( "grenade_fire",  var_0, var_1  );

        if ( var_1 == "c4" )
        {
            if ( !self._ID6512.size )
                thread _ID41479();

            self._ID6512[self._ID6512.size] = var_0;
            var_0.owner = self;
            var_0 thread _ID6513();
            thread _ID6514( var_0 );
            var_0 thread _ID27192();
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
        self waittill( "grenade_fire",  var_0, var_1  );

        if ( var_1 == "claymore" || var_1 == "claymore_mp" )
        {
            var_0.owner = self;
            var_0 thread _ID6513( 1 );
            var_0 thread _ID7755();
            var_0 thread _ID27193();
        }
    }
}

_ID7756( var_0 )
{
    self endon( "death" );
    wait 1;

    if ( isdefined( level._ID7758 ) )
    {
        self thread [[ level._ID7758 ]]( var_0 );
        return;
    }

    self makeentitysentient( var_0, 1 );
    self.attackeraccuracy = 2;
    self.maxvisibledist = 750;
    self.threatbias = -1000;
}

_ID7755()
{
    self endon( "death" );
    self waittill( "missile_stuck" );
    var_0 = 192;

    if ( isdefined( self._ID10678 ) )
        var_0 = self._ID10678;

    var_1 = spawn( "trigger_radius", self.origin + ( 0, 0, 0 - var_0 ), 9, var_0, var_0 * 2 );
    thread _ID10333( var_1 );

    if ( !isdefined( level._ID7757 ) )
        level._ID7757 = [];

    level._ID7757 = _ID42237::_ID3293( level._ID7757, self );

    if ( !_ID42407::_ID20614() && level._ID7757.size > 15 )
        level._ID7757[0] delete();

    for (;;)
    {
        var_1 waittill( "trigger",  var_2  );

        if ( isdefined( self.owner ) && var_2 == self.owner )
            continue;

        if ( isplayernumber( var_2 ) )
            continue;

        if ( var_2 damageconetrace( self.origin, self ) > 0 )
        {
            self playsound( "claymore_activated_SP" );
            wait 0.4;

            if ( isdefined( self.owner ) )
                self detonate( self.owner );
            else
                self detonate( undefined );

            return;
        }
    }
}

_ID10333( var_0 )
{
    self waittill( "death" );
    level._ID7757 = _ID42407::_ID3326( level._ID7757, self );
    wait 0.05;

    if ( isdefined( var_0 ) )
        var_0 delete();
}

_ID41481()
{
    self endon( "death" );

    for (;;)
    {
        self waittill( "detonate" );
        var_0 = self getcurrentweapon();

        if ( var_0 == "c4" )
        {
            for ( var_1 = 0; var_1 < self._ID6512.size; var_1++ )
            {
                if ( isdefined( self._ID6512[var_1] ) )
                    self._ID6512[var_1] thread _ID40969( 0.1 );
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
        var_0 = self getcurrentweapon();

        if ( var_0 != "c4" )
        {
            var_1 = [];

            for ( var_2 = 0; var_2 < self._ID6512.size; var_2++ )
            {
                var_3 = self._ID6512[var_2];

                if ( isdefined( self._ID6512[var_2] ) )
                    var_3 thread _ID40969( 0.1 );
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
    self detonate();
}

_ID6513( var_0 )
{
    self.health = 100;
    self setcandamage( 1 );
    self.maxhealth = 100000;
    self.health = self.maxhealth;
    var_1 = undefined;

    for (;;)
    {
        self waittill( "damage",  var_2, var_1  );
        break;
    }

    self playsound( "claymore_activated_SP" );

    if ( level._ID6519 )
        wait(0.1 + randomfloat( 0.4 ));
    else
        wait 0.05;

    if ( !isdefined( self ) )
        return;

    level._ID6519 = 1;

    if ( isdefined( var_0 ) && var_0 && isplayernumber( var_1 ) )
        level._ID48473 = 1;

    thread _ID29770();

    if ( isplayernumber( var_1 ) )
        self detonate( var_1 );
    else
        self detonate();
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
    playfxontag( _ID42237::_ID16299( "c4_light_blink" ), self, "tag_fx" );
}

_ID27193()
{
    self endon( "death" );
    self waittill( "missile_stuck" );
    playfxontag( _ID42237::_ID16299( "claymore_laser" ), self, "tag_fx" );
}

_ID7921( var_0 )
{
    self waittill( "death" );
    var_0 delete();
}

_ID16203( var_0, var_1, var_2, var_3 )
{
    var_4 = [];

    if ( !isdefined( var_2 ) )
        var_2 = 0;

    if ( !isdefined( var_3 ) )
        var_3 = 0;

    for ( var_5 = 0; var_5 < level._ID805.size; var_5++ )
    {
        if ( !isalive( level._ID805[var_5] ) || level._ID805[var_5]._ID958 != "playing" )
            continue;

        var_6 = level._ID805[var_5].origin + ( 0, 0, 32 );
        var_7 = distance( var_0, var_6 );

        if ( var_7 < var_1 && ( !var_2 || _ID41689( var_0, var_6, var_3, undefined ) ) )
        {
            var_8 = spawnstruct();
            var_8._ID20856 = 1;
            var_8._ID20651 = 0;
            var_8._ID337 = level._ID805[var_5];
            var_8._ID9618 = var_6;
            var_4[var_4.size] = var_8;
        }
    }

    var_9 = getentarray( "grenade", "classname" );

    for ( var_5 = 0; var_5 < var_9.size; var_5++ )
    {
        var_10 = var_9[var_5].origin;
        var_7 = distance( var_0, var_10 );

        if ( var_7 < var_1 && ( !var_2 || _ID41689( var_0, var_10, var_3, var_9[var_5] ) ) )
        {
            var_8 = spawnstruct();
            var_8._ID20856 = 0;
            var_8._ID20651 = 0;
            var_8._ID337 = var_9[var_5];
            var_8._ID9618 = var_10;
            var_4[var_4.size] = var_8;
        }
    }

    var_11 = getentarray( "destructable", "targetname" );

    for ( var_5 = 0; var_5 < var_11.size; var_5++ )
    {
        var_10 = var_11[var_5].origin;
        var_7 = distance( var_0, var_10 );

        if ( var_7 < var_1 && ( !var_2 || _ID41689( var_0, var_10, var_3, var_11[var_5] ) ) )
        {
            var_8 = spawnstruct();
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

    if ( lengthsquared( var_5 ) < var_2 * var_2 )
        var_4 = var_1;

    var_6 = vectornormalize( var_5 );
    var_4 = var_0 + ( var_6[0] * var_2, var_6[1] * var_2, var_6[2] * var_2 );
    var_7 = bullettrace( var_4, var_1, 0, var_3 );

    if ( getdvarint( "scr_damage_debug" ) != 0 )
    {
        if ( var_7["fraction"] == 1 )
            thread _ID10028( var_4, var_1, ( 1, 1, 1 ) );
        else
        {
            thread _ID10028( var_4, var_7["position"], ( 1, 0.9, 0.8 ) );
            thread _ID10028( var_7["position"], var_1, ( 1, 0.4, 0.3 ) );
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
        if ( self._ID20651 && ( var_4 == "artillery_mp" || var_4 == "claymore_mp" ) )
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
        case "concussion_grenade_mp":
            var_4 = 512;
            var_5 = 1 - distance( self.origin, var_0.origin ) / var_4;
            var_6 = 1 + 4 * var_5;
            wait 0.05;
            self shellshock( "concussion_grenade_mp", var_6 );
            break;
        default:
            break;
    }
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
        if ( self usebuttonpressed() )
        {
            var_0 = 0;

            while ( self usebuttonpressed() )
            {
                var_0 += 0.05;
                wait 0.05;
            }

            if ( var_0 >= 0.5 )
                continue;

            var_0 = 0;

            while ( !self usebuttonpressed() && var_0 < 0.5 )
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
