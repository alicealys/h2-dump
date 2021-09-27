// H2 PC GSC
// Decompiled by https://github.com/xensik/gsc-tool

_ID616( var_0, var_1, var_2 )
{
    _ID42548::_ID616( var_0, "mi17", var_2 );
    _ID42411::_ID6236( ::_unknown_0024 );
    _ID42411::_ID6257();
    _ID42411::_ID6204( ::_unknown_0082, ::_unknown_0073 );
    _ID42411::_ID6206( ::_unknown_0258 );
    _ID42411::_ID6262( ::_unknown_020C );
    _ID42411::_ID6232();
}

_ID19731()
{
    self._ID26026 = _func_0F3( self _meth_818C( "tag_origin" ), self _meth_818C( "tag_ground" ) );
    self._ID13954 = 710;
    self._ID31066 = 0;
    _ID42411::_ID40197( "running" );
    thread _unknown_0085();
    thread _unknown_0082();
}

_ID47472()
{
    while ( _func_02F( self ) )
    {
        _func_253( self._ID740, 300 );
        wait 0.05;
    }
}

_ID17700()
{
    self endon( "death" );
    var_0 = 0;
    var_1 = 12000;
    _ID42547::_ID34557();
    thread _unknown_00DC();

    if ( _func_02F( level._ID52523 ) )
        var_1 = level._ID52523;

    for (;;)
    {
        if ( !_func_02F( self._ID31138 ) || !self._ID31138 )
        {
            var_2 = _func_0F3( self._ID740, level._ID794._ID740 );

            if ( var_0 && var_2 > var_1 )
            {
                _ID42547::_ID34682( 1.0 );
                var_0 = 0;
                wait 0.1;
            }
            else if ( !var_0 && var_2 < var_1 )
            {
                _ID42547::_ID34672();
                var_0 = 1;
            }
        }
        else if ( var_0 )
        {
            _ID42547::_ID34682( 1.0 );
            var_0 = 0;
        }

        wait 0.1;
    }
}

_ID23939()
{
    self waittill( "death" );
    _ID42547::_ID34682( 1.0 );
}
#using_animtree("vehicles");

_ID32509( var_0 )
{
    for ( var_1 = 0; var_1 < var_0.size; var_1++ )
        var_0[var_1]._ID40152 = %mi17_heli_idle;

    return var_0;
}

_ID32742( var_0 )
{
    return var_0;
}
#using_animtree("generic_human");

