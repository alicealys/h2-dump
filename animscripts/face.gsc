// H2 PC GSC
// Decompiled by https://github.com/xensik/gsc-tool

_ID19865()
{
    if ( !anim._ID39938 )
        return;

    if ( !isdefined( self._ID7._ID9491 ) )
    {
        self._ID7._ID9491 = 0;
        self._ID7._ID19327 = anim._ID2517;
        self._ID13762 = [];
        self._ID13758 = 0;
    }
}

_ID30759( var_0 )
{
    var_1 = undefined;
    var_2 = 0;

    switch ( self._ID40757 )
    {
        case "delta":
        case "american":
        case "seal":
        case "taskforce":
        case "french":
        case "czech":
        case "pmc":
        case "xslice":
            var_3 = "friendly";
            var_4 = anim._ID25252;
            break;
        default:
            var_3 = "enemy";
            var_4 = anim._ID25248;
            var_2 = 1;
    }

    var_1 = 1 + self getentitynumber() % var_4;

    if ( actorisfemale() )
        var_3 = "enemy_fm";

    var_3 = var_3 + "_" + var_1;
    var_5 = undefined;

    switch ( var_0 )
    {
        case "meleeattack":
        case "meleecharge":
            var_6 = 0.5;
            break;
        case "flashbang":
            var_6 = 0.7;
            break;
        case "pain":
            var_6 = 0.9;
            break;
        case "pain_small":
            var_6 = 0.9;
            break;
        case "death":
        case "dogdeathshort":
        case "dogdeathlong":
        case "dogdeathshortplr":
        case "dogdeathlongplr":
        case "melee_death":
            if ( isdefined( self._ID85 ) && isplayernumber( self._ID85 ) && var_2 )
                var_0 += "_kbp";

            var_6 = 1.0;
            break;
        default:
            var_6 = 0.3;
            break;
    }

    var_7 = undefined;

    if ( isdefined( self._ID15532 ) )
    {
        var_7 = self._ID15532 + "_" + var_0 + "_" + var_3;

        if ( !soundexists( var_7 ) )
            var_7 = "generic_" + var_0 + "_" + var_3;
    }
    else
        var_7 = "generic_" + var_0 + "_" + var_3;

    thread _ID28061( var_5, var_7, var_6 );
}

actorisfemale()
{
    if ( issubstr( self.model, "female" ) )
        return 1;

    return 0;
}

_ID32659( var_0 )
{
    animscripts\battlechatter::_ID27185();
    self._ID7._ID19327 = var_0;
}

_ID32658( var_0 )
{
    if ( !anim._ID39938 )
        return;

    animscripts\battlechatter::_ID27185();
    self._ID7._ID19327 = var_0;
    _ID28080();
}

_ID30763( var_0, var_1, var_2, var_3, var_4, var_5 )
{
    thread _ID28061( var_0, var_1, var_2, var_3, var_4, var_5 );
}

_ID7492( var_0 )
{
    return;
}

_ID28080()
{
    return;
}

