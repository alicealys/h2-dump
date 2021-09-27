// H2 PC GSC
// Decompiled by https://github.com/xensik/gsc-tool

_ID616()
{
    self._ID3217 = "";
    self._ID2032 = "sniper_glint.csv";
    self._ID1194 = "axis";
    self._ID1244 = "human";
    self._ID36736 = "regular";
    self._ID10 = 0.2;
    self._ID486 = 150;
    self._ID470 = "fraggrenade";
    self._ID464 = 0;
    self._ID949 = "";
    self._ID34144 = "pp2000";

    if ( _func_0D4( self ) )
    {
        self _meth_8178( 1250.0, 1024.0 );
        self _meth_8179( 1600.0, 2400.0 );
    }

    switch ( _ID42226::_ID15950( 2 ) )
    {

    }

    _ID45656::_ID616();
    case 1:
    case 0:
}

_ID988()
{
    self _meth_8042( "axis" );
}

_ID814()
{
    _ID45656::_ID814();
    _func_14E( "dragunov" );
    _func_14E( "dragunov_woodland" );
    _func_14E( "pp2000" );
    _func_14E( "fraggrenade" );
    _ID42368::_ID616();
}
