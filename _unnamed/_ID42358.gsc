// H2 PC GSC
// Decompiled by https://github.com/xensik/gsc-tool

_ID28732( var_0, var_1 )
{
    if ( !isdefined( level._ID28733 ) )
        level._ID28733 = [];

    if ( !isdefined( level._ID28733[var_0] ) )
        level._ID28733[var_0] = [];

    if ( isdefined( level._ID28733[var_0][var_1] ) )
        return 1;

    level._ID28733[var_0][var_1] = 1;
    return 0;
}

add_smoking_prop_assets( var_0 )
{
    if ( isdefined( level._ID30904 ) && isdefined( level._ID30904[var_0] ) )
        return;

    switch ( var_0 )
    {
        case "cigarette":
            level._ID1426["cigarette_glow"] = loadfx( "vfx/smoke/cigarette_smk_vlobby" );
            level._ID1426["cigarette_glow_puff"] = loadfx( "vfx/smoke/cigarette_endglow_vlobby" );
            level._ID1426["cigarette_smoke_puff"] = loadfx( "vfx/smoke/cigarette_exhale_vlobby" );
            level._ID1426["cigarette_exhale"] = loadfx( "vfx/smoke/cigarette_exhale_vlobby" );
            level._ID1426["cigarette_ashes"] = loadfx( "vfx/smoke/cigarette_ash_vlobby" );
            level._ID30904[var_0] = "h2_prop_cigarette";
            break;
        case "cigar":
            level._ID1426["cigar_glow"] = loadfx( "fx/fire/cigar_glow_far" );
            level._ID1426["cigar_glow_puff"] = loadfx( "fx/fire/cigar_glow_puff" );
            level._ID1426["cigar_smoke_puff"] = loadfx( "fx/smoke/cigarsmoke_puff_far" );
            level._ID1426["cigar_exhale"] = loadfx( "fx/smoke/cigarsmoke_exhale_far" );
            level._ID30904[var_0] = "h2_prop_npc_cigar";
            break;
        default:
            break;
    }

    if ( !isdefined( level.default_smoking_prop ) )
        level.default_smoking_prop = var_0;
}

_ID1945( var_0, var_1 )
{
    if ( _ID28732( var_0, "add_smoking_notetracks" ) )
        return;

    _ID42259::_ID2058( var_0, "attach cig", ::_ID3550, undefined, var_1 );
    _ID42259::_ID2058( var_0, "detach cig", ::_ID10617 );
    _ID42259::_ID2058( var_0, "puff", ::_ID34437 );
    _ID42259::_ID2058( var_0, "exhale", ::_ID34435 );
    _ID42259::_ID2058( var_0, "cig ashes", ::cig_ashes );

    if ( !isdefined( var_1 ) )
        var_1 = _ID42237::_ID37527( isdefined( level.default_smoking_prop ), level.default_smoking_prop, "cigar" );

    add_smoking_prop_assets( var_1 );
}

_ID10620( var_0 )
{
    if ( isdefined( var_0._ID8089 ) )
        var_0._ID8089 delete();
}

_ID1942( var_0 )
{
    if ( _ID28732( var_0, "add_cellphone_notetracks" ) )
        return;

    _ID42259::_ID2058( var_0, "attach clip left", ::_ID3552 );
    _ID42259::_ID2058( var_0, "detach clip left", ::_ID10620 );
    level._ID30904["clip"] = "weapon_ak47_clip";
}

_ID3552( var_0 )
{
    var_0 notify( "new_prop_rotation" );
    var_1 = spawn( "script_model", ( 0, 0, 0 ) );
    var_1 linkto( var_0, "tag_inhand", ( 0, 0, 0 ), ( 0, 0, 0 ) );
    var_1 setmodel( _ID42407::_ID16425( "clip" ) );
    var_0._ID8089 = var_1;
    thread _ID28730( var_1, var_0 );
}

_ID1858( var_0 )
{
    if ( _ID28732( var_0, "add_cellphone_notetracks" ) )
        return;

    _ID42259::_ID2058( var_0, "attach phone", ::_ID3565 );
    _ID42259::_ID2058( var_0, "detach phone", ::_ID10624 );
    level._ID30904["cellphone"] = "com_cellphone_off";
}

_ID3565( var_0 )
{
    var_0 notify( "new_phone_rotation" );
    var_1 = spawn( "script_model", ( 0, 0, 0 ) );
    var_1 linkto( var_0, "tag_inhand", ( 0, 0, 0 ), ( 0, 0, 0 ) );
    var_1 setmodel( _ID42407::_ID16425( "cellphone" ) );
    var_0._ID26608 = var_1;
    thread _ID28730( var_1, var_0 );
}

_ID10624( var_0 )
{
    if ( isdefined( var_0._ID26608 ) )
        var_0._ID26608 delete();
}