_ID28061( var_0, var_1, var_2, var_3, var_4, var_5 )
{
    self._ID7._ID13767 = 1;
    self._ID7._ID13771 = 1;

    if ( isdefined( var_3 ) )
    {
        if ( isdefined( var_1 ) )
        {
            if ( !soundexists( var_1 ) )
            {
                wait 0;
                self notify( var_3 );
            }

            self playsoundatviewheight( var_1, "animscript facesound" + var_3, 1 );
            thread _ID40991( var_3 );
        }
    }
    else
        self playsoundatviewheight( var_1 );

    if ( !anim._ID39938 )
        return;

    _ID19865();

    if ( !isdefined( var_0 ) && !isdefined( var_1 ) )
    {
        if ( isdefined( var_3 ) )
        {
            wait 0;
            self._ID13760 = "failed";
            self notify( var_3 );
        }
    }
    else
    {
        self endon( "death" );

        if ( isstring( var_2 ) )
        {
            switch ( var_2 )
            {
                case "any":
                    var_2 = 0.1;
                    break;
                case "pain":
                    var_2 = 0.9;
                    break;
                case "death":
                    var_2 = 1.0;
                    break;
            }
        }

        if ( var_2 <= self._ID7._ID9491 && ( isdefined( var_4 ) && var_4 == "wait" ) )
        {
            var_6 = self._ID13762.size;
            var_7 = self._ID13758 + 1;
            self._ID13762[var_6]["facialanim"] = var_0;
            self._ID13762[var_6]["soundAlias"] = var_1;
            self._ID13762[var_6]["importance"] = var_2;
            self._ID13762[var_6]["notifyString"] = var_3;
            self._ID13762[var_6]["waitOrNot"] = var_4;
            self._ID13762[var_6]["timeToWait"] = var_5;
            self._ID13762[var_6]["notifyNum"] = var_7;
            thread _ID28059( "animscript face stop waiting " + self._ID13762[var_6]["notifyNum"], "Face done waiting", "Face done waiting" );

            if ( isdefined( var_5 ) )
                thread _ID28060( var_5, "Face done waiting", "Face done waiting" );

            self waittill( "Face done waiting" );
            var_6 = undefined;

            for ( var_8 = 0; var_8 < self._ID13762.size; var_8++ )
            {
                if ( self._ID13762[var_8]["notifyNum"] == var_7 )
                {
                    var_6 = var_8;
                    break;
                }
            }

            if ( self._ID7._ID13761 == "notify" )
                _ID28061( self._ID13762[var_6]["facialanim"], self._ID13762[var_6]["soundAlias"], self._ID13762[var_6]["importance"], self._ID13762[var_6]["notifyString"] );
            else if ( isdefined( var_3 ) )
            {
                self._ID13760 = "failed";
                self notify( var_3 );
            }

            for ( var_8 = var_6 + 1; var_8 < self._ID13762.size; var_8++ )
            {
                self._ID13762[var_8 - 1]["facialanim"] = self._ID13762[var_8]["facialanim"];
                self._ID13762[var_8 - 1]["soundAlias"] = self._ID13762[var_8]["soundAlias"];
                self._ID13762[var_8 - 1]["importance"] = self._ID13762[var_8]["importance"];
                self._ID13762[var_8 - 1]["notifyString"] = self._ID13762[var_8]["notifyString"];
                self._ID13762[var_8 - 1]["waitOrNot"] = self._ID13762[var_8]["waitOrNot"];
                self._ID13762[var_8 - 1]["timeToWait"] = self._ID13762[var_8]["timeToWait"];
                self._ID13762[var_8 - 1]["notifyNum"] = self._ID13762[var_8]["notifyNum"];
            }

            self._ID13762[self._ID13762.size - 1] = undefined;
        }
        else
        {
            if ( var_2 >= self._ID7._ID9491 )
            {
                self notify( "end current face" );
                self endon( "end current face" );

                if ( isdefined( var_3 ) )
                {
                    if ( isdefined( self._ID7._ID9492 ) )
                    {
                        self._ID13760 = "interrupted";
                        self notify( self._ID7._ID9492 );
                    }
                }

                self._ID7._ID9491 = var_2;
                self._ID7._ID9493 = var_1;
                self._ID7._ID9492 = var_3;
                self._ID7._ID13767 = 1;
                self._ID7._ID13771 = 1;

                if ( isdefined( var_0 ) )
                {
                    _ID42259::_ID11015();
                    self setflaggedanimknobrestart( "animscript faceanim", var_0, 1, 0.1, 1 );
                    self._ID7._ID13767 = 0;
                    thread _ID40992();
                }
                else
                    _ID42259::_ID11015( 0 );

                if ( isdefined( var_1 ) )
                {
                    self playsoundatviewheight( var_1, "animscript facesound", 1 );
                    self._ID7._ID13771 = 0;
                    thread _ID40991();
                }

                while ( !self._ID7._ID13767 || !self._ID7._ID13771 )
                    self waittill( "animscript facedone" );

                self._ID7._ID9491 = 0;
                self._ID7._ID9493 = undefined;
                self._ID7._ID9492 = undefined;

                if ( isdefined( var_3 ) )
                {
                    self._ID13760 = "finished";
                    self notify( var_3 );
                }

                if ( isdefined( self._ID13762 ) && self._ID13762.size > 0 )
                {
                    var_9 = 0;
                    var_10 = 1;

                    for ( var_8 = 0; var_8 < self._ID13762.size; var_8++ )
                    {
                        if ( self._ID13762[var_8]["importance"] > var_9 )
                        {
                            var_9 = self._ID13762[var_8]["importance"];
                            var_10 = var_8;
                        }
                    }

                    self notify( "animscript face stop waiting " + self._ID13762[var_10]["notifyNum"] );
                    return;
                }

                if ( isai( self ) )
                {
                    _ID28080();
                    return;
                }

                return;
                return;
            }

            if ( isdefined( var_3 ) )
            {
                self._ID13760 = "failed";
                self notify( var_3 );
            }
        }
    }
}

_ID40992()
{
    self endon( "death" );
    self endon( "end current face" );
    animscripts\shared::_ID11529( "animscript faceanim" );
    self._ID7._ID13767 = 1;
    self notify( "animscript facedone" );
    _ID42259::_ID11015( 0 );
}

_ID40991( var_0 )
{
    self endon( "death" );
    self waittill( "animscript facesound" + var_0 );
    self notify( var_0 );
}

