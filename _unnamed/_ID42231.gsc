// H2 PC GSC
// Decompiled by https://github.com/xensik/gsc-tool

_ID521()
{
    level._ID10559 = 50;
    level._ID10558 = [];
    level._ID9486 = 0;
    level._ID8389 = gettime();

    if ( !isdefined( level._ID15079 ) )
        level._ID15079 = [];

    var_0 = 1;

    if ( var_0 )
        _ID14182();

    var_1 = getentarray( "delete_on_load", "targetname" );

    foreach ( var_3 in var_1 )
        var_3 delete();

    _ID19674();
    _ID19675();
}

_ID51279()
{
    wait 1;
    var_0 = getentarray( "destructible", "targetname" );

    if ( var_0.size != 0 )
    {
        foreach ( var_2 in var_0 )
        {

        }
    }
}

_ID14182()
{
    var_0 = getentarray( "destructible_vehicle", "targetname" );

    foreach ( var_2 in var_0 )
        var_2 _ID32948();

    var_4 = getentarray( "destructible_toy", "targetname" );

    foreach ( var_6 in var_4 )
        var_6 _ID32948();
}

_ID32948( var_0 )
{
    if ( !isdefined( var_0 ) )
        var_0 = 0;

    var_1 = undefined;
    self._ID23876 = 0;
    _ID1870();
    self._ID51676 = _ID50449::_ID47340( self._ID279 );

    if ( self._ID51676 < 0 )
        return;

    if ( !var_0 )
        _ID28350();

    _ID1878();

    if ( isdefined( level._ID279[self._ID51676]._ID26282 ) )
    {
        self._ID10536 = [];

        for ( var_3 = 0; var_3 < level._ID279[self._ID51676]._ID26282.size; var_3++ )
        {
            self._ID10536[var_3] = spawnstruct();
            self._ID10536[var_3]._ID40005["currentState"] = 0;

            if ( isdefined( level._ID279[self._ID51676]._ID26282[var_3][0]._ID40005["health"] ) )
                self._ID10536[var_3]._ID40005["health"] = level._ID279[self._ID51676]._ID26282[var_3][0]._ID40005["health"];

            if ( isdefined( level._ID279[self._ID51676]._ID26282[var_3][0]._ID40005["random_dynamic_attachment_1"] ) )
            {
                var_4 = randomint( level._ID279[self._ID51676]._ID26282[var_3][0]._ID40005["random_dynamic_attachment_1"].size );
                var_5 = level._ID279[self._ID51676]._ID26282[var_3][0]._ID40005["random_dynamic_attachment_tag"][var_4];
                var_6 = level._ID279[self._ID51676]._ID26282[var_3][0]._ID40005["random_dynamic_attachment_1"][var_4];
                var_7 = level._ID279[self._ID51676]._ID26282[var_3][0]._ID40005["random_dynamic_attachment_2"][var_4];
                var_8 = level._ID279[self._ID51676]._ID26282[var_3][0]._ID40005["clipToRemove"][var_4];
                thread _ID11217( var_5, var_6, var_7, var_8 );
            }

            if ( var_3 == 0 )
                continue;

            var_9 = level._ID279[self._ID51676]._ID26282[var_3][0]._ID40005["modelName"];
            var_10 = level._ID279[self._ID51676]._ID26282[var_3][0]._ID40005["tagName"];

            for ( var_11 = 1; isdefined( level._ID279[self._ID51676]._ID26282[var_3][var_11] ); var_11++ )
            {
                var_12 = level._ID279[self._ID51676]._ID26282[var_3][var_11]._ID40005["tagName"];
                var_13 = level._ID279[self._ID51676]._ID26282[var_3][var_11]._ID40005["modelName"];

                if ( isdefined( var_12 ) && var_12 != var_10 )
                {
                    _ID18543( var_12 );

                    if ( self._ID23876 )
                        self._ID23875 _ID18543( var_12 );
                }
            }
        }
    }

    if ( isdefined( self._ID1191 ) )
        thread _ID10526();

    if ( self._ID172 != "script_vehicle" )
        self setcandamage( 1 );

    if ( _ID42237::_ID20913() )
        thread _ID8531();

    thread _ID10549();

    if ( isdefined( self._ID1191 ) )
        thread _ID50142();
}

_ID10505( var_0, var_1, var_2, var_3, var_4, var_5 )
{
    if ( !isdefined( level._ID279 ) )
        level._ID279 = [];

    var_6 = level._ID279.size;
    var_6 = level._ID279.size;
    level._ID279[var_6] = spawnstruct();
    level._ID279[var_6]._ID40005["type"] = var_0;
    level._ID279[var_6]._ID26282 = [];
    level._ID279[var_6]._ID26282[0][0] = spawnstruct();
    level._ID279[var_6]._ID26282[0][0]._ID40005["modelName"] = self._ID669;
    level._ID279[var_6]._ID26282[0][0]._ID40005["tagName"] = var_1;
    level._ID279[var_6]._ID26282[0][0]._ID40005["health"] = var_2;
    level._ID279[var_6]._ID26282[0][0]._ID40005["validAttackers"] = var_3;
    level._ID279[var_6]._ID26282[0][0]._ID40005["validDamageZone"] = var_4;
    level._ID279[var_6]._ID26282[0][0]._ID40005["validDamageCause"] = var_5;
    level._ID279[var_6]._ID26282[0][0]._ID40005["godModeAllowed"] = 1;
    level._ID279[var_6]._ID26282[0][0]._ID40005["rotateTo"] = self._ID65;
    level._ID279[var_6]._ID26282[0][0]._ID40005["vehicle_exclude_anim"] = 0;
}

_ID10535( var_0, var_1, var_2, var_3, var_4, var_5, var_6, var_7, var_8, var_9, var_10 )
{
    var_11 = level._ID279.size - 1;
    var_12 = level._ID279[var_11]._ID26282.size;
    var_13 = 0;
    _ID10529( var_12, var_13, var_0, var_1, var_2, var_3, var_4, var_5, var_6, var_7, var_8, undefined, var_9, var_10 );
}

_ID10548( var_0, var_1, var_2, var_3, var_4, var_5, var_6, var_7 )
{
    var_8 = level._ID279.size - 1;
    var_9 = level._ID279[var_8]._ID26282.size - 1;
    var_10 = level._ID279[var_8]._ID26282[var_9].size;

    if ( !isdefined( var_0 ) && var_9 == 0 )
        var_0 = level._ID279[var_8]._ID26282[var_9][0]._ID40005["tagName"];

    _ID10529( var_9, var_10, var_0, var_1, var_2, var_3, var_4, var_5, undefined, undefined, var_6, var_7 );
}

_ID10517( var_0, var_1, var_2, var_3, var_4, var_5 )
{
    if ( !isdefined( var_2 ) )
        var_2 = 1;

    if ( !isdefined( var_4 ) )
        var_4 = 0;

    if ( !isdefined( var_5 ) )
        var_5 = 0;

    var_6 = level._ID279.size - 1;
    var_7 = level._ID279[var_6]._ID26282.size - 1;
    var_8 = level._ID279[var_6]._ID26282[var_7].size - 1;
    var_9 = 0;

    if ( isdefined( level._ID279[var_6]._ID26282[var_7][var_8]._ID40005["fx_filename"] ) )
    {
        if ( isdefined( level._ID279[var_6]._ID26282[var_7][var_8]._ID40005["fx_filename"][var_4] ) )
            var_9 = level._ID279[var_6]._ID26282[var_7][var_8]._ID40005["fx_filename"][var_4].size;
    }

    if ( isdefined( var_3 ) )
        level._ID279[var_6]._ID26282[var_7][var_8]._ID40005["fx_valid_damagetype"][var_4][var_9] = var_3;

    level._ID279[var_6]._ID26282[var_7][var_8]._ID40005["fx_filename"][var_4][var_9] = _ID44521( var_1 );
    level._ID279[var_6]._ID26282[var_7][var_8]._ID40005["fx_tag"][var_4][var_9] = var_0;
    level._ID279[var_6]._ID26282[var_7][var_8]._ID40005["fx_useTagAngles"][var_4][var_9] = var_2;
    level._ID279[var_6]._ID26282[var_7][var_8]._ID40005["fx_cost"][var_4][var_9] = var_5;
}

_ID10531( var_0, var_1, var_2, var_3 )
{
    if ( !isdefined( var_3 ) )
        var_3 = 0;

    var_4 = level._ID279.size - 1;
    var_5 = level._ID279[var_4]._ID26282.size - 1;
    var_6 = level._ID279[var_4]._ID26282[var_5].size - 1;
    var_7 = 0;

    if ( isdefined( level._ID279[var_4]._ID26282[var_5][var_6]._ID40005["loopfx_filename"] ) )
        var_7 = level._ID279[var_4]._ID26282[var_5][var_6]._ID40005["loopfx_filename"].size;

    level._ID279[var_4]._ID26282[var_5][var_6]._ID40005["loopfx_filename"][var_7] = _ID44521( var_1 );
    level._ID279[var_4]._ID26282[var_5][var_6]._ID40005["loopfx_tag"][var_7] = var_0;
    level._ID279[var_4]._ID26282[var_5][var_6]._ID40005["loopfx_rate"][var_7] = var_2;
    level._ID279[var_4]._ID26282[var_5][var_6]._ID40005["loopfx_cost"][var_7] = var_3;
}

_ID10528( var_0, var_1, var_2, var_3 )
{
    var_4 = level._ID279.size - 1;
    var_5 = level._ID279[var_4]._ID26282.size - 1;
    var_6 = level._ID279[var_4]._ID26282[var_5].size - 1;
    level._ID279[var_4]._ID26282[var_5][var_6]._ID40005["healthdrain_amount"] = var_0;
    level._ID279[var_4]._ID26282[var_5][var_6]._ID40005["healthdrain_interval"] = var_1;
    level._ID279[var_4]._ID26282[var_5][var_6]._ID40005["badplace_radius"] = var_2;
    level._ID279[var_4]._ID26282[var_5][var_6]._ID40005["badplace_team"] = var_3;
}

_ID10541( var_0, var_1, var_2 )
{
    var_3 = level._ID279.size - 1;
    var_4 = level._ID279[var_3]._ID26282.size - 1;
    var_5 = level._ID279[var_3]._ID26282[var_4].size - 1;

    if ( !isdefined( var_2 ) )
        var_2 = 0;

    if ( !isdefined( level._ID279[var_3]._ID26282[var_4][var_5]._ID40005["sound"] ) )
    {
        level._ID279[var_3]._ID26282[var_4][var_5]._ID40005["sound"] = [];
        level._ID279[var_3]._ID26282[var_4][var_5]._ID40005["soundCause"] = [];
    }

    if ( !isdefined( level._ID279[var_3]._ID26282[var_4][var_5]._ID40005["sound"][var_2] ) )
    {
        level._ID279[var_3]._ID26282[var_4][var_5]._ID40005["sound"][var_2] = [];
        level._ID279[var_3]._ID26282[var_4][var_5]._ID40005["soundCause"][var_2] = [];
    }

    var_6 = level._ID279[var_3]._ID26282[var_4][var_5]._ID40005["sound"][var_2].size;
    level._ID279[var_3]._ID26282[var_4][var_5]._ID40005["sound"][var_2][var_6] = var_0;
    level._ID279[var_3]._ID26282[var_4][var_5]._ID40005["soundCause"][var_2][var_6] = var_1;
}

