// H2 PC GSC
// Decompiled by https://github.com/xensik/gsc-tool

_ID616()
{
    self._ID3217 = "";
    self._ID2032 = "";
    self._ID1194 = "axis";
    self._ID1244 = "human";
    self._ID36736 = "regular";
    self._ID10 = 0.2;
    self._ID486 = 200;
    self._ID470 = "fraggrenade";
    self._ID464 = 0;
    self._ID949 = "masada";
    self._ID34144 = "glock";

    if ( _func_0D4( self ) )
    {
        self _meth_8178( 128.0, 0.0 );
        self _meth_8179( 512.0, 1024.0 );
    }

    self._ID1302 = "at4";
    _ID48457::_ID616();
}

_ID988()
{
    self _meth_8042( "axis" );
}

_ID814()
{
    _ID48457::_ID814();
    _func_14E( "at4" );
    _func_14E( "masada" );
    _func_14E( "glock" );
    _func_14E( "fraggrenade" );
}