_ID3550( var_0, var_1 )
{
    var_0 notify( "new_cigar_rotation" );
    var_2 = spawn( "script_model", ( 0, 0, 0 ) );
    var_2 linkto( var_0, "tag_inhand", ( 0, 0, 0 ), ( 0, 0, 0 ) );

    if ( !isdefined( var_1 ) )
        var_1 = _ID42237::_ID37527( isdefined( level.default_smoking_prop ), level.default_smoking_prop, "cigar" );

    var_2.prop_name = var_1;
    var_2 setmodel( _ID42407::_ID16425( var_2.prop_name ) );
    playfxontag( _ID42237::_ID16299( var_2.prop_name + "_glow" ), var_2, "tag_cigarglow" );
    var_0._ID7534 = var_2;
    thread _ID28731( var_2, var_0 );
}

_ID10617( var_0 )
{
    if ( isdefined( var_0._ID7534 ) )
        var_0._ID7534 thread _ID28729();
}

_ID28730( var_0, var_1 )
{
    var_1 notify( "new_prop_rotation" + var_0.model );
    var_1 endon( "new_prop_rotation" + var_0.model );
    var_0 endon( "death" );
    var_1 _ID42407::_ID1886( "new_prop_rotation" + var_0.model );
    var_0 _ID42407::_ID1886( "death" );
    _ID42407::_ID1985( _ID42407::_ID41116, "stop_loop" );
    var_1 _ID42407::_ID1985( _ID42407::_ID41116, "death" );
    _ID42407::_ID11232();
    var_0 delete();
}

_ID28731( var_0, var_1 )
{
    var_1 notify( "new_prop_rotation" + var_0.model );
    var_1 endon( "new_prop_rotation" + var_0.model );
    var_0 endon( "death" );
    var_1 _ID42407::_ID1886( "new_prop_rotation" + var_0.model );
    var_0 _ID42407::_ID1886( "death" );
    _ID42407::_ID1985( _ID42407::_ID41116, "stop_loop" );
    var_1 _ID42407::_ID1985( _ID42407::_ID41116, "death" );
    _ID42407::_ID11232();
    var_0 thread _ID28729();
}

_ID28729()
{
    self endon( "death" );

    if ( !isdefined( self ) )
        return;

    if ( isdefined( self._ID7533 ) && self._ID7533 )
        return;

    self._ID7533 = 1;
    stopfxontag( _ID42237::_ID16299( self.prop_name + "_glow" ), self, "tag_cigarglow" );
    var_0 = 3;
    var_1 = anglestoforward( self.angles );
    self unlink();
    self movegravity( var_1 * 100, var_0 );
    self rotatevelocity( ( 400, 0, 0 ), var_0, 0, var_0 );
    wait(var_0);
    self delete();
}

_ID34437( var_0 )
{
    if ( !isdefined( var_0._ID7534 ) )
        return;

    var_0 endon( "death" );
    var_0._ID7534 endon( "death" );
    playfxontag( _ID42237::_ID16299( var_0._ID7534.prop_name + "_glow_puff" ), var_0._ID7534, "tag_cigarglow" );
    wait 1;
    playfxontag( _ID42237::_ID16299( var_0._ID7534.prop_name + "_smoke_puff" ), var_0, "tag_eye" );
}

_ID34435( var_0 )
{
    if ( !isdefined( var_0._ID7534 ) )
        return;

    playfxontag( _ID42237::_ID16299( var_0._ID7534.prop_name + "_exhale" ), var_0, "tag_eye" );
}

cig_ashes( var_0 )
{
    if ( !isdefined( var_0._ID7534 ) )
        return;

    playfxontag( _ID42237::_ID16299( var_0._ID7534.prop_name + "_ashes" ), var_0._ID7534, "tag_cigarglow" );
}

_ID16782()
{
    var_0 = [];
    var_0[var_0.size] = "J_MainRoot";
    var_0[var_0.size] = "J_Hip_LE";
    var_0[var_0.size] = "J_Shoulder_RI";
    var_0[var_0.size] = "J_Head";
    var_0[var_0.size] = "J_Neck";
    var_0[var_0.size] = "J_Clavicle_RI";
    var_0[var_0.size] = "J_Ball_LE";
    var_0[var_0.size] = "J_Ankle_RI";
    var_0[var_0.size] = "J_Ankle_LE";
    var_0[var_0.size] = "J_SpineUpper";
    var_0[var_0.size] = "J_Knee_RI";
    var_0[var_0.size] = "J_Knee_LE";
    var_0[var_0.size] = "J_HipTwist_RI";
    var_0[var_0.size] = "J_HipTwist_LE";
    var_0[var_0.size] = "J_SpineLower";
    var_0[var_0.size] = "J_Hip_RI";
    var_0[var_0.size] = "J_Elbow_LE";
    var_0[var_0.size] = "J_Wrist_RI";
    self endon( "death" );

    for (;;)
    {
        while ( self.movemode != "run" )
        {
            wait 0.2;
            continue;
        }

        playfxontag( level._ID1426["ghillie_leaves"], self, _ID42237::_ID28945( var_0 ) );
        wait(randomfloatrange( 0.1, 2.5 ));
    }
}

_ID3551( var_0 )
{
    _ID3550( self, var_0 );
}