_ID10532( var_0, var_1 )
{
    var_2 = level._ID279.size - 1;
    var_3 = level._ID279[var_2]._ID26282.size - 1;
    var_4 = level._ID279[var_2]._ID26282[var_3].size - 1;

    if ( !isdefined( level._ID279[var_2]._ID26282[var_3][var_4]._ID40005["loopsound"] ) )
    {
        level._ID279[var_2]._ID26282[var_3][var_4]._ID40005["loopsound"] = [];
        level._ID279[var_2]._ID26282[var_3][var_4]._ID40005["loopsoundCause"] = [];
    }

    var_5 = level._ID279[var_2]._ID26282[var_3][var_4]._ID40005["loopsound"].size;
    level._ID279[var_2]._ID26282[var_3][var_4]._ID40005["loopsound"][var_5] = var_0;
    level._ID279[var_2]._ID26282[var_3][var_4]._ID40005["loopsoundCause"][var_5] = var_1;
}

_ID10493( var_0, var_1, var_2, var_3, var_4, var_5, var_6, var_7, var_8 )
{
    if ( !isdefined( var_3 ) )
        var_3 = 0;

    if ( !isdefined( var_4 ) )
        var_4 = 0;

    var_9 = [];
    var_9["anim"] = var_0;
    var_9["animTree"] = var_1;
    var_9["animType"] = var_2;
    var_9["vehicle_exclude_anim"] = var_3;
    var_9["groupNum"] = var_4;
    var_9["mpAnim"] = var_5;
    var_9["maxStartDelay"] = var_6;
    var_9["animRateMin"] = var_7;
    var_9["animRateMax"] = var_8;
    _ID1847( "animation", var_9 );
}

_ID10546( var_0 )
{
    var_1 = [];
    var_1["spotlight_tag"] = var_0;
    var_1["spotlight_fx"] = "spotlight_fx";
    var_1["spotlight_brightness"] = 0.85;
    var_1["randomly_flip"] = 1;
    var_2 = [];
    var_2["r_spotlightendradius"] = 1200;
    var_2["r_spotlightstartradius"] = 50;
    var_1["dvars"] = var_2;
    _ID1905( var_1 );
}

_ID1904( var_0, var_1 )
{
    var_2 = [];
    var_2[var_0] = var_1;
    _ID1905( var_2 );
}

_ID1905( var_0 )
{
    var_1 = level._ID279.size - 1;
    var_2 = level._ID279[var_1]._ID26282.size - 1;
    var_3 = level._ID279[var_1]._ID26282[var_2].size - 1;

    foreach ( var_6, var_5 in var_0 )
        level._ID279[var_1]._ID26282[var_2][var_3]._ID40005[var_6] = var_5;
}

_ID1847( var_0, var_1 )
{
    var_2 = level._ID279.size - 1;
    var_3 = level._ID279[var_2]._ID26282.size - 1;
    var_4 = level._ID279[var_2]._ID26282[var_3].size - 1;
    var_5 = level._ID279[var_2]._ID26282[var_3][var_4]._ID40005;

    if ( !isdefined( var_5[var_0] ) )
        var_5[var_0] = [];

    var_5[var_0][var_5[var_0].size] = var_1;
    level._ID279[var_2]._ID26282[var_3][var_4]._ID40005 = var_5;
}

_ID10503()
{
    var_0 = level._ID279.size - 1;
    var_1 = level._ID279[var_0]._ID26282.size - 1;
    var_2 = level._ID279[var_0]._ID26282[var_1].size - 1;
    level._ID279[var_0]._ID26282[var_1][var_2]._ID40005["triggerCarAlarm"] = 1;
}

_ID10530( var_0 )
{
    if ( !isdefined( var_0 ) )
        var_0 = 256;

    var_1 = level._ID279.size - 1;
    var_2 = level._ID279[var_1]._ID26282.size - 1;
    var_3 = level._ID279[var_1]._ID26282[var_2].size - 1;
    level._ID279[var_1]._ID26282[var_2][var_3]._ID40005["break_nearby_lights"] = var_0;
}

_ID28950( var_0, var_1, var_2, var_3 )
{
    if ( !isdefined( var_2 ) )
        var_2 = "";

    var_4 = level._ID279.size - 1;
    var_5 = level._ID279[var_4]._ID26282.size - 1;
    var_6 = 0;

    if ( !isdefined( level._ID279[var_4]._ID26282[var_5][var_6]._ID40005["random_dynamic_attachment_1"] ) )
    {
        level._ID279[var_4]._ID26282[var_5][var_6]._ID40005["random_dynamic_attachment_1"] = [];
        level._ID279[var_4]._ID26282[var_5][var_6]._ID40005["random_dynamic_attachment_2"] = [];
        level._ID279[var_4]._ID26282[var_5][var_6]._ID40005["random_dynamic_attachment_tag"] = [];
    }

    var_7 = level._ID279[var_4]._ID26282[var_5][var_6]._ID40005["random_dynamic_attachment_1"].size;
    level._ID279[var_4]._ID26282[var_5][var_6]._ID40005["random_dynamic_attachment_1"][var_7] = var_1;
    level._ID279[var_4]._ID26282[var_5][var_6]._ID40005["random_dynamic_attachment_2"][var_7] = var_2;
    level._ID279[var_4]._ID26282[var_5][var_6]._ID40005["random_dynamic_attachment_tag"][var_7] = var_0;
    level._ID279[var_4]._ID26282[var_5][var_6]._ID40005["clipToRemove"][var_7] = var_3;
}

_ID10537( var_0, var_1 )
{
    var_2 = level._ID279.size - 1;
    var_3 = level._ID279[var_2]._ID26282.size - 1;
    var_4 = level._ID279[var_2]._ID26282[var_3].size - 1;

    if ( !isdefined( level._ID279[var_2]._ID26282[var_3][var_4]._ID40005["physics"] ) )
    {
        level._ID279[var_2]._ID26282[var_3][var_4]._ID40005["physics"] = [];
        level._ID279[var_2]._ID26282[var_3][var_4]._ID40005["physics_tagName"] = [];
        level._ID279[var_2]._ID26282[var_3][var_4]._ID40005["physics_velocity"] = [];
    }

    var_5 = level._ID279[var_2]._ID26282[var_3][var_4]._ID40005["physics"].size;
    level._ID279[var_2]._ID26282[var_3][var_4]._ID40005["physics"][var_5] = 1;
    level._ID279[var_2]._ID26282[var_3][var_4]._ID40005["physics_tagName"][var_5] = var_0;
    level._ID279[var_2]._ID26282[var_3][var_4]._ID40005["physics_velocity"][var_5] = var_1;
}

_ID10544( var_0 )
{
    var_1 = level._ID279.size - 1;
    var_2 = level._ID279[var_1]._ID26282.size - 1;
    var_3 = level._ID279[var_1]._ID26282[var_2].size - 1;
    level._ID279[var_1]._ID26282[var_2][var_3]._ID40005["splash_damage_scaler"] = var_0;
}

_ID10512( var_0, var_1, var_2, var_3, var_4, var_5, var_6, var_7, var_8, var_9 )
{
    var_10 = level._ID279.size - 1;
    var_11 = level._ID279[var_10]._ID26282.size - 1;
    var_12 = level._ID279[var_10]._ID26282[var_11].size - 1;

    if ( _ID42237::_ID20913() )
        level._ID279[var_10]._ID26282[var_11][var_12]._ID40005["explode_range"] = var_2;
    else
        level._ID279[var_10]._ID26282[var_11][var_12]._ID40005["explode_range"] = var_3;

    level._ID279[var_10]._ID26282[var_11][var_12]._ID40005["explode"] = 1;
    level._ID279[var_10]._ID26282[var_11][var_12]._ID40005["explode_force_min"] = var_0;
    level._ID279[var_10]._ID26282[var_11][var_12]._ID40005["explode_force_max"] = var_1;
    level._ID279[var_10]._ID26282[var_11][var_12]._ID40005["explode_mindamage"] = var_4;
    level._ID279[var_10]._ID26282[var_11][var_12]._ID40005["explode_maxdamage"] = var_5;
    level._ID279[var_10]._ID26282[var_11][var_12]._ID40005["continueDamage"] = var_6;
    level._ID279[var_10]._ID26282[var_11][var_12]._ID40005["originOffset"] = var_7;
    level._ID279[var_10]._ID26282[var_11][var_12]._ID40005["earthQuakeScale"] = var_8;
    level._ID279[var_10]._ID26282[var_11][var_12]._ID40005["earthQuakeRadius"] = var_9;
}

_ID10529( var_0, var_1, var_2, var_3, var_4, var_5, var_6, var_7, var_8, var_9, var_10, var_11, var_12, var_13 )
{
    if ( isdefined( var_3 ) )
        var_3 = tolower( var_3 );

    var_14 = level._ID279.size - 1;
    level._ID279[var_14]._ID26282[var_0][var_1] = spawnstruct();
    level._ID279[var_14]._ID26282[var_0][var_1]._ID40005["modelName"] = var_3;
    level._ID279[var_14]._ID26282[var_0][var_1]._ID40005["tagName"] = var_2;
    level._ID279[var_14]._ID26282[var_0][var_1]._ID40005["health"] = var_4;
    level._ID279[var_14]._ID26282[var_0][var_1]._ID40005["validAttackers"] = var_5;
    level._ID279[var_14]._ID26282[var_0][var_1]._ID40005["validDamageZone"] = var_6;
    level._ID279[var_14]._ID26282[var_0][var_1]._ID40005["validDamageCause"] = var_7;
    level._ID279[var_14]._ID26282[var_0][var_1]._ID40005["alsoDamageParent"] = var_8;
    level._ID279[var_14]._ID26282[var_0][var_1]._ID40005["physicsOnExplosion"] = var_9;
    level._ID279[var_14]._ID26282[var_0][var_1]._ID40005["grenadeImpactDeath"] = var_10;
    level._ID279[var_14]._ID26282[var_0][var_1]._ID40005["godModeAllowed"] = 0;
    level._ID279[var_14]._ID26282[var_0][var_1]._ID40005["splashRotation"] = var_11;
    level._ID279[var_14]._ID26282[var_0][var_1]._ID40005["receiveDamageFromParent"] = var_12;

    if ( !isdefined( var_13 ) )
        level._ID279[var_14]._ID26282[var_0][var_1]._ID40005["createEntityForAnimation"] = 0;
    else
        level._ID279[var_14]._ID26282[var_0][var_1]._ID40005["createEntityForAnimation"] = var_13;
}

_ID28350()
{
    if ( !isdefined( level._ID279[self._ID51676]._ID26282 ) )
        return;

    for ( var_0 = 0; var_0 < level._ID279[self._ID51676]._ID26282.size; var_0++ )
    {
        for ( var_1 = 0; var_1 < level._ID279[self._ID51676]._ID26282[var_0].size; var_1++ )
        {
            if ( level._ID279[self._ID51676]._ID26282[var_0].size <= var_1 )
                continue;

            if ( isdefined( level._ID279[self._ID51676]._ID26282[var_0][var_1]._ID40005["modelName"] ) )
                precachemodel( level._ID279[self._ID51676]._ID26282[var_0][var_1]._ID40005["modelName"] );

            if ( isdefined( level._ID279[self._ID51676]._ID26282[var_0][var_1]._ID40005["animation"] ) )
            {
                var_2 = level._ID279[self._ID51676]._ID26282[var_0][var_1]._ID40005["animation"];

                foreach ( var_4 in var_2 )
                {
                    if ( isdefined( var_4["mpAnim"] ) )
                        _ID42237::_ID24940( "precacheMpAnim", var_4["mpAnim"] );
                }
            }

            if ( isdefined( level._ID279[self._ID51676]._ID26282[var_0][var_1]._ID40005["random_dynamic_attachment_1"] ) )
            {
                foreach ( var_7 in level._ID279[self._ID51676]._ID26282[var_0][var_1]._ID40005["random_dynamic_attachment_1"] )
                {
                    if ( isdefined( var_7 ) && var_7 != "" )
                    {
                        precachemodel( var_7 );
                        precachemodel( var_7 + "_destroy" );
                    }
                }

                foreach ( var_7 in level._ID279[self._ID51676]._ID26282[var_0][var_1]._ID40005["random_dynamic_attachment_2"] )
                {
                    if ( isdefined( var_7 ) && var_7 != "" )
                    {
                        precachemodel( var_7 );
                        precachemodel( var_7 + "_destroy" );
                    }
                }
            }
        }
    }
}

