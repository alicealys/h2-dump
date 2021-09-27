// H2 PC GSC
// Decompiled by https://github.com/xensik/gsc-tool

_ID28732( var_0, var_1 )
{
    if ( !_func_02F( level._ID28733 ) )
        level._ID28733 = [];

    if ( !_func_02F( level._ID28733[var_0] ) )
        level._ID28733[var_0] = [];

    if ( _func_02F( level._ID28733[var_0][var_1] ) )
        return 1;

    level._ID28733[var_0][var_1] = 1;
    return 0;
}

add_smoking_prop_assets( var_0 )
{
    if ( _func_02F( level._ID30904 ) && _func_02F( level._ID30904[var_0] ) )
        return;

    switch ( var_0 )
    {

    }

    if ( !_func_02F( level.default_smoking_prop ) )
    {
        level.default_smoking_prop = var_0;
        return;
        case "cigar":
        case "cigarette":
        default:
    }
}

_ID1945( var_0, var_1 )
{
    if ( _unknown_0105( var_0, "add_smoking_notetracks" ) )
        return;

    _ID42259::_ID2058( var_0, "attach cig", ::_unknown_01E3, undefined, var_1 );
    _ID42259::_ID2058( var_0, "detach cig", ::_unknown_0219 );
    _ID42259::_ID2058( var_0, "puff", ::_unknown_0281 );
    _ID42259::_ID2058( var_0, "exhale", ::_unknown_02A6 );
    _ID42259::_ID2058( var_0, "cig ashes", ::_unknown_02BE );

    if ( !_func_02F( var_1 ) )
        var_1 = _ID42237::_ID37527( _func_02F( level.default_smoking_prop ), level.default_smoking_prop, "cigar" );

    _unknown_016E( var_1 );
}

_ID10620( var_0 )
{
    if ( _func_02F( var_0._ID8089 ) )
        var_0._ID8089 _meth_80B7();
}

_ID1942( var_0 )
{
    if ( _unknown_017D( var_0, "add_cellphone_notetracks" ) )
        return;

    _ID42259::_ID2058( var_0, "attach clip left", ::_unknown_0210 );
    _ID42259::_ID2058( var_0, "detach clip left", ::_unknown_0205 );
    level._ID30904["clip"] = "weapon_ak47_clip";
}

_ID3552( var_0 )
{
    var_0 notify( "new_prop_rotation" );
    var_1 = _func_06A( "script_model", ( 0, 0, 0 ) );
    var_1 _meth_8053( var_0, "tag_inhand", ( 0, 0, 0 ), ( 0, 0, 0 ) );
    var_1 _meth_80B8( _ID42407::_ID16425( "clip" ) );
    var_0._ID8089 = var_1;
    thread _unknown_02F4( var_1, var_0 );
}

_ID1858( var_0 )
{
    if ( _unknown_01FB( var_0, "add_cellphone_notetracks" ) )
        return;

    _ID42259::_ID2058( var_0, "attach phone", ::_unknown_02B8 );
    _ID42259::_ID2058( var_0, "detach phone", ::_unknown_02DE );
    level._ID30904["cellphone"] = "com_cellphone_off";
}

_ID3565( var_0 )
{
    var_0 notify( "new_phone_rotation" );
    var_1 = _func_06A( "script_model", ( 0, 0, 0 ) );
    var_1 _meth_8053( var_0, "tag_inhand", ( 0, 0, 0 ), ( 0, 0, 0 ) );
    var_1 _meth_80B8( _ID42407::_ID16425( "cellphone" ) );
    var_0._ID26608 = var_1;
    thread _unknown_0372( var_1, var_0 );
}

_ID10624( var_0 )
{
    if ( _func_02F( var_0._ID26608 ) )
        var_0._ID26608 _meth_80B7();
}

