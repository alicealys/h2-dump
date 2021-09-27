// H2 PC GSC
// Decompiled by https://github.com/xensik/gsc-tool

_ID616()
{
    self._ID3217 = "";
    self._ID2032 = "sniper_glint_and_rambo.csv";
    self._ID1194 = "axis";
    self._ID1244 = "human";
    self._ID36736 = "militia";
    self._ID10 = 0.15;
    self._ID486 = 150;
    self._ID470 = "fraggrenade";
    self._ID464 = 0;
    self._ID949 = "";
    self._ID34144 = "glock";

    if ( _func_0D4( self ) )
    {
        self _meth_8178( 1250.0, 1024.0 );
        self _meth_8179( 1600.0, 2400.0 );
    }

    self._ID1302 = "dragunov";

    switch ( _ID42226::_ID15942( 2 ) )
    {

    }

    case 1:
    case 0:
}

_ID988()
{
    self _meth_8042( "axis" );
}

_ID814()
{
    _ID52867::_ID814();
    _ID45439::_ID814();
    _func_14E( "dragunov" );
    _func_14E( "glock" );
    _func_14E( "fraggrenade" );
    _ID42359::_ID616();
    _ID42368::_ID616();
}