_ID1878()
{
    if ( !isdefined( level._ID279[self._ID51676]._ID26282 ) )
        return;

    for ( var_0 = 0; var_0 < level._ID279[self._ID51676]._ID26282.size; var_0++ )
    {
        for ( var_1 = 0; var_1 < level._ID279[self._ID51676]._ID26282[var_0].size; var_1++ )
        {
            if ( level._ID279[self._ID51676]._ID26282[var_0].size <= var_1 )
                continue;

            var_2 = level._ID279[self._ID51676]._ID26282[var_0][var_1];

            if ( isdefined( var_2._ID40005["fx_filename"] ) )
            {
                for ( var_3 = 0; var_3 < var_2._ID40005["fx_filename"].size; var_3++ )
                {
                    var_4 = var_2._ID40005["fx_filename"][var_3];

                    if ( isdefined( var_4 ) )
                    {
                        if ( isdefined( var_2._ID40005["fx"] ) && isdefined( var_2._ID40005["fx"][var_3] ) && var_2._ID40005["fx"][var_3].size == var_4.size )
                            continue;

                        foreach ( var_7, var_6 in var_4 )
                            level._ID279[self._ID51676]._ID26282[var_0][var_1]._ID40005["fx"][var_3][var_7] = _ID42237::_ID54222( var_6 );
                    }
                }
            }

            var_8 = level._ID279[self._ID51676]._ID26282[var_0][var_1]._ID40005["loopfx_filename"];

            if ( isdefined( var_8 ) )
            {
                if ( isdefined( var_2._ID40005["loopfx"] ) && var_2._ID40005["loopfx"].size == var_8.size )
                    continue;

                foreach ( var_7, var_10 in var_8 )
                    level._ID279[self._ID51676]._ID26282[var_0][var_1]._ID40005["loopfx"][var_7] = _ID42237::_ID54222( var_10 );
            }
        }
    }
}

_ID6855( var_0 )
{
    foreach ( var_2 in self._ID10557 )
    {
        if ( var_2 == var_0 )
            return 1;
    }

    return 0;
}

_ID10549()
{
    var_0 = 0;
    var_1 = self._ID669;
    var_2 = undefined;
    var_3 = self._ID740;
    var_4 = undefined;
    var_5 = undefined;
    var_6 = undefined;
    _ID10553( var_0, var_1, var_2, var_3, var_4, var_5, var_6 );
    self endon( "stop_taking_damage" );

    for (;;)
    {
        var_0 = undefined;
        var_5 = undefined;
        var_4 = undefined;
        var_3 = undefined;
        var_7 = undefined;
        var_1 = undefined;
        var_2 = undefined;
        var_8 = undefined;
        var_9 = undefined;
        self waittill( "damage",  var_0, var_5, var_4, var_3, var_7, var_1, var_2, var_8, var_9  );

        if ( !isdefined( var_0 ) )
            continue;

        if ( isdefined( var_5 ) && isdefined( var_5._ID1244 ) && var_5._ID1244 == "soft_landing" && !var_5 _ID6855( self ) )
            continue;

        if ( _ID42237::_ID20913() )
            var_0 *= 0.5;
        else
            var_0 *= 1.0;

        if ( var_0 <= 0 )
            continue;

        if ( isdefined( var_5 ) && isplayernumber( var_5 ) )
            self._ID9644 = var_5;

        var_7 = _ID16207( var_7 );

        if ( _ID20609( var_5, var_7 ) )
        {
            if ( _ID42237::_ID20913() )
                var_0 *= 8.0;
            else
                var_0 *= 4.0;
        }

        if ( !isdefined( var_1 ) || var_1 == "" )
            var_1 = self._ID669;

        if ( isdefined( var_2 ) && var_2 == "" )
        {
            if ( isdefined( var_8 ) && var_8 != "" && var_8 != "tag_body" && var_8 != "body_animate_jnt" )
                var_2 = var_8;
            else
                var_2 = undefined;

            var_10 = level._ID279[self._ID51676]._ID26282[0][0]._ID40005["tagName"];

            if ( isdefined( var_10 ) && isdefined( var_8 ) && var_10 == var_8 )
                var_2 = undefined;
        }

        if ( var_7 == "splash" )
        {
            if ( isdefined( level._ID279[self._ID51676]._ID26282[0][0]._ID40005["splash_damage_scaler"] ) )
                var_0 *= level._ID279[self._ID51676]._ID26282[0][0]._ID40005["splash_damage_scaler"];
            else if ( _ID42237::_ID20913() )
                var_0 *= 9.0;
            else
                var_0 *= 13.0;

            _ID10543( int( var_0 ), var_3, var_4, var_5, var_7 );
            continue;
        }

        thread _ID10553( int( var_0 ), var_1, var_2, var_3, var_4, var_5, var_7 );
    }
}

_ID20609( var_0, var_1 )
{
    if ( var_1 != "bullet" )
        return 0;

    if ( !isdefined( var_0 ) )
        return 0;

    var_2 = undefined;

    if ( isplayernumber( var_0 ) )
        var_2 = var_0 getcurrentweapon();

    if ( !isdefined( var_2 ) )
        return 0;

    var_3 = weaponclass( var_2 );

    if ( isdefined( var_3 ) && var_3 == "spread" )
        return 1;

    return 0;
}

_ID16510( var_0, var_1 )
{
    var_2 = spawnstruct();
    var_2._ID40005 = [];
    var_3 = -1;
    var_4 = -1;

    if ( tolower( var_0 ) == tolower( self._ID669 ) && !isdefined( var_1 ) )
    {
        var_0 = self._ID669;
        var_1 = undefined;
        var_3 = 0;
        var_4 = 0;
    }

    for ( var_5 = 0; var_5 < level._ID279[self._ID51676]._ID26282.size; var_5++ )
    {
        var_4 = self._ID10536[var_5]._ID40005["currentState"];

        if ( level._ID279[self._ID51676]._ID26282[var_5].size <= var_4 )
            continue;

        if ( !isdefined( var_1 ) )
            continue;

        if ( isdefined( level._ID279[self._ID51676]._ID26282[var_5][var_4]._ID40005["tagName"] ) )
        {
            var_6 = level._ID279[self._ID51676]._ID26282[var_5][var_4]._ID40005["tagName"];

            if ( var_6 == var_1 )
            {
                var_3 = var_5;
                break;
            }
        }
    }

    var_2._ID40005["stateIndex"] = var_4;
    var_2._ID40005["partIndex"] = var_3;
    return var_2;
}

