// H2 PC GSC
// Decompiled by https://github.com/xensik/gsc-tool

_ID616()
{
    self endon( "death" );
    self endon( "stop_animmode" );
    self notify( "killanimscript" );
    self._ID1651 endon( self._ID1364 );

    if ( _func_02F( self._ID1404 ) )
    {
        self thread [[ self._ID1404 ]]();
        self._ID1404 = undefined;
    }

    var_0 = _func_02F( self._ID1403 ) && self._ID1403;

    if ( var_0 )
    {
        self endon( "stop_loop" );
        self._ID1403 = undefined;
    }
    else
        thread _unknown_00D1( self._ID1364 );

    var_1 = self._ID1364;
    self._ID1364 = undefined;
    var_2 = 0;

    if ( var_0 || _func_0D3( level._ID30895[self._ID1366][var_1] ) )
    {
        var_2 = level._ID30895[self._ID1366][var_1].size;
        var_3 = level._ID30895[self._ID1366][var_1][_func_0B7( var_2 )];
    }
    else
        var_3 = level._ID30895[self._ID1366][var_1];

    var_4 = _func_071( self._ID1651._ID740, self._ID1651._ID65, var_3 );
    var_5 = _func_072( self._ID1651._ID740, self._ID1651._ID65, var_3 );
    var_6 = self _meth_8146( var_4 );

    if ( _func_02F( var_6 ) )
    {
        var_4 = var_6;
        jump loc_E8
    }

    if ( !_func_02F( self._ID24952 ) )
        self _meth_81D1( var_4, var_5 );

    self._ID846 = 0;
    var_7 = 0.3;
    var_8 = 0.2;

    if ( _func_02F( self._ID2992 ) )
    {
        var_7 = self._ID2992;
        var_8 = self._ID2992;
    }

    self _meth_819A( self._ID1365 );
    self _meth_814C( self._ID30178, var_7 );
    self _meth_819B( "face angle", var_5[1] );
    var_9 = "custom_animmode";
    self _meth_811C( var_9, var_3, 1, var_8, 1 );
    self._ID1651 thread _ID42259::_ID35866( self, var_9, var_1, self._ID1366, var_3 );
    self._ID1651 thread _ID42259::_ID3201( self, var_9, var_1 );
    var_10 = self._ID1651;
    self._ID1651 = undefined;
    self._ID1365 = undefined;
    self endon( "killanimscript" );
    var_11 = "end";

    if ( !var_0 )
    {
        if ( _func_068( var_3, "finish" ) )
            var_11 = "finish";
        else if ( _func_068( var_3, "stop anim" ) )
            var_11 = "stop anim";
    }

    for (;;)
    {
        self waittillmatch( var_9,  var_11  );

        if ( var_0 )
        {
            var_3 = level._ID30895[self._ID1366][var_1][_func_0B7( var_2 )];
            self _meth_8117( var_9, var_3, 1, 0.2, 1 );

            if ( _func_02F( var_10 ) )
            {
                var_10 thread _ID42259::_ID35866( self, var_9, var_1, self._ID1366, var_3 );
                var_10 thread _ID42259::_ID3201( self, var_9, var_1 );
            }

            continue;
        }

        break;
    }

    if ( var_11 != "end" )
        self _meth_819B( "face motion" );

    self notify( "finished_custom_animmode" + var_1 );
}

_ID25113( var_0 )
{
    self endon( "death" );
    self endon( "finished_custom_animmode" + var_0 );
    self waittill( "killanimscript" );
    self notify( "finished_custom_animmode" + var_0 );
}