_ID3550( var_0, var_1 )
{
    var_0 notify( "new_cigar_rotation" );
    var_2 = _func_06A( "script_model", ( 0, 0, 0 ) );
    var_2 _meth_8053( var_0, "tag_inhand", ( 0, 0, 0 ), ( 0, 0, 0 ) );

    if ( !_func_02F( var_1 ) )
        var_1 = _ID42237::_ID37527( _func_02F( level.default_smoking_prop ), level.default_smoking_prop, "cigar" );

    var_2.prop_name = var_1;
    var_2 _meth_80B8( _ID42407::_ID16425( var_2.prop_name ) );
    _func_157( _ID42237::_ID16299( var_2.prop_name + "_glow" ), var_2, "tag_cigarglow" );
    var_0._ID7534 = var_2;
    thread _unknown_041D( var_2, var_0 );
}

_ID10617( var_0 )
{
    if ( _func_02F( var_0._ID7534 ) )
        var_0._ID7534 thread _unknown_044C();
}

_ID28730( var_0, var_1 )
{
    var_1 notify( "new_prop_rotation" + var_0._ID669 );
    var_1 endon( "new_prop_rotation" + var_0._ID669 );
    var_0 endon( "death" );
    var_1 _ID42407::_ID1886( "new_prop_rotation" + var_0._ID669 );
    var_0 _ID42407::_ID1886( "death" );
    _ID42407::_ID1985( _ID42407::_ID41116, "stop_loop" );
    var_1 _ID42407::_ID1985( _ID42407::_ID41116, "death" );
    _ID42407::_ID11232();
    var_0 _meth_80B7();
}

_ID28731( var_0, var_1 )
{
    var_1 notify( "new_prop_rotation" + var_0._ID669 );
    var_1 endon( "new_prop_rotation" + var_0._ID669 );
    var_0 endon( "death" );
    var_1 _ID42407::_ID1886( "new_prop_rotation" + var_0._ID669 );
    var_0 _ID42407::_ID1886( "death" );
    _ID42407::_ID1985( _ID42407::_ID41116, "stop_loop" );
    var_1 _ID42407::_ID1985( _ID42407::_ID41116, "death" );
    _ID42407::_ID11232();
    var_0 thread _unknown_04F5();
}

_ID28729()
{
    self endon( "death" );

    if ( !_func_02F( self ) )
        return;

    if ( _func_02F( self._ID7533 ) && self._ID7533 )
        return;

    self._ID7533 = 1;
    _func_158( _ID42237::_ID16299( self.prop_name + "_glow" ), self, "tag_cigarglow" );
    var_0 = 3;
    var_1 = _func_11F( self._ID65 );
    self _meth_8055();
    self _meth_82BC( var_1 * 100, var_0 );
    self _meth_82C7( ( 400, 0, 0 ), var_0, 0, var_0 );
    wait(var_0);
    self _meth_80B7();
}

_ID34437( var_0 )
{
    if ( !_func_02F( var_0._ID7534 ) )
        return;

    var_0 endon( "death" );
    var_0._ID7534 endon( "death" );
    _func_157( _ID42237::_ID16299( var_0._ID7534.prop_name + "_glow_puff" ), var_0._ID7534, "tag_cigarglow" );
    wait 1;
    _func_157( _ID42237::_ID16299( var_0._ID7534.prop_name + "_smoke_puff" ), var_0, "tag_eye" );
}

_ID34435( var_0 )
{
    if ( !_func_02F( var_0._ID7534 ) )
        return;

    _func_157( _ID42237::_ID16299( var_0._ID7534.prop_name + "_exhale" ), var_0, "tag_eye" );
}

cig_ashes( var_0 )
{
    if ( !_func_02F( var_0._ID7534 ) )
        return;

    _func_157( _ID42237::_ID16299( var_0._ID7534.prop_name + "_ashes" ), var_0._ID7534, "tag_cigarglow" );
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
        while ( self._ID675 != "run" )
        {
            wait 0.2;
            continue;
        }

        _func_157( level._ID1426["ghillie_leaves"], self, _ID42237::_ID28945( var_0 ) );
        wait(_func_0BA( 0.1, 2.5 ));
    }
}

_ID3551( var_0 )
{
    _ID16782( self, var_0 );
}