_ID10553( var_0, var_1, var_2, var_3, var_4, var_5, var_6, var_7 )
{
    if ( !isdefined( self._ID10536 ) )
        return;

    if ( self._ID10536.size == 0 )
        return;

    var_8 = _ID16510( var_1, var_2 );
    var_9 = var_8._ID40005["stateIndex"];
    var_10 = var_8._ID40005["partIndex"];

    if ( var_10 < 0 )
        return;

    var_11 = var_9;
    var_12 = 0;
    var_13 = 0;

    for (;;)
    {
        var_9 = self._ID10536[var_10]._ID40005["currentState"];

        if ( !isdefined( level._ID279[self._ID51676]._ID26282[var_10][var_9] ) )
            break;

        if ( isdefined( level._ID279[self._ID51676]._ID26282[var_10][0]._ID40005["alsoDamageParent"] ) )
        {
            if ( _ID16207( var_6 ) != "splash" )
            {
                var_14 = level._ID279[self._ID51676]._ID26282[var_10][0]._ID40005["alsoDamageParent"];
                var_15 = int( var_0 * var_14 );
                thread _ID25132( var_15, var_5, var_4, var_3, var_6, "", "" );
            }
        }

        if ( _ID16207( var_6 ) != "splash" )
        {
            foreach ( var_17 in level._ID279[self._ID51676]._ID26282 )
            {
                if ( !isdefined( var_17[0]._ID40005["receiveDamageFromParent"] ) )
                    continue;

                if ( !isdefined( var_17[0]._ID40005["tagName"] ) )
                    continue;

                var_14 = var_17[0]._ID40005["receiveDamageFromParent"];
                var_18 = int( var_0 * var_14 );
                var_19 = var_17[0]._ID40005["tagName"];
                thread _ID25132( var_18, var_5, var_4, var_3, var_6, "", var_19 );
            }
        }

        if ( !isdefined( level._ID279[self._ID51676]._ID26282[var_10][var_9]._ID40005["health"] ) )
            break;

        if ( !isdefined( self._ID10536[var_10]._ID40005["health"] ) )
            break;

        if ( var_12 )
            self._ID10536[var_10]._ID40005["health"] = level._ID279[self._ID51676]._ID26282[var_10][var_9]._ID40005["health"];

        var_12 = 0;

        if ( isdefined( level._ID279[self._ID51676]._ID26282[var_10][var_9]._ID40005["grenadeImpactDeath"] ) && var_6 == "impact" )
            var_0 = 100000000;

        var_21 = self._ID10536[var_10]._ID40005["health"];
        var_22 = _ID20676( var_10, var_9, var_5 );

        if ( var_22 )
        {
            var_23 = _ID20972( var_10, var_9, var_6 );

            if ( var_23 )
            {
                if ( isdefined( var_5 ) )
                {
                    if ( isplayernumber( var_5 ) )
                        self._ID27333 = self._ID27333 + var_0;
                    else if ( var_5 != self )
                        self._ID24914 = self._ID24914 + var_0;
                }

                if ( isdefined( var_6 ) )
                {
                    if ( var_6 == "melee" || var_6 == "impact" )
                        var_0 = 100000;
                }

                self._ID10536[var_10]._ID40005["health"] = self._ID10536[var_10]._ID40005["health"] - var_0;
            }
        }

        if ( self._ID10536[var_10]._ID40005["health"] > 0 )
            return;

        if ( isdefined( var_7 ) )
        {
            var_7._ID40005["fxcost"] = _ID15898( var_10, self._ID10536[var_10]._ID40005["currentState"] );
            _ID1879( self, var_7, var_0 );
            self._ID41030 = 1;
            self waittill( "queue_processed",  var_24  );
            self._ID41030 = undefined;

            if ( !var_24 )
            {
                self._ID10536[var_10]._ID40005["health"] = var_21;
                return;
            }
        }

        var_0 = int( abs( self._ID10536[var_10]._ID40005["health"] ) );

        if ( var_0 < 0 )
            return;

        self._ID10536[var_10]._ID40005["currentState"]++;
        var_9 = self._ID10536[var_10]._ID40005["currentState"];
        var_25 = var_9 - 1;
        var_26 = undefined;

        if ( isdefined( level._ID279[self._ID51676]._ID26282[var_10][var_25] ) )
            var_26 = level._ID279[self._ID51676]._ID26282[var_10][var_25]._ID40005;

        var_27 = undefined;

        if ( isdefined( level._ID279[self._ID51676]._ID26282[var_10][var_9] ) )
            var_27 = level._ID279[self._ID51676]._ID26282[var_10][var_9]._ID40005;

        if ( !isdefined( level._ID279[self._ID51676]._ID26282[var_10][var_25] ) )
            return;

        if ( isdefined( level._ID279[self._ID51676]._ID26282[var_10][var_25]._ID40005["explode"] ) )
            self._ID13632 = 1;

        if ( isdefined( self._ID22671 ) && isdefined( self._ID22671[_ID42237::_ID37877( var_10 )] ) )
        {
            for ( var_28 = 0; var_28 < self._ID22671[_ID42237::_ID37877( var_10 )].size; var_28++ )
            {
                self notify( self._ID22671[_ID42237::_ID37877( var_10 )][var_28] );

                if ( _ID42237::_ID20913() && self._ID23876 )
                    self._ID23875 notify( self._ID22671[_ID42237::_ID37877( var_10 )][var_28] );
            }

            self._ID22671[_ID42237::_ID37877( var_10 )] = undefined;
        }

        if ( isdefined( var_26["break_nearby_lights"] ) )
            _ID10523( var_26["break_nearby_lights"] );

        if ( isdefined( level._ID279[self._ID51676]._ID26282[var_10][var_9] ) )
        {
            if ( var_10 == 0 )
            {
                var_29 = var_27["modelName"];

                if ( isdefined( var_29 ) && var_29 != self._ID669 )
                {
                    self setmodel( var_29 );

                    if ( _ID42237::_ID20913() && self._ID23876 )
                        self._ID23875 setmodel( var_29 );

                    _ID10545( var_27 );
                }
            }
            else
            {
                _ID18543( var_2 );

                if ( _ID42237::_ID20913() && self._ID23876 )
                    self._ID23875 _ID18543( var_2 );

                var_2 = var_27["tagName"];

                if ( isdefined( var_2 ) )
                {
                    _ID34049( var_2 );

                    if ( _ID42237::_ID20913() && self._ID23876 )
                        self._ID23875 _ID34049( var_2 );
                }
            }
        }

        var_30 = _ID15694();

        if ( isdefined( self._ID13632 ) && ( level._ID912 != "boneyard" || var_30._ID669 != "vehicle_mack_truck_short_green_destroy_animated" ) )
            _ID7836( var_30 );

        var_31 = _ID10494( var_26, var_30, var_6, var_10 );
        var_31 = _ID10522( var_26, var_30, var_6, var_10, var_31 );
        var_31 = _ID10542( var_26, var_30, var_6, var_31 );

        if ( isdefined( level._ID279[self._ID51676]._ID26282[var_10][var_25]._ID40005["createEntityForAnimation"] ) && level._ID279[self._ID51676]._ID26282[var_10][var_25]._ID40005["createEntityForAnimation"] && !isdefined( self._ID13610 ) )
        {
            var_32 = _ID53052( var_10, var_25, self._ID51676 );

            if ( isdefined( level._ID279[self._ID51676]._ID26282[var_10][var_25]._ID40005["partAnim"] ) )
            {
                var_33 = level._ID279[self._ID51676]._ID26282[var_10][var_25]._ID40005["partAnim"];
                var_34 = level._ID279[self._ID51676]._ID26282[var_10][var_25]._ID40005["partAnimTree"];
                var_32 useanimtree( var_34 );
                var_35 = level._ID279[self._ID51676]._ID26282[var_10][var_25]._ID40005["partAnimType"];

                if ( !isdefined( self._ID3198 ) )
                    self._ID3198 = [];

                self._ID3198[self._ID3198.size] = var_33;

                if ( isdefined( self._ID13632 ) && isdefined( self._ID3198 ) )
                {
                    for ( var_28 = 0; var_28 < self._ID3198.size; var_28++ )
                        var_32 clearanim( self._ID3198[var_28], 0 );
                }

                if ( var_35 == "setanim" )
                    var_32 setanim( var_33, 1.0, 1.0, 1.0 );
                else if ( var_35 == "setanimknob" )
                    var_32 setanimknob( var_33, 1.0, 1.0, 1.0 );
                else
                {

                }
            }
        }

        if ( isdefined( level._ID279[self._ID51676]._ID26282[var_10][var_25]._ID40005["loopfx"] ) )
        {
            var_36 = level._ID279[self._ID51676]._ID26282[var_10][var_25]._ID40005["loopfx_filename"].size;

            if ( var_36 > 0 )
                self notify( "FX_State_Change" + var_10 );

            for ( var_37 = 0; var_37 < var_36; var_37++ )
            {
                var_38 = level._ID279[self._ID51676]._ID26282[var_10][var_25]._ID40005["loopfx"][var_37];
                var_39 = level._ID279[self._ID51676]._ID26282[var_10][var_25]._ID40005["loopfx_tag"][var_37];
                var_40 = level._ID279[self._ID51676]._ID26282[var_10][var_25]._ID40005["loopfx_rate"][var_37];
                thread _ID22656( var_38, var_39, var_40, var_10 );
            }
        }

        if ( isdefined( level._ID279[self._ID51676]._ID26282[var_10][var_25]._ID40005["loopsound"] ) )
        {
            for ( var_28 = 0; var_28 < level._ID279[self._ID51676]._ID26282[var_10][var_25]._ID40005["loopsound"].size; var_28++ )
            {
                var_41 = _ID20985( "loopsoundCause", var_26, var_28, var_6 );

                if ( var_41 )
                {
                    var_42 = level._ID279[self._ID51676]._ID26282[var_10][var_25]._ID40005["loopsound"][var_28];
                    var_43 = level._ID279[self._ID51676]._ID26282[var_10][var_25]._ID40005["tagName"];
                    thread _ID26999( var_42, var_43 );

                    if ( !isdefined( self._ID22671 ) )
                        self._ID22671 = [];

                    if ( !isdefined( self._ID22671[_ID42237::_ID37877( var_10 )] ) )
                        self._ID22671[_ID42237::_ID37877( var_10 )] = [];

                    var_44 = self._ID22671[_ID42237::_ID37877( var_10 )].size;
                    self._ID22671[_ID42237::_ID37877( var_10 )][var_44] = "stop sound" + var_42;
                }
            }
        }

        if ( isdefined( level._ID279[self._ID51676]._ID26282[var_10][var_25]._ID40005["triggerCarAlarm"] ) )
            thread _ID11194();

        if ( isdefined( level._ID279[self._ID51676]._ID26282[var_10][var_25]._ID40005["break_nearby_lights"] ) )
            thread _ID6105();

        if ( isdefined( level._ID279[self._ID51676]._ID26282[var_10][var_25]._ID40005["healthdrain_amount"] ) )
        {
            self notify( "Health_Drain_State_Change" + var_10 );
            var_45 = level._ID279[self._ID51676]._ID26282[var_10][var_25]._ID40005["healthdrain_amount"];
            var_46 = level._ID279[self._ID51676]._ID26282[var_10][var_25]._ID40005["healthdrain_interval"];
            var_47 = level._ID279[self._ID51676]._ID26282[var_10][var_25]._ID40005["modelName"];
            var_48 = level._ID279[self._ID51676]._ID26282[var_10][var_25]._ID40005["tagName"];
            var_49 = level._ID279[self._ID51676]._ID26282[var_10][var_25]._ID40005["badplace_radius"];
            var_50 = level._ID279[self._ID51676]._ID26282[var_10][var_25]._ID40005["badplace_team"];

            if ( var_45 > 0 )
                thread _ID18308( var_45, var_46, var_10, var_47, var_48, var_49, var_50 );
        }

        if ( isdefined( level._ID279[self._ID51676]._ID26282[var_10][var_25]._ID40005["explode"] ) )
        {
            var_13 = 1;
            var_51 = level._ID279[self._ID51676]._ID26282[var_10][var_25]._ID40005["explode_force_min"];
            var_52 = level._ID279[self._ID51676]._ID26282[var_10][var_25]._ID40005["explode_force_max"];
            var_53 = level._ID279[self._ID51676]._ID26282[var_10][var_25]._ID40005["explode_range"];
            var_54 = level._ID279[self._ID51676]._ID26282[var_10][var_25]._ID40005["explode_mindamage"];
            var_55 = level._ID279[self._ID51676]._ID26282[var_10][var_25]._ID40005["explode_maxdamage"];
            var_56 = level._ID279[self._ID51676]._ID26282[var_10][var_25]._ID40005["continueDamage"];
            var_57 = level._ID279[self._ID51676]._ID26282[var_10][var_25]._ID40005["originOffset"];
            var_58 = level._ID279[self._ID51676]._ID26282[var_10][var_25]._ID40005["earthQuakeScale"];
            var_59 = level._ID279[self._ID51676]._ID26282[var_10][var_25]._ID40005["earthQuakeRadius"];

            if ( isdefined( var_5 ) && var_5 != self )
            {
                self._ID85 = var_5;

                if ( self._ID172 == "script_vehicle" )
                    self._ID9615 = var_6;
            }

            thread _ID355( var_10, var_51, var_52, var_53, var_54, var_55, var_56, var_57, var_58, var_59, var_5 );
        }

        var_60 = undefined;

        if ( isdefined( level._ID279[self._ID51676]._ID26282[var_10][var_25]._ID40005["physics"] ) )
        {
            if ( isdefined( level._ID279[self._ID51676]._ID26282[var_10][0]._ID40005["physicsOnExplosion"] ) )
                level._ID279[self._ID51676]._ID26282[var_10][0]._ID40005["physicsOnExplosion"] = undefined;

            for ( var_28 = 0; var_28 < level._ID279[self._ID51676]._ID26282[var_10][var_25]._ID40005["physics"].size; var_28++ )
            {
                var_60 = undefined;
                var_61 = level._ID279[self._ID51676]._ID26282[var_10][var_25]._ID40005["physics_tagName"][var_28];
                var_62 = level._ID279[self._ID51676]._ID26282[var_10][var_25]._ID40005["physics_velocity"][var_28];
                var_63 = undefined;

                if ( isdefined( var_62 ) )
                {
                    var_64 = undefined;

                    if ( isdefined( var_61 ) )
                        var_64 = self gettagangles( var_61 );
                    else if ( isdefined( var_2 ) )
                        var_64 = self gettagangles( var_2 );

                    var_60 = undefined;

                    if ( isdefined( var_61 ) )
                        var_60 = self gettagorigin( var_61 );
                    else if ( isdefined( var_2 ) )
                        var_60 = self gettagorigin( var_2 );

                    var_65 = var_62[0] - 5 + randomfloat( 10 );
                    var_66 = var_62[1] - 5 + randomfloat( 10 );
                    var_67 = var_62[2] - 5 + randomfloat( 10 );
                    var_68 = anglestoforward( var_64 ) * var_65 * randomfloatrange( 80, 110 );
                    var_69 = anglestoright( var_64 ) * var_66 * randomfloatrange( 80, 110 );
                    var_70 = anglestoup( var_64 ) * var_67 * randomfloatrange( 80, 110 );
                    var_63 = var_68 + var_69 + var_70;
                }
                else
                {
                    var_63 = var_3;
                    var_71 = ( 0, 0, 0 );

                    if ( isdefined( var_5 ) )
                    {
                        var_71 = var_5._ID740;
                        var_63 = vectornormalize( var_3 - var_71 );
                        var_63 = _ID42407::_ID49965( var_63, 200 );
                    }
                }

                if ( isdefined( var_61 ) )
                {
                    var_72 = undefined;

                    for ( var_73 = 0; var_73 < level._ID279[self._ID51676]._ID26282.size; var_73++ )
                    {
                        if ( !isdefined( level._ID279[self._ID51676]._ID26282[var_73][0]._ID40005["tagName"] ) )
                            continue;

                        if ( level._ID279[self._ID51676]._ID26282[var_73][0]._ID40005["tagName"] != var_61 )
                            continue;

                        var_72 = var_73;
                        break;
                    }

                    if ( isdefined( var_60 ) )
                        thread _ID26624( var_72, 0, var_60, var_63 );
                    else
                        thread _ID26624( var_72, 0, var_3, var_63 );

                    continue;
                }

                if ( isdefined( var_60 ) )
                    thread _ID26624( var_10, var_25, var_60, var_63 );
                else
                    thread _ID26624( var_10, var_25, var_3, var_63 );

                return;
            }
        }

        var_12 = 1;
    }
}

