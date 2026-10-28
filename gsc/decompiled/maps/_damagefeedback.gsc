// H2 GSC SOURCE
// Dumped by https://github.com/xensik/gsc-tool

init()
{
    precacheshader( "h2_damage_feedback" );
    precacheshader( "h2_damage_feedback_headshot" );
    maps\_utility::enable_damagefeedback_hud();
    maps\_utility::enable_damagefeedback_snd();
    common_scripts\utility::array_thread( level.players, ::init_damage_feedback );
    common_scripts\utility::array_thread( level.players, maps\_utility::generic_damage_think );
    common_scripts\utility::array_thread( level.players, ::monitordamage );
}

init_damage_feedback()
{
    self.hud_damagefeedback = newclienthudelem( self );
    self.hud_damagefeedback.alignx = "center";
    self.hud_damagefeedback.aligny = "middle";
    self.hud_damagefeedback.horzalign = "center";
    self.hud_damagefeedback.vertalign = "middle";
    self.hud_damagefeedback.alpha = 0;
    self.hud_damagefeedback._id_D1D6 = 0;
    self.hud_damagefeedback.archived = 1;
    self.hud_damagefeedback setshader( "h2_damage_feedback", 50, 100 );
    self.hud_damagefeedback.y = 25;
    self.hud_damagefeedback_headshot = newclienthudelem( self );
    self.hud_damagefeedback_headshot.alignx = "center";
    self.hud_damagefeedback_headshot.aligny = "middle";
    self.hud_damagefeedback_headshot.horzalign = "center";
    self.hud_damagefeedback_headshot.vertalign = "middle";
    self.hud_damagefeedback_headshot.alpha = 0;
    self.hud_damagefeedback_headshot.archived = 1;
    self.hud_damagefeedback_headshot setshader( "h2_damage_feedback_headshot", 50, 100 );
    self.hud_damagefeedback_headshot.y = 25;
}

monitordamage()
{
    maps\_utility::add_damage_function( ::damagefeedback_took_damage );
}

stopmonitordamage()
{
    maps\_utility::remove_damage_function( ::damagefeedback_took_damage );
}

damagefeedback_took_damage( var_0, var_1, var_2, var_3, var_4, var_5, var_6, var_7, var_8, var_9 )
{
    var_10 = 0;

    if ( isdefined( self.bullet_resistance ) )
    {
        var_11 = [];
        var_11["MOD_PISTOL_BULLET"] = 1;
        var_11["MOD_RIFLE_BULLET"] = 1;

        if ( isdefined( var_11[var_4] ) )
        {
            if ( var_0 <= self.bullet_resistance && ( !isdefined( self.mech ) || !self.mech || !isdefined( var_9 ) || !issubstr( var_9, "iw5_em1" ) ) )
                return;
        }
    }

    if ( isdefined( self.damagelocation ) && ( self.damagelocation == "head" || self.damagelocation == "helmet" ) )
        var_10 = 1;

    var_1 updatedamagefeedback( self, var_10, var_4 );
}

updatedamagefeedback( var_0, var_1, var_2 )
{
    var_3 = undefined;

    if ( isdefined( var_0.team ) )
        var_3 = var_0.team;
    else if ( isdefined( var_0.script_team ) )
        var_3 = var_0.script_team;

    if ( !isdefined( var_3 ) )
        return;

    if ( var_3 == "neutral" || isdefined( self.team ) && var_3 == self.team )
        return;

    if ( isdefined( var_0._id_A87F ) && isdefined( var_0._id_A87F.ts_forced_hit_marker ) && var_0._id_A87F.ts_forced_hit_marker )
        var_0._id_A87F.ts_forced_hit_marker = 0;
    else if ( isdefined( var_0.magic_bullet_shield ) && var_0.magic_bullet_shield )
        return;

    if ( isdefined( var_0.godmode ) && var_0.godmode )
        return;

    if ( isdefined( var_0.script_godmode ) && var_0.script_godmode )
        return;

    updatedamagefeedbacksnd( var_0, var_2 );
    updatedamagefeedbackhud( var_1, var_0 );
}

updatedamagefeedbacksnd( var_0, var_1 )
{
    if ( !maps\_utility::is_damagefeedback_snd_enabled() )
        return;

    if ( isdefined( var_0 ) && isdefined( var_0.disabledamagefeedbacksnd ) && var_0.disabledamagefeedbacksnd )
        return;

    if ( isplayer( self ) )
    {
        var_2 = "SP_hit_alert_npc";

        if ( soundexists( var_2 ) )
        {
            level.player playlocalsound( var_2 );
            return;
        }
    }
    else if ( isplayer( var_0 ) )
    {
        if ( isdefined( var_1 ) && var_1 == "MOD_CRUSH" )
        {
            var_2 = "h2_player_gets_crushed";

            if ( soundexists( var_2 ) )
                level.player playlocalsound( var_2 );
        }
    }
}

updatedamagefeedbackhud( var_0, var_1 )
{
    if ( !maps\_utility::is_damagefeedback_hud_enabled() )
        return;

    if ( !isplayer( self ) )
        return;

    if ( isdefined( var_1.skiphitmarker ) && var_1.skiphitmarker )
        return;

    var_2 = 1;

    if ( isdefined( level.slowmo.speed_slow ) )
        var_2 = level.slowmo.speed_slow;

    var_3 = var_1.health <= 0 || !isalive( var_1 ) || isdefined( var_1._id_CB51 ) && var_1._id_CB51;

    if ( var_3 && !isdefined( var_1._id_B2B3 ) || isdefined( var_1.alwaysredhitmarker ) && var_1.alwaysredhitmarker )
    {
        self.hud_damagefeedback.color = ( 1, 0, 0 );
        self.hud_damagefeedback_headshot.color = ( 1, 0, 0 );
        self.hud_damagefeedback._id_D1D6 = 1;
    }
    else if ( self.hud_damagefeedback._id_D1D6 )
    {
        self.hud_damagefeedback.color = ( 1, 1, 1 );
        self.hud_damagefeedback_headshot.color = ( 1, 1, 1 );
        self.hud_damagefeedback._id_D1D6 = 0;
    }

    if ( isdefined( var_0 ) && var_0 && isdefined( var_1 ) && var_3 )
    {
        self.hud_damagefeedback_headshot.alpha = 1;
        self.hud_damagefeedback_headshot fadeovertime( var_2 );
        self.hud_damagefeedback_headshot.alpha = 0;
        var_4 = getdvarfloat( "cg_crosshairVerticalOffset" ) * 240;
        self.hud_damagefeedback_headshot.y = 25 - int( var_4 );
    }
    else
    {
        self.hud_damagefeedback.alpha = 1;
        self.hud_damagefeedback fadeovertime( var_2 );
        self.hud_damagefeedback.alpha = 0;
        var_4 = getdvarfloat( "cg_crosshairVerticalOffset" ) * 240;
        self.hud_damagefeedback.y = 25 - int( var_4 );
    }
}