_ID28059( var_0, var_1, var_2 )
{
    self endon( "death" );
    self endon( var_2 );
    self waittill( var_0 );
    self._ID7._ID13761 = "notify";
    self notify( var_1 );
}

_ID28060( var_0, var_1, var_2 )
{
    self endon( "death" );
    self endon( var_2 );
    wait(var_0);
    self._ID7._ID13761 = "time";
    self notify( var_1 );
}

_ID19954()
{
    anim._ID25252 = 8;
    anim._ID25248 = 8;
    _ID19903();
}
#using_animtree("generic_human");

_ID19903()
{
    anim._ID13764 = [];
    anim._ID13764["pain"] = [ %facial_pain_1, %facial_pain_2, %facial_pain_3, %facial_pain_4 ];
    anim._ID13764["aim"] = [ %facial_aim_1, %facial_aim_2 ];
    anim._ID13764["run"] = [ %facial_run_1, %facial_run_2 ];
    anim._ID13764["corner_stand_L"] = [ %facial_corner_stand_l_1, %facial_corner_stand_l_2 ];
    anim._ID13764["corner_stand_R"] = [ %facial_corner_stand_r_1, %facial_corner_stand_r_2 ];
    anim._ID13764["death"] = [ %facial_death_1, %facial_death_2, %facial_death_3, %facial_death_4 ];
    anim._ID13764["idle"] = [ %facial_idle_1, %facial_idle_2, %facial_idle_3 ];
}

_ID3186( var_0 )
{
    return animhasnotetrack( var_0, "facial_override" );
}

_ID51415()
{
    self clearanim( %head, 0.2 );
}

_ID28062( var_0, var_1, var_2 )
{
    if ( !isdefined( self._ID13769 ) )
        thread _ID13766();

    if ( isdefined( self._ID4956 ) && self._ID4956 )
        self clearanim( %head, 0.2 );
    else
    {
        if ( isdefined( var_0 ) && _ID3186( var_0 ) )
        {
            self clearanim( %head, 0.2 );
            return;
        }

        if ( !isdefined( anim._ID13764[var_1] ) )
            return;

        if ( isdefined( var_2 ) && var_2 >= 0 && var_2 < anim._ID13764[var_1].size )
            var_3 = var_2;
        else
            var_3 = randomint( anim._ID13764[var_1].size );

        var_4 = anim._ID13764[var_1][var_3];
        self setanimknob( var_4 );

        if ( var_1 == "death" )
        {
            if ( isdefined( var_0 ) )
                thread _ID12593( getanimlength( var_0 ) );
            else
                thread _ID12593();
        }
    }
}

_ID12593( var_0 )
{
    var_1 = 1.0;
    var_2 = 0.2;

    if ( isdefined( var_0 ) )
        var_1 = clamp( var_0, var_2 + 0.5, var_1 + var_2 ) - var_2;

    wait(var_1);

    if ( isdefined( self ) )
        self clearanim( %head, var_2 );
}

_ID15721()
{
    if ( self _meth_844f( "jnt_eyelid_TL" ) == -1 || self _meth_844f( "tag_eye" ) == -1 )
        return;

    if ( self _meth_844f( "jnt_eyelid_TR" ) == -1 )
        return;

    var_0 = self gettagangles( "tag_eye" );
    var_1 = self gettagangles( "jnt_eyelid_TR" );
    var_2 = self gettagangles( "jnt_eyelid_TL" );
    var_3 = angleclamp180( abs( var_0[0] - var_1[0] ) );
    var_4 = angleclamp180( abs( var_0[0] - var_2[0] ) );

    if ( !isdefined( self._ID28480 ) )
        self._ID28480 = var_3;

    if ( !isdefined( self._ID28481 ) )
        self._ID28481 = var_4;

    if ( !isdefined( self._ID13747 ) )
        self._ID13747 = 0;

    if ( angleclamp180( var_3 - self._ID28480 ) > 5 || angleclamp180( var_4 - self._ID28481 ) > 5 )
    {
        self._ID28480 = var_3;
        self._ID28481 = var_4;
    }
    else
        self._ID13747++;

    if ( isdefined( self._ID13747 ) && self._ID13747 > 4 && isdefined( self.script ) && self.script != "scripted" && self.script != "death" && self.script != "civilian_death" )
    {
        var_5 = _ID28062( undefined, "idle", undefined );

        if ( isdefined( var_5 ) )
            wait(getanimlength( anim._ID13764["idle"][var_5] ));

        self._ID13747 = 0;
    }
}

_ID13766()
{
    self endon( "death" );
    self endon( "killanimscript" );
    self._ID13769 = 1;

    for (;;)
    {
        _ID15721();
        wait 0.35;
    }
}