_ID10545( var_0 )
{
    var_1 = var_0["splashRotation"];
    var_2 = var_0["rotateTo"];

    if ( !isdefined( var_2 ) )
        return;

    if ( !isdefined( var_1 ) )
        return;

    if ( !var_1 )
        return;

    self._ID65 = ( self._ID65[0], var_2[1], self._ID65[2] );
}

_ID9611( var_0 )
{
    var_1 = strtok( var_0, " " );
    var_2 = strtok( "splash melee bullet splash impact unknown", " " );
    var_3 = "";

    foreach ( var_6, var_5 in var_1 )
        var_2 = _ID42237::_ID3321( var_2, var_5 );

    foreach ( var_8 in var_2 )
        var_3 += ( var_8 + " " );

    return var_3;
}

_ID10543( var_0, var_1, var_2, var_3, var_4 )
{
    if ( var_0 <= 0 )
        return;

    if ( isdefined( self._ID13610 ) )
        return;

    if ( !isdefined( level._ID279[self._ID51676]._ID26282 ) )
        return;

    var_5 = _ID16109( var_2 );

    if ( var_5.size <= 0 )
        return;

    var_5 = _ID32597( var_5, var_1 );
    var_6 = _ID16406( var_5 );

    foreach ( var_8 in var_5 )
    {
        var_9 = var_8._ID40005["distance"] * 1.4;
        var_10 = var_0 - ( var_9 - var_6 );

        if ( var_10 <= 0 )
            continue;

        if ( isdefined( self._ID13610 ) )
            continue;

        thread _ID10553( var_10, var_8._ID40005["modelName"], var_8._ID40005["tagName"], var_1, var_2, var_3, var_4, var_8 );
    }
}

_ID16109( var_0 )
{
    var_1 = [];

    if ( !isdefined( level._ID279[self._ID51676]._ID26282 ) )
        return var_1;

    for ( var_2 = 0; var_2 < level._ID279[self._ID51676]._ID26282.size; var_2++ )
    {
        var_3 = var_2;
        var_4 = self._ID10536[var_3]._ID40005["currentState"];

        for ( var_5 = 0; var_5 < level._ID279[self._ID51676]._ID26282[var_3].size; var_5++ )
        {
            var_6 = level._ID279[self._ID51676]._ID26282[var_3][var_5]._ID40005["splashRotation"];

            if ( isdefined( var_6 ) && var_6 )
            {
                var_7 = vectortoangles( var_0 );
                var_8 = var_7[1] - 90;
                level._ID279[self._ID51676]._ID26282[var_3][var_5]._ID40005["rotateTo"] = ( 0, var_8, 0 );
            }
        }

        if ( !isdefined( level._ID279[self._ID51676]._ID26282[var_3][var_4] ) )
            continue;

        var_9 = level._ID279[self._ID51676]._ID26282[var_3][var_4]._ID40005["tagName"];

        if ( !isdefined( var_9 ) )
            var_9 = "";

        if ( var_9 == "" )
            continue;

        var_10 = level._ID279[self._ID51676]._ID26282[var_3][var_4]._ID40005["modelName"];

        if ( !isdefined( var_10 ) )
            var_10 = "";

        var_11 = var_1.size;
        var_1[var_11] = spawnstruct();
        var_1[var_11]._ID40005["modelName"] = var_10;
        var_1[var_11]._ID40005["tagName"] = var_9;
    }

    return var_1;
}

_ID32597( var_0, var_1 )
{
    for ( var_2 = 0; var_2 < var_0.size; var_2++ )
    {
        var_3 = 0;

        if ( _ID42407::_ID18252( self._ID669, var_0[var_2]._ID40005["tagName"] ) )
        {
            var_3 = distance( var_1, self gettagorigin( var_0[var_2]._ID40005["tagName"] ) );
            jump loc_2BE2
        }

        var_0[var_2]._ID40005["distance"] = var_3;
    }

    return var_0;
}

_ID16406( var_0 )
{
    var_1 = undefined;

    foreach ( var_3 in var_0 )
    {
        var_4 = var_3._ID40005["distance"];

        if ( !isdefined( var_1 ) )
            var_1 = var_4;

        if ( var_4 < var_1 )
            var_1 = var_4;
    }

    return var_1;
}

_ID20985( var_0, var_1, var_2, var_3, var_4 )
{
    if ( isdefined( var_4 ) )
        var_5 = var_1[var_0][var_4][var_2];
    else
        var_5 = var_1[var_0][var_2];

    if ( !isdefined( var_5 ) )
        return 1;

    if ( var_5 == var_3 )
        return 1;

    return 0;
}

_ID20676( var_0, var_1, var_2 )
{
    if ( isdefined( self._ID14785 ) )
        return 1;

    if ( isdefined( level._ID279[self._ID51676]._ID26282[var_0][var_1]._ID40005["explode"] ) )
    {
        if ( isdefined( self._ID11565 ) )
            return 0;
    }

    if ( !isdefined( var_2 ) )
        return 1;

    if ( var_2 == self )
        return 1;

    var_3 = level._ID279[self._ID51676]._ID26282[var_0][var_1]._ID40005["validAttackers"];

    if ( !isdefined( var_3 ) )
        return 1;

    if ( var_3 == "no_player" )
    {
        if ( !isplayernumber( var_2 ) )
            return 1;

        if ( !isdefined( var_2._ID9640 ) )
            return 1;

        if ( var_2._ID9640 == 0 )
            return 1;
    }
    else if ( var_3 == "player_only" )
    {
        if ( isplayernumber( var_2 ) )
            return 1;

        if ( isdefined( var_2._ID9640 ) && var_2._ID9640 )
            return 1;
    }
    else if ( var_3 == "no_ai" && isdefined( level._ID20655 ) )
    {
        if ( ![[ level._ID20655 ]]( var_2 ) )
            return 1;
    }
    else if ( var_3 == "ai_only" && isdefined( level._ID20655 ) )
    {
        if ( [[ level._ID20655 ]]( var_2 ) )
            return 1;
    }
    else
    {

    }

    return 0;
}

_ID20972( var_0, var_1, var_2 )
{
    if ( !isdefined( var_2 ) )
        return 1;

    var_3 = level._ID279[self._ID51676]._ID26282[var_0][var_1]._ID40005["godModeAllowed"];

    if ( var_3 && ( isdefined( self._ID16986 ) && self._ID16986 || isdefined( self._ID31080 ) && self._ID31080 && var_2 == "bullet" ) )
        return 0;

    var_4 = level._ID279[self._ID51676]._ID26282[var_0][var_1]._ID40005["validDamageCause"];

    if ( !isdefined( var_4 ) )
        return 1;

    if ( var_4 == "splash" && var_2 != "splash" )
        return 0;

    if ( var_4 == "no_melee" && var_2 == "melee" || var_2 == "impact" )
        return 0;

    return 1;
}

_ID16207( var_0 )
{
    if ( !isdefined( var_0 ) )
        return "unknown";

    var_0 = tolower( var_0 );

    switch ( var_0 )
    {
        case "melee":
        case "mod_melee":
        case "mod_crush":
            return "melee";
        case "mod_pistol_bullet":
        case "mod_rifle_bullet":
        case "bullet":
            return "bullet";
        case "mod_grenade":
        case "mod_grenade_splash":
        case "mod_projectile":
        case "mod_projectile_splash":
        case "mod_explosive":
        case "splash":
            return "splash";
        case "mod_impact":
            return "impact";
        case "unknown":
            return "unknown";
        default:
            return "unknown";
    }
}

_ID9609( var_0, var_1, var_2 )
{
    self notify( "stop_damage_mirror" );
    self endon( "stop_damage_mirror" );
    var_0 endon( "stop_taking_damage" );
    self setcandamage( 1 );

    for (;;)
    {
        self waittill( "damage",  var_3, var_4, var_5, var_6, var_7  );
        var_0 notify( "damage",  var_3, var_4, var_5, var_6, var_7, var_1, var_2  );
        var_3 = undefined;
        var_4 = undefined;
        var_5 = undefined;
        var_6 = undefined;
        var_7 = undefined;
    }
}

_ID1870()
{
    self._ID27333 = 0;
    self._ID24914 = 0;
    self._ID7020 = 1;
}

loopfx_ontag_singleshot( var_0, var_1, var_2 )
{
    var_3 = _ID15694();

    if ( isdefined( var_3 ) && _ID42407::_ID18252( var_3._ID669, var_1 ) )
    {
        playfxontag( var_0, var_3, var_1 );
        _ID42237::_ID41069( self, "FX_State_Change" + var_2, self, "delete_destructible", level, "putout_fires" );

        if ( isdefined( var_3 ) )
        {
            if ( _ID42407::_ID18252( var_3._ID669, var_1 ) )
                stopfxontag( var_0, var_3, var_1 );
            else
            {

            }
        }
    }
    else
    {
        if ( isdefined( var_3 ) )
            return;

        return;
    }
}

_ID22656( var_0, var_1, var_2, var_3 )
{
    if ( var_2 == 0 )
    {
        thread loopfx_ontag_singleshot( var_0, var_1, var_3 );
        return;
    }

    self endon( "FX_State_Change" + var_3 );
    self endon( "delete_destructible" );
    level endon( "putout_fires" );

    while ( isdefined( self ) )
    {
        var_4 = _ID15694();

        if ( _ID42407::_ID18252( var_4._ID669, var_1 ) )
        {
            playfxontag( var_0, var_4, var_1 );
            jump loc_3052
        }

        wait(var_2);
    }
}

_ID18308( var_0, var_1, var_2, var_3, var_4, var_5, var_6 )
{
    self endon( "Health_Drain_State_Change" + var_2 );
    level endon( "putout_fires" );
    self endon( "destroyed" );

    if ( isdefined( var_5 ) && isdefined( level._ID10497 ) )
        var_5 *= level._ID10497;

    if ( isdefined( var_0 ) && isdefined( level._ID10527 ) )
        var_0 *= level._ID10527;

    wait(var_1);
    self._ID18315 = 1;
    var_7 = undefined;

    if ( isdefined( level._ID10901 ) && level._ID10901 )
        var_5 = undefined;

    if ( isdefined( var_5 ) && isdefined( var_6 ) && _ID42237::_ID20913() )
    {
        var_7 = "" + gettime();

        if ( !isdefined( self._ID11000 ) )
        {
            if ( isdefined( self._ID31413 ) )
                var_5 = self._ID31413;

            if ( var_6 == "both" )
                call [[ level._ID4709 ]]( var_7, 0, self._ID740, var_5, 128, "allies", "bad_guys" );
            else
                call [[ level._ID4709 ]]( var_7, 0, self._ID740, var_5, 128, var_6 );

            thread _ID4712( var_7 );
        }
    }

    while ( isdefined( self ) && self._ID10536[var_2]._ID40005["health"] > 0 )
    {
        self notify( "damage",  var_0, self, ( 0, 0, 0 ), ( 0, 0, 0 ), "MOD_UNKNOWN", var_3, var_4  );
        wait(var_1);
    }

    self notify( "remove_badplace" );
}