_ID32550()
{
    var_0 = [];

    for ( var_1 = 0; var_1 < 10; var_1++ )
        var_0[var_1] = _func_1A5();

    var_0[1]._ID19302 = %mi17_1_idle;
    var_0[2]._ID19302 = %mi17_2_idle;
    var_0[3]._ID19302 = %mi17_3_idle;
    var_0[4]._ID19302 = %mi17_4_idle;
    var_0[5]._ID19302 = %mi17_5_idle;
    var_0[6]._ID19302 = %mi17_6_idle;
    var_0[7]._ID19302 = %mi17_7_idle;
    var_0[8]._ID19302 = %mi17_8_idle;
    var_0[0]._ID19302[0] = %helicopter_pilot1_idle;
    var_0[0]._ID19302[1] = %helicopter_pilot1_twitch_clickpannel;
    var_0[0]._ID19302[2] = %helicopter_pilot1_twitch_lookback;
    var_0[0]._ID19302[3] = %helicopter_pilot1_twitch_lookoutside;
    var_0[0]._ID19329[0] = 500;
    var_0[0]._ID19329[1] = 100;
    var_0[0]._ID19329[2] = 100;
    var_0[0]._ID19329[3] = 100;
    var_0[0]._ID5174 = 0;
    var_0[9]._ID5174 = 0;
    var_0[9]._ID19302[0] = %helicopter_pilot2_idle;
    var_0[9]._ID19302[1] = %helicopter_pilot2_twitch_clickpannel;
    var_0[9]._ID19302[2] = %helicopter_pilot2_twitch_lookoutside;
    var_0[9]._ID19302[3] = %helicopter_pilot2_twitch_radio;
    var_0[9]._ID19329[0] = 450;
    var_0[9]._ID19329[1] = 100;
    var_0[9]._ID19329[2] = 100;
    var_0[9]._ID19329[3] = 100;
    var_0[0]._ID34225 = "tag_driver";
    var_0[1]._ID34225 = "tag_detach";
    var_0[2]._ID34225 = "tag_detach";
    var_0[3]._ID34225 = "tag_detach";
    var_0[4]._ID34225 = "tag_detach";
    var_0[5]._ID34225 = "tag_detach";
    var_0[6]._ID34225 = "tag_detach";
    var_0[7]._ID34225 = "tag_detach";
    var_0[8]._ID34225 = "tag_detach";
    var_0[9]._ID34225 = "tag_passenger";
    var_0[1]._ID16491 = %mi17_1_drop;
    var_0[2]._ID16491 = %mi17_2_drop;
    var_0[3]._ID16491 = %mi17_3_drop;
    var_0[4]._ID16491 = %mi17_4_drop;
    var_0[5]._ID16491 = %mi17_5_drop;
    var_0[6]._ID16491 = %mi17_6_drop;
    var_0[7]._ID16491 = %mi17_7_drop;
    var_0[8]._ID16491 = %mi17_8_drop;
    var_0[1]._ID16505 = "crouch";
    var_0[2]._ID16505 = "crouch";
    var_0[3]._ID16505 = "crouch";
    var_0[4]._ID16505 = "crouch";
    var_0[5]._ID16505 = "crouch";
    var_0[6]._ID16505 = "crouch";
    var_0[7]._ID16505 = "crouch";
    var_0[8]._ID16505 = "crouch";
    var_0[1]._ID28894 = 1;
    var_0[2]._ID28894 = 1;
    var_0[3]._ID28894 = 1;
    var_0[4]._ID28894 = 1;
    var_0[5]._ID28894 = 1;
    var_0[6]._ID28894 = 1;
    var_0[7]._ID28894 = 1;
    var_0[8]._ID28894 = 1;
    var_0[1]._ID28893 = %fastrope_fall;
    var_0[2]._ID28893 = %fastrope_fall;
    var_0[3]._ID28893 = %fastrope_fall;
    var_0[4]._ID28893 = %fastrope_fall;
    var_0[5]._ID28893 = %fastrope_fall;
    var_0[6]._ID28893 = %fastrope_fall;
    var_0[7]._ID28893 = %fastrope_fall;
    var_0[8]._ID28893 = %fastrope_fall;
    var_0[1]._ID28994 = 1;
    var_0[2]._ID28994 = 1;
    var_0[3]._ID28994 = 1;
    var_0[4]._ID28994 = 1;
    var_0[5]._ID28994 = 1;
    var_0[6]._ID28994 = 1;
    var_0[7]._ID28994 = 1;
    var_0[8]._ID28994 = 1;
    var_0[1]._ID16504 = "fastrope_getout_npc";
    var_0[2]._ID16504 = "fastrope_getout_npc";
    var_0[3]._ID16504 = "fastrope_getout_npc";
    var_0[4]._ID16504 = "fastrope_getout_npc";
    var_0[5]._ID16504 = "fastrope_getout_npc";
    var_0[6]._ID16504 = "fastrope_getout_npc";
    var_0[7]._ID16504 = "fastrope_getout_npc";
    var_0[8]._ID16504 = "fastrope_getout_npc";
    var_0[1]._ID16498 = "fastrope_loop_npc";
    var_0[2]._ID16498 = "fastrope_loop_npc";
    var_0[3]._ID16498 = "fastrope_loop_npc";
    var_0[4]._ID16498 = "fastrope_loop_npc";
    var_0[5]._ID16498 = "fastrope_loop_npc";
    var_0[6]._ID16498 = "fastrope_loop_npc";
    var_0[7]._ID16498 = "fastrope_loop_npc";
    var_0[8]._ID16498 = "fastrope_loop_npc";
    var_0[1]._ID13955 = "TAG_FastRope_RI";
    var_0[2]._ID13955 = "TAG_FastRope_RI";
    var_0[3]._ID13955 = "TAG_FastRope_RI";
    var_0[4]._ID13955 = "TAG_FastRope_RI";
    var_0[5]._ID13955 = "TAG_FastRope_LE";
    var_0[6]._ID13955 = "TAG_FastRope_LE";
    var_0[7]._ID13955 = "TAG_FastRope_LE";
    var_0[8]._ID13955 = "TAG_FastRope_LE";
    return _unknown_05F8( var_0 );
}

_ID39488()
{
    var_0 = [];
    var_0["back"] = [];
    var_0["front"] = [];
    var_0["both"] = [];
    var_0["back"][var_0["back"].size] = 1;
    var_0["back"][var_0["back"].size] = 2;
    var_0["back"][var_0["back"].size] = 3;
    var_0["back"][var_0["back"].size] = 4;
    var_0["front"][var_0["front"].size] = 5;
    var_0["front"][var_0["front"].size] = 6;
    var_0["front"][var_0["front"].size] = 7;
    var_0["front"][var_0["front"].size] = 8;
    var_0["both"][var_0["both"].size] = 1;
    var_0["both"][var_0["both"].size] = 2;
    var_0["both"][var_0["both"].size] = 3;
    var_0["both"][var_0["both"].size] = 4;
    var_0["both"][var_0["both"].size] = 5;
    var_0["both"][var_0["both"].size] = 6;
    var_0["both"][var_0["both"].size] = 7;
    var_0["both"][var_0["both"].size] = 8;
    var_0["default"] = var_0["both"];
    return var_0;
}

_ID32221()
{
    var_0 = [];
    var_0["TAG_FastRope_LE"] = _func_1A5();
    var_0["TAG_FastRope_LE"]._ID669 = "rope_test";
    var_0["TAG_FastRope_LE"]._ID1067 = "TAG_FastRope_LE";
    var_0["TAG_FastRope_LE"]._ID19324 = %mi17_rope_idle_le;
    var_0["TAG_FastRope_LE"]._ID12144 = %mi17_rope_drop_le;
    var_0["TAG_FastRope_RI"] = _func_1A5();
    var_0["TAG_FastRope_RI"]._ID669 = "rope_test_ri";
    var_0["TAG_FastRope_RI"]._ID1067 = "TAG_FastRope_RI";
    var_0["TAG_FastRope_RI"]._ID19324 = %mi17_rope_idle_ri;
    var_0["TAG_FastRope_RI"]._ID12144 = %mi17_rope_drop_ri;
    var_1 = _func_1D9( var_0 );

    for ( var_2 = 0; var_2 < var_1.size; var_2++ )
        _func_14C( var_0[var_1[var_2]]._ID669 );

    return var_0;
}
