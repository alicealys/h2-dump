// H2 PC GSC
// Decompiled by https://github.com/xensik/gsc-tool
#using_animtree("dog");

_ID616()
{
    self endon( "killanimscript" );
    self _meth_814C( %root, 0.1 );
    self _meth_814C( %german_shepherd_idle, 0.2 );
    self _meth_814C( %german_shepherd_attackidle_knob, 0.2 );
    thread _unknown_0101( "attackIdle" );

    for (;;)
    {
        if ( _unknown_00F2() )
        {
            self _meth_814C( %german_shepherd_idle, 0.2 );
            _unknown_0091();
        }
        else
        {
            self _meth_819B( "face current" );
            self _meth_814C( %german_shepherd_attackidle_knob, 0.2 );
            self _meth_811C( "dog_idle", %german_shepherd_idle, 1, 0.2, self._ID3195 );
        }

        animscripts\shared::_ID11529( "dog_idle" );

        if ( _func_02F( self._ID28541 ) )
        {
            self._ID1230 = self._ID28541;
            self._ID28541 = undefined;
        }
    }
}

_ID45812( var_0 )
{
    var_1 = self._ID322._ID740 - self._ID740;
    var_2 = _func_0F6( var_1 );

    if ( var_2 < 1 )
        return 1;

    var_3 = _func_11F( self._ID65 );
    return var_3[0] * var_1[0] + var_3[1] * var_1[1] / var_2 > var_0;
}

_ID51719()
{
    self _meth_814C( %german_shepherd_attackidle_knob, 0.1 );

    if ( _unknown_0110( 0.866 ) )
        self _meth_819B( "face angle", self._ID65[1] );
    else
    {
        if ( _func_02F( self._ID322 ) )
        {
            var_0 = _func_11B( self._ID322._ID740 - self._ID740 );
            var_1 = _func_0F0( var_0 - self._ID65[1] );

            if ( _func_0C3( var_1 ) > 10 )
            {
                self _meth_819B( "face enemy" );
                self._ID28541 = self._ID1230;
                self._ID1230 = 0.3;

                if ( var_1 > 0 )
                    var_2 = %german_shepherd_rotate_ccw;
                else
                    var_2 = %german_shepherd_rotate_cw;

                self _meth_811C( "dog_turn", var_2, 1, 0.2, 1.0 );
                animscripts\shared::_ID11529( "dog_turn" );
                self._ID1230 = self._ID28541;
                self._ID28541 = undefined;
                self _meth_814C( %german_shepherd_rotate_cw, 0.2 );
                self _meth_814C( %german_shepherd_rotate_ccw, 0.2 );
            }
        }

        self _meth_819B( "face angle", self._ID65[1] );
    }

    if ( _unknown_0250() )
        self _meth_811C( "dog_idle", %german_shepherd_attackidle_growl, 1, 0.2, 1 );
    else
    {
        var_3 = 33;
        var_4 = 66;

        if ( _func_02F( self._ID23864 ) )
        {
            if ( self._ID23864 == "growl" )
            {
                var_3 = 15;
                var_4 = 30;
            }
            else if ( self._ID23864 == "bark" )
            {
                var_3 = 15;
                var_4 = 85;
            }
        }

        var_5 = _func_0B7( 100 );

        if ( var_5 < var_3 )
            self _meth_811C( "dog_idle", %german_shepherd_attackidle_b, 1, 0.2, self._ID3195 );
        else
        {
            if ( var_5 < var_4 )
            {
                self _meth_811C( "dog_idle", %german_shepherd_attackidle_bark, 1, 0.2, self._ID3195 );
                return;
            }

            self _meth_811C( "dog_idle", %german_shepherd_attackidle_growl, 1, 0.2, self._ID3195 );
        }
    }
}

_ID33926()
{
    return _func_02F( self._ID322 ) && _func_1A7( self._ID322 ) && _func_0F5( self._ID740, self._ID322._ID740 ) < 1000000;
}

_ID33903()
{
    if ( _func_02F( self._ID31246 ) )
        return 1;

    if ( !_func_1A7( self._ID322 ) )
        return 1;

    return !self _meth_81CA( self._ID322 );
}

_ID22623( var_0 )
{
    self endon( "killanimscript" );
    self endon( "stop tracking" );
    self _meth_814C( %german_shepherd_look_2, 0 );
    self _meth_814C( %german_shepherd_look_4, 0 );
    self _meth_814C( %german_shepherd_look_6, 0 );
    self _meth_814C( %german_shepherd_look_8, 0 );
    self _meth_817F();
    self._ID894 = 90;
    self._ID590 = -90;
    self _meth_8156( anim._ID11477[var_0][2], 1, 0 );
    self _meth_8156( anim._ID11477[var_0][4], 1, 0 );
    self _meth_8156( anim._ID11477[var_0][6], 1, 0 );
    self _meth_8156( anim._ID11477[var_0][8], 1, 0 );
    animscripts\track::_ID32548( 1, 0.2 );
    animscripts\track::_ID38149( %german_shepherd_look_2, %german_shepherd_look_4, %german_shepherd_look_6, %german_shepherd_look_8 );
}