_ID4712( var_0 )
{
    _ID42237::_ID41068( "destroyed", "remove_badplace" );
    call [[ level._ID4710 ]]( var_0 );
}

_ID26624( var_0, var_1, var_2, var_3 )
{
    var_4 = level._ID279[self._ID51676]._ID26282[var_0][var_1]._ID40005["modelName"];
    var_5 = level._ID279[self._ID51676]._ID26282[var_0][var_1]._ID40005["tagName"];
    _ID18543( var_5 );

    if ( level._ID10558.size >= level._ID10559 )
        _ID26627( level._ID10558[0] );

    var_6 = spawn( "script_model", self gettagorigin( var_5 ) );
    var_6._ID65 = self gettagangles( var_5 );
    var_6 setmodel( var_4 );
    level._ID10558[level._ID10558.size] = var_6;
    var_6 physicslaunchclient( var_2, var_3 );
}

_ID26627( var_0 )
{
    var_1 = [];

    for ( var_2 = 0; var_2 < level._ID10558.size; var_2++ )
    {
        if ( level._ID10558[var_2] == var_0 )
            continue;

        var_1[var_1.size] = level._ID10558[var_2];
    }

    level._ID10558 = var_1;

    if ( isdefined( var_0 ) )
        var_0 delete();
}

_ID53052( var_0, var_1, var_2 )
{
    var_3 = level._ID279[self._ID51676]._ID26282[var_0][var_1]._ID40005["modelName"];
    var_4 = level._ID279[self._ID51676]._ID26282[var_0][var_1]._ID40005["tagName"];
    _ID18543( var_4 );
    var_5 = spawn( "script_model", self gettagorigin( var_4 ) );
    var_5._ID65 = self gettagangles( var_4 );
    var_5 setmodel( var_3 );
    var_5 linkto( self );

    if ( !isdefined( self._ID46982 ) )
        self._ID46982 = [];

    self._ID46982[self._ID46982.size] = var_5;
    return var_5;
}

_ID355( var_0, var_1, var_2, var_3, var_4, var_5, var_6, var_7, var_8, var_9, var_10 )
{
    if ( isdefined( var_3 ) && isdefined( level._ID10513 ) )
        var_3 *= level._ID10513;

    if ( !isdefined( var_7 ) )
        var_7 = 80;

    if ( !isdefined( var_6 ) || isdefined( var_6 ) && !var_6 )
    {
        if ( isdefined( self._ID13610 ) )
            return;

        self._ID13610 = 1;
    }

    self notify( "exploded",  var_10  );
    level notify( "destructible_exploded" );

    if ( self._ID172 == "script_vehicle" )
        self notify( "death",  var_10, self._ID9615  );

    if ( _ID42237::_ID20913() )
        thread _ID11069();

    wait 0.05;
    var_11 = self._ID10536[var_0]._ID40005["currentState"];
    var_12 = undefined;

    if ( isdefined( level._ID279[self._ID51676]._ID26282[var_0][var_11] ) )
        var_12 = level._ID279[self._ID51676]._ID26282[var_0][var_11]._ID40005["tagName"];

    if ( isdefined( var_12 ) )
        var_13 = self gettagorigin( var_12 );
    else
        var_13 = self._ID740;

    self notify( "damage",  var_5, self, ( 0, 0, 0 ), var_13, "MOD_EXPLOSIVE", "", ""  );
    self notify( "stop_car_alarm" );
    waitframe;

    if ( isdefined( self._ID46982 ) )
    {
        foreach ( var_15 in self._ID46982 )
            var_15 delete();
    }

    if ( isdefined( level._ID279[self._ID51676]._ID26282 ) )
    {
        for ( var_17 = level._ID279[self._ID51676]._ID26282.size - 1; var_17 >= 0; var_17-- )
        {
            if ( var_17 == var_0 )
                continue;

            var_18 = self._ID10536[var_17]._ID40005["currentState"];

            if ( var_18 >= level._ID279[self._ID51676]._ID26282[var_17].size )
                var_18 = level._ID279[self._ID51676]._ID26282[var_17].size - 1;

            var_19 = level._ID279[self._ID51676]._ID26282[var_17][var_18]._ID40005["modelName"];
            var_12 = level._ID279[self._ID51676]._ID26282[var_17][var_18]._ID40005["tagName"];

            if ( !isdefined( var_19 ) )
                continue;

            if ( !isdefined( var_12 ) )
                continue;

            if ( isdefined( level._ID279[self._ID51676]._ID26282[var_17][0]._ID40005["physicsOnExplosion"] ) )
            {
                if ( level._ID279[self._ID51676]._ID26282[var_17][0]._ID40005["physicsOnExplosion"] > 0 )
                {
                    var_20 = level._ID279[self._ID51676]._ID26282[var_17][0]._ID40005["physicsOnExplosion"];
                    var_21 = self gettagorigin( var_12 );
                    var_22 = vectornormalize( var_21 - var_13 );
                    var_22 = _ID42407::_ID49965( var_22, randomfloatrange( var_1, var_2 ) * var_20 );
                    thread _ID26624( var_17, var_18, var_21, var_22 );
                    continue;
                }
            }
        }
    }

    var_23 = !isdefined( var_6 ) || isdefined( var_6 ) && !var_6;

    if ( var_23 )
        self notify( "stop_taking_damage" );

    wait 0.05;
    var_24 = var_13 + ( 0, 0, var_7 );
    var_25 = getsubstr( level._ID279[self._ID51676]._ID40005["type"], 0, 7 ) == "vehicle";

    if ( var_25 )
    {
        anim._ID21894 = gettime();
        anim._ID21891 = var_24;
        anim._ID21892 = var_13;
        anim._ID21893 = var_3;
    }

    level thread _ID32278( 1 );

    if ( _ID42237::_ID20913() )
    {
        if ( !isdefined( self._ID50539 ) || self._ID50539 )
        {
            if ( level._ID15361 == 0 && !_ID27703() )
                self radiusdamage( var_24, var_3, var_5, var_4, self, "MOD_RIFLE_BULLET" );
            else
                self radiusdamage( var_24, var_3, var_5, var_4, self );

            if ( isdefined( self._ID9644 ) && var_25 )
            {
                self._ID9644 notify( "destroyed_car" );
                level notify( "player_destroyed_car",  self._ID9644, var_24  );
            }
        }
    }
    else if ( !isdefined( self._ID9644 ) )
        self radiusdamage( var_24, var_3, var_5, var_4, self );
    else
    {
        self radiusdamage( var_24, var_3, var_5, var_4, self._ID9644 );

        if ( var_25 )
        {
            self._ID9644 notify( "destroyed_car" );
            level notify( "player_destroyed_car",  self._ID9644, var_24  );
        }
    }

    if ( isdefined( var_8 ) && isdefined( var_9 ) )
        earthquake( var_8, 2.0, var_24, var_9 );

    level thread _ID32278( 0, 0.05 );
    var_26 = 0.01;
    var_27 = var_3 * var_26;
    var_3 *= 0.99;
    physicsexplosionsphere( var_24, var_3, 0, var_27 );

    if ( var_23 )
    {
        self setcandamage( 0 );
        thread _ID7827();
    }

    self notify( "destroyed" );
}

_ID7827()
{
    wait 0.05;

    if ( !isdefined( self ) )
        return;

    if ( isdefined( self._ID41030 ) )
        self waittill( "queue_processed" );

    if ( !isdefined( self ) )
        return;

    self._ID3198 = undefined;
    self._ID85 = undefined;
    self._ID7020 = undefined;
    self._ID7044 = undefined;
    self._ID9644 = undefined;
    self._ID10536 = undefined;
    self._ID279 = undefined;
    self._ID51676 = undefined;
    self._ID18315 = undefined;
    self._ID24914 = undefined;
    self._ID27333 = undefined;
}

_ID32278( var_0, var_1 )
{
    level notify( "set_disable_friendlyfire_value_delayed" );
    level endon( "set_disable_friendlyfire_value_delayed" );

    if ( isdefined( var_1 ) )
        wait(var_1);

    level._ID15019 = var_0;
}

_ID8531()
{
    var_0 = _ID16036();

    if ( !isdefined( var_0 ) )
        return;

    var_0 call [[ level._ID8529 ]]();
    var_0._ID740 = var_0._ID740 - ( 0, 0, 10000 );
}

_ID11069()
{
    var_0 = _ID16036();

    if ( !isdefined( var_0 ) )
        return;

    var_0._ID740 = var_0._ID740 + ( 0, 0, 10000 );
    var_0 call [[ level._ID11068 ]]();
    var_0._ID740 = var_0._ID740 - ( 0, 0, 10000 );
}

_ID16036()
{
    if ( !isdefined( self._ID1191 ) )
        return undefined;

    var_0 = getentarray( self._ID1191, "targetname" );

    foreach ( var_2 in var_0 )
    {
        if ( isspawner( var_2 ) )
            continue;

        if ( isdefined( var_2._ID31133 ) )
            continue;

        if ( var_2._ID172 == "light" )
            continue;

        if ( !var_2._ID989 & 1 )
            continue;

        return var_2;
    }
}

_ID18543( var_0 )
{
    self hidepart( var_0 );
}

_ID34049( var_0 )
{
    self showpart( var_0 );
}

_ID10916()
{
    self._ID11565 = 1;
}

_ID47021( var_0 )
{
    self._ID50539 = var_0;
}

_ID14744()
{
    self._ID11565 = undefined;
    self._ID14785 = 1;
    self notify( "damage",  100000000, self, self._ID740, self._ID740, "MOD_EXPLOSIVE", "", ""  );
}

_ID15694()
{
    if ( !_ID42237::_ID20913() )
        return self;

    if ( self._ID23876 )
        var_0 = self._ID23875;
    else
        var_0 = self;

    return var_0;
}

_ID26999( var_0, var_1 )
{
    var_2 = _ID15694();
    var_3 = spawn( "script_origin", ( 0, 0, 0 ) );

    if ( isdefined( var_1 ) )
        var_3._ID740 = var_2 gettagorigin( var_1 );
    else
        var_3._ID740 = var_2._ID740;

    var_3 playloopsound( var_0 );
    var_2 thread _ID14762( var_0 );
    var_2 waittill( "stop sound" + var_0 );

    if ( !isdefined( var_3 ) )
        return;

    var_3 stopsounds( var_0 );
    var_3 delete();
}

_ID14762( var_0 )
{
    self endon( "stop sound" + var_0 );
    level waittill( "putout_fires" );
    self notify( "stop sound" + var_0 );
}

_ID25132( var_0, var_1, var_2, var_3, var_4, var_5, var_6 )
{
    if ( isdefined( level._ID25132 ) )
        return;

    level._ID25132 = 1;
    waitframe;

    if ( isdefined( self._ID13610 ) )
    {
        level._ID25132 = undefined;
        return;
    }

    if ( _ID42237::_ID20913() )
        var_0 /= 0.5;
    else
        var_0 /= 1.0;

    self notify( "damage",  var_0, var_1, var_2, var_3, var_4, var_5, var_6  );
    level._ID25132 = undefined;
}

_ID27076( var_0, var_1 )
{
    if ( isdefined( var_1 ) )
    {
        var_2 = spawn( "script_origin", self gettagorigin( var_1 ) );
        var_2 hide();
        var_2 linkto( self, var_1, ( 0, 0, 0 ), ( 0, 0, 0 ) );
    }
    else
    {
        var_2 = spawn( "script_origin", ( 0, 0, 0 ) );
        var_2 hide();
        var_2._ID740 = self._ID740;
        var_2._ID65 = self._ID65;
        var_2 linkto( self );
    }

    var_2 playsound( var_0, "sounddone" );
    var_2 waittill( "sounddone" );
    wait 0.1;
    var_2 delete();
}

_ID11194()
{
    if ( isdefined( self._ID7044 ) )
        return;

    self._ID7044 = 1;

    if ( !_ID33894() )
        return;

    var_0 = [ "car_alarm_01", "car_alarm_02", "car_alarm_03", "car_alarm_04" ];
    var_1 = _ID42237::_ID28945( var_0 );
    self._ID7014 = spawn( "script_model", self._ID740 );
    self._ID7014 hide();
    self._ID7014 playloopsound( var_1 );
    level._ID9486++;
    thread _ID7017();
    self waittill( "stop_car_alarm" );
    level._ID21890 = gettime();
    level._ID9486--;
    self._ID7014 stopsounds( var_1 );
    self._ID7014 delete();
}

_ID7017()
{
    self endon( "stop_car_alarm" );
    wait 25;

    if ( !isdefined( self ) )
        return;

    thread _ID27076( "car_alarm_off" );
    self notify( "stop_car_alarm" );
}

_ID33894()
{
    if ( level._ID9486 >= 2 )
        return 0;

    var_0 = undefined;

    if ( !isdefined( level._ID21890 ) )
    {
        if ( _ID42237::_ID8201() )
            return 1;

        var_0 = gettime() - level._ID8389;
    }
    else
        var_0 = gettime() - level._ID21890;

    if ( level._ID9486 == 0 && var_0 >= 120 )
        return 1;

    if ( randomint( 100 ) <= 33 )
        return 1;

    return 0;
}

_ID11217( var_0, var_1, var_2, var_3 )
{
    var_4 = [];

    if ( _ID42237::_ID20913() )
    {
        self attach( var_1, var_0, 0 );

        if ( isdefined( var_2 ) && var_2 != "" )
            self attach( var_2, var_0, 0 );
    }
    else
    {
        var_4[0] = spawn( "script_model", self gettagorigin( var_0 ) );
        var_4[0]._ID65 = self gettagangles( var_0 );
        var_4[0] setmodel( var_1 );
        var_4[0] linkto( self, var_0 );

        if ( isdefined( var_2 ) && var_2 != "" )
        {
            var_4[1] = spawn( "script_model", self gettagorigin( var_0 ) );
            var_4[1]._ID65 = self gettagangles( var_0 );
            var_4[1] setmodel( var_2 );
            var_4[1] linkto( self, var_0 );
        }
    }

    if ( isdefined( var_3 ) )
    {
        var_5 = self gettagorigin( var_0 );
        var_6 = _ID15626( var_5, var_3 );

        if ( isdefined( var_6 ) )
            var_6 delete();
    }

    self waittill( "exploded" );

    if ( _ID42237::_ID20913() )
    {
        self detach( var_1, var_0 );
        self attach( var_1 + "_destroy", var_0, 0 );

        if ( isdefined( var_2 ) && var_2 != "" )
        {
            self detach( var_2, var_0 );
            self attach( var_2 + "_destroy", var_0, 0 );
        }
    }
    else
    {
        var_4[0] setmodel( var_1 + "_destroy" );

        if ( isdefined( var_2 ) && var_2 != "" )
            var_4[1] setmodel( var_2 + "_destroy" );
    }
}

_ID15626( var_0, var_1 )
{
    var_2 = undefined;
    var_3 = undefined;
    var_4 = getentarray( var_1, "targetname" );

    foreach ( var_6 in var_4 )
    {
        var_7 = distancesquared( var_0, var_6._ID740 );

        if ( !isdefined( var_2 ) || var_7 < var_2 )
        {
            var_2 = var_7;
            var_3 = var_6;
        }
    }

    return var_3;
}

_ID27703()
{
    var_0 = [];

    if ( !isdefined( self._ID1191 ) )
        return 0;

    var_1 = getentarray( self._ID1191, "targetname" );

    foreach ( var_3 in var_1 )
    {
        if ( isdefined( var_3._ID31133 ) && var_3._ID31133 == "post" )
            var_0[var_0.size] = var_3;
    }

    if ( var_0.size == 0 )
        return 0;

    foreach ( var_6 in var_0 )
    {
        var_7 = _ID15919( var_6 );

        if ( isdefined( var_7 ) )
            return 1;
    }

    return 0;
}

_ID15919( var_0 )
{
    foreach ( var_2 in level._ID805 )
    {
        if ( !isalive( var_2 ) )
            continue;

        if ( var_0 istouching( var_2 ) )
            return var_2;
    }

    return undefined;
}

_ID20611()
{
    return getdvar( "specialops" ) == "1";
}

_ID10526()
{
    var_0 = getentarray( self._ID1191, "targetname" );
    var_1 = [];
    var_1["pre"] = ::_ID8243;
    var_1["post"] = ::_ID8242;

    foreach ( var_3 in var_0 )
    {
        if ( !isdefined( var_3._ID31133 ) )
            continue;

        self thread [[ var_1[var_3._ID31133] ]]( var_3 );
    }
}

_ID8243( var_0 )
{
    waitframe;

    if ( _ID42237::_ID20913() )
        var_0 call [[ level._ID11068 ]]();

    self waittill( "exploded" );

    if ( _ID42237::_ID20913() )
    {
        var_0 notsolid();
        var_0 call [[ level._ID8529 ]]();
    }

    var_0 delete();
}

_ID8242( var_0 )
{
    var_0 notsolid();

    if ( _ID42237::_ID20913() )
        var_0 call [[ level._ID8529 ]]();

    self waittill( "exploded" );
    waitframe;

    if ( _ID42237::_ID20913() )
    {
        if ( _ID20611() )
        {
            var_1 = _ID15919( var_0 );

            if ( isdefined( var_1 ) )
                self thread [[ level._ID15082 ]]( var_1 );
        }
        else
        {

        }
    }

    var_0 solid();

    if ( _ID42237::_ID20913() )
        var_0 call [[ level._ID11068 ]]();
}

_ID9912( var_0 )
{

}

_ID50142()
{
    var_0 = getentarray( "trigger_multiple_fire_react", "classname" );

    foreach ( var_2 in var_0 )
    {
        if ( isdefined( var_2._ID1193 ) && self._ID1191 != var_2._ID1193 )
            var_0 = _ID42237::_ID3321( var_0, var_2 );
    }

    foreach ( var_2 in var_0 )
    {
        if ( isdefined( var_2._ID922 ) )
        {
            switch ( var_2._ID922 )
            {
                case "pre":
                    thread _ID48351( var_2 );
                    continue;
                case "post":
                    thread _ID53500( var_2 );
                    continue;
                case "fire_react_gaspump":
                    thread fire_react_gaspump( var_2 );
                    continue;
                default:
                    continue;
            }
        }
    }
}

_ID48351( var_0 )
{
    waitframe;

    if ( !isdefined( var_0 ) )
        return;

    self waittill( "exploded" );
    var_0 _ID42237::_ID38863();
}

_ID53500( var_0 )
{
    waitframe;

    if ( !isdefined( var_0 ) )
        return;

    var_0 _ID42237::_ID38863();
    self waittill( "exploded" );
    var_0 _ID42237::_ID38865();
}

fire_react_gaspump( var_0 )
{
    self endon( "destroyed" );
    waitframe;
    var_0 _ID42237::_ID38863();
    var_1 = 3;
    self waittill( "damage" );

    while ( isdefined( self._ID10536 ) )
    {
        if ( self._ID10536[0]._ID40005["currentState"] >= var_1 )
        {
            var_0 _ID42237::_ID38865();
            break;
        }

        waittillframeend;
    }

    self waittill( "exploded" );
    var_0 _ID42237::_ID38863();
}

_ID10523( var_0 )
{
    var_1 = getentarray( "light_destructible", "targetname" );

    if ( _ID42237::_ID20913() )
    {
        var_2 = getentarray( "light_destructible", "script_noteworthy" );
        var_1 = _ID42237::_ID3296( var_1, var_2 );
    }

    if ( !var_1.size )
        return;

    var_3 = var_0 * var_0;
    var_4 = undefined;

    foreach ( var_6 in var_1 )
    {
        var_7 = distancesquared( self._ID740, var_6._ID740 );

        if ( var_7 < var_3 )
        {
            var_4 = var_6;
            var_3 = var_7;
        }
    }

    if ( !isdefined( var_4 ) )
        return;

    self._ID6111 = var_4;
}

_ID6105( var_0 )
{
    if ( !isdefined( self._ID6111 ) )
        return;

    self._ID6111 setlightintensity( 0 );
}

_ID9914( var_0, var_1, var_2, var_3 )
{
    var_4 = 16;
    var_5 = 360 / var_4;
    var_6 = [];

    for ( var_7 = 0; var_7 < var_4; var_7++ )
    {
        var_8 = var_5 * var_7;
        var_9 = cos( var_8 ) * var_1;
        var_10 = sin( var_8 ) * var_1;
        var_11 = var_0[0] + var_9;
        var_12 = var_0[1] + var_10;
        var_13 = var_0[2];
        var_6[var_6.size] = ( var_11, var_12, var_13 );
    }

    thread _ID9862( var_6, 5.0, ( 1, 0, 0 ), var_0 );
    var_6 = [];

    for ( var_7 = 0; var_7 < var_4; var_7++ )
    {
        var_8 = var_5 * var_7;
        var_9 = cos( var_8 ) * var_1;
        var_10 = sin( var_8 ) * var_1;
        var_11 = var_0[0];
        var_12 = var_0[1] + var_9;
        var_13 = var_0[2] + var_10;
        var_6[var_6.size] = ( var_11, var_12, var_13 );
    }

    thread _ID9862( var_6, 5.0, ( 1, 0, 0 ), var_0 );
    var_6 = [];

    for ( var_7 = 0; var_7 < var_4; var_7++ )
    {
        var_8 = var_5 * var_7;
        var_9 = cos( var_8 ) * var_1;
        var_10 = sin( var_8 ) * var_1;
        var_11 = var_0[0] + var_10;
        var_12 = var_0[1];
        var_13 = var_0[2] + var_9;
        var_6[var_6.size] = ( var_11, var_12, var_13 );
    }

    thread _ID9862( var_6, 5.0, ( 1, 0, 0 ), var_0 );
}

_ID9862( var_0, var_1, var_2, var_3 )
{
    for ( var_4 = 0; var_4 < var_0.size; var_4++ )
    {
        var_5 = var_0[var_4];

        if ( var_4 + 1 >= var_0.size )
            var_6 = var_0[0];
        else
            var_6 = var_0[var_4 + 1];

        thread _ID9902( var_5, var_6, var_1, var_2 );
        thread _ID9902( var_3, var_5, var_1, var_2 );
    }
}

_ID9902( var_0, var_1, var_2, var_3 )
{
    if ( !isdefined( var_3 ) )
        var_3 = ( 1, 1, 1 );

    for ( var_4 = 0; var_4 < var_2 * 20; var_4++ )
        wait 0.05;
}

_ID35470( var_0 )
{
    var_0 endon( "death" );
    level waittill( "new_destructible_spotlight" );
    var_0 delete();
}

_ID35466( var_0, var_1, var_2, var_3, var_4 )
{
    level endon( "new_destructible_spotlight" );
    thread _ID35470( var_4 );
    var_5 = var_0["spotlight_brightness"];
    _ID42237::_ID24940( "setsaveddvar", "r_spotlightbrightness", var_5 );
    wait(randomfloatrange( 2, 5 ));
    var_6 = randomintrange( 5, 11 );

    for ( var_7 = 0; var_7 < var_6; var_7++ )
    {
        _ID42237::_ID24940( "setsaveddvar", "r_spotlightbrightness", var_5 * 0.65 );
        wait 0.05;
        _ID42237::_ID24940( "setsaveddvar", "r_spotlightbrightness", var_5 );
        wait 0.05;
    }

    _ID10522( var_0, var_1, var_2, var_3 );
    level._ID10546 delete();
    var_4 delete();
}

_ID10547( var_0, var_1, var_2, var_3 )
{
    if ( !_ID42237::_ID20913() )
        return;

    if ( !isdefined( self._ID6111 ) )
        return;

    var_1 _ID42237::_ID31862( "startignoringspotLight" );

    foreach ( var_6, var_5 in var_0["dvars"] )
        _ID42237::_ID24940( "setsaveddvar", var_6, var_5 );

    if ( !isdefined( level._ID10546 ) )
    {
        level._ID10546 = _ID42237::_ID35164();
        var_7 = _ID42237::_ID16299( var_0["spotlight_fx"] );
        playfxontag( var_7, level._ID10546, "tag_origin" );
    }

    level notify( "new_destructible_spotlight" );
    level._ID10546 unlink();
    var_8 = _ID42237::_ID35164();
    var_8 linkto( self, var_0["spotlight_tag"], ( 0, 0, 0 ), ( 0, 0, 0 ) );
    level._ID10546._ID740 = self._ID6111._ID740;
    level._ID10546._ID65 = self._ID6111._ID65;
    level._ID10546 thread _ID35466( var_0, var_1, var_2, var_3, var_8 );
    wait 0.05;

    if ( isdefined( var_8 ) )
        level._ID10546 linkto( var_8 );
}

_ID20638( var_0, var_1, var_2, var_3 )
{
    var_4 = undefined;

    if ( isdefined( var_1["fx_valid_damagetype"] ) )
        var_4 = var_1["fx_valid_damagetype"][var_3][var_2];

    if ( !isdefined( var_4 ) )
        return 1;

    return issubstr( var_4, var_0 );
}

_ID10542( var_0, var_1, var_2, var_3 )
{
    if ( isdefined( self._ID13610 ) )
        return undefined;

    if ( !isdefined( var_0["sound"] ) )
        return undefined;

    if ( !isdefined( var_3 ) )
        var_3 = 0;

    for ( var_4 = 0; var_4 < var_0["sound"][var_3].size; var_4++ )
    {
        var_5 = _ID20985( "soundCause", var_0, var_4, var_2, var_3 );

        if ( !var_5 )
            continue;

        var_6 = var_0["sound"][var_3][var_4];
        var_7 = var_0["tagName"];
        var_1 thread _ID27076( var_6, var_7 );
    }

    return var_3;
}

_ID10522( var_0, var_1, var_2, var_3, var_4 )
{
    if ( !isdefined( var_0["fx"] ) )
        return undefined;

    if ( !isdefined( var_4 ) )
        var_4 = randomint( var_0["fx_filename"].size );

    if ( !isdefined( var_0["fx"][var_4] ) )
        var_4 = randomint( var_0["fx_filename"].size );

    var_5 = var_0["fx_filename"][var_4].size;

    for ( var_6 = 0; var_6 < var_5; var_6++ )
    {
        if ( !_ID20638( var_2, var_0, var_6, var_4 ) )
            continue;

        var_7 = var_0["fx"][var_4][var_6];

        if ( isdefined( var_0["fx_tag"][var_4][var_6] ) )
        {
            var_8 = var_0["fx_tag"][var_4][var_6];
            self notify( "FX_State_Change" + var_3 );

            if ( var_0["fx_useTagAngles"][var_4][var_6] )
                playfxontag( var_7, var_1, var_8 );
            else
            {
                var_9 = var_1 gettagorigin( var_8 );
                var_10 = var_9 + ( 0, 0, 100 ) - var_9;
                playfx( var_7, var_9, var_10 );
            }

            continue;
        }

        var_9 = var_1._ID740;
        var_10 = var_9 + ( 0, 0, 100 ) - var_9;
        playfx( var_7, var_9, var_10 );
    }

    return var_4;
}

_ID10494( var_0, var_1, var_2, var_3 )
{
    if ( isdefined( self._ID13610 ) )
        return undefined;

    if ( !isdefined( var_0["animation"] ) )
        return undefined;

    if ( isdefined( var_0["randomly_flip"] ) && !isdefined( self._ID31361 ) )
    {
        if ( _ID42237::_ID8201() )
            self._ID65 = self._ID65 + ( 0, 180, 0 );
    }

    if ( isdefined( var_0["spotlight_tag"] ) )
    {
        thread _ID10547( var_0, var_1, var_2, var_3 );
        wait 0.05;
    }

    var_4 = _ID42237::_ID28945( var_0["animation"] );
    var_5 = var_4["anim"];
    var_6 = var_4["animTree"];
    var_7 = var_4["groupNum"];
    var_8 = var_4["mpAnim"];
    var_9 = var_4["maxStartDelay"];
    var_10 = var_4["animRateMin"];
    var_11 = var_4["animRateMax"];

    if ( !isdefined( var_10 ) )
        var_10 = 1.0;

    if ( !isdefined( var_11 ) )
        var_11 = 1.0;

    if ( var_10 == var_11 )
        var_12 = var_10;
    else
        var_12 = randomfloatrange( var_10, var_11 );

    var_13 = var_4["vehicle_exclude_anim"];

    if ( self._ID172 == "script_vehicle" && var_13 )
        return undefined;

    var_1 _ID42237::_ID31862( "useanimtree", var_6 );
    var_14 = var_4["animType"];

    if ( !isdefined( self._ID3198 ) )
        self._ID3198 = [];

    self._ID3198[self._ID3198.size] = var_5;

    if ( isdefined( self._ID13632 ) )
        _ID7836( var_1 );

    if ( isdefined( var_9 ) && var_9 > 0 )
        wait(randomfloat( var_9 ));

    if ( !_ID42237::_ID20913() )
    {
        if ( isdefined( var_8 ) )
            _ID42237::_ID31862( "scriptModelPlayAnim", var_8 );

        return var_7;
    }

    if ( var_14 == "setanim" )
    {
        var_1 _ID42237::_ID31862( "setanim", var_5, 1.0, 1.0, var_12 );
        return var_7;
    }

    if ( var_14 == "setanimknob" )
    {
        var_1 _ID42237::_ID31862( "setanimknob", var_5, 1.0, 0, var_12 );
        return var_7;
    }

    return undefined;
}

_ID7836( var_0 )
{
    if ( isdefined( self._ID3198 ) )
    {
        foreach ( var_2 in self._ID3198 )
        {
            if ( _ID42237::_ID20913() )
            {
                var_0 _ID42237::_ID31862( "clearanim", var_2, 0 );
                continue;
            }

            var_0 _ID42237::_ID31862( "scriptModelClearAnim" );
        }
    }
}

_ID19674()
{
    level._ID10472 = 0;
    level._ID10473 = 0.5;

    if ( _ID42237::_ID20913() )
        level._ID23088 = 20;
    else
        level._ID23088 = 2;
}

_ID1963()
{
    level._ID10472++;
    wait(level._ID10473);
    level._ID10472--;
}

_ID15670()
{
    return level._ID10472;
}

_ID15832()
{
    return level._ID23088;
}

_ID19675()
{
    level._ID10555 = [];
}

_ID1879( var_0, var_1, var_2 )
{
    var_3 = self getentitynumber();

    if ( !isdefined( level._ID10555[var_3] ) )
    {
        level._ID10555[var_3] = spawnstruct();
        level._ID10555[var_3]._ID13087 = var_3;
        level._ID10555[var_3]._ID10492 = var_0;
        level._ID10555[var_3]._ID37883 = 0;
        level._ID10555[var_3]._ID24691 = 9999999;
        level._ID10555[var_3]._ID15269 = 0;
    }

    level._ID10555[var_3]._ID15269 = level._ID10555[var_3]._ID15269 + var_1._ID40005["fxcost"];
    level._ID10555[var_3]._ID37883 = level._ID10555[var_3]._ID37883 + var_2;

    if ( var_1._ID40005["distance"] < level._ID10555[var_3]._ID24691 )
        level._ID10555[var_3]._ID24691 = var_1._ID40005["distance"];

    thread _ID17741();
}

_ID17741()
{
    level notify( "handle_destructible_frame_queue" );
    level endon( "handle_destructible_frame_queue" );
    wait 0.05;
    var_0 = level._ID10555;
    level._ID10555 = [];
    var_1 = _ID34962( var_0 );

    for ( var_2 = 0; var_2 < var_1.size; var_2++ )
    {
        if ( _ID15670() < _ID15832() )
        {
            if ( var_1[var_2]._ID15269 )
                thread _ID1963();

            var_1[var_2]._ID10492 notify( "queue_processed",  1  );
            continue;
        }

        var_1[var_2]._ID10492 notify( "queue_processed",  0  );
    }
}

_ID34962( var_0 )
{
    var_1 = [];

    foreach ( var_3 in var_0 )
        var_1[var_1.size] = var_3;

    for ( var_5 = 1; var_5 < var_1.size; var_5++ )
    {
        var_6 = var_1[var_5];

        for ( var_7 = var_5 - 1; var_7 >= 0 && _ID15583( var_6, var_1[var_7] ) == var_6; var_7-- )
            var_1[var_7 + 1] = var_1[var_7];

        var_1[var_7 + 1] = var_6;
    }

    return var_1;
}

_ID15583( var_0, var_1 )
{
    if ( var_0._ID37883 > var_1._ID37883 )
        return var_0;
    else
        return var_1;
}

_ID15898( var_0, var_1 )
{
    var_2 = 0;

    if ( !isdefined( level._ID279[self._ID51676]._ID26282[var_0][var_1] ) )
        return var_2;

    var_3 = level._ID279[self._ID51676]._ID26282[var_0][var_1]._ID40005;

    if ( isdefined( var_3["fx"] ) )
    {
        foreach ( var_5 in var_3["fx_cost"] )
        {
            foreach ( var_7 in var_5 )
                var_2 += var_7;
        }
    }

    return var_2;
}

_ID44521( var_0 )
{
    if ( !isdefined( level._ID54442 ) )
        return var_0;

    var_1 = level._ID279.size - 1;
    var_2 = level._ID279[var_1]._ID40005["type"];

    if ( isdefined( level._ID54442[var_2] ) )
    {
        if ( isdefined( level._ID54442[var_2][var_0] ) )
            return level._ID54442[var_2][var_0];
    }

    return var_0;
}

_ID48620( var_0, var_1, var_2 )
{
    if ( !isdefined( level._ID54442 ) )
        level._ID54442 = [];

    if ( !isdefined( level._ID54442[var_0] ) )
        level._ID54442[var_0] = [];

    level._ID54442[var_0][var_1] = var_2;
}
