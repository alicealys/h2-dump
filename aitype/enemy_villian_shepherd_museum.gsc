// H2 PC GSC
// Decompiled by https://github.com/xensik/gsc-tool

_ID616()
{
    self._ID3217 = "";
    self._ID2032 = "";
    self._ID1194 = "axis";
    self._ID1244 = "human";
    self._ID36736 = "elite";
    self._ID10 = 0.12;
    self._ID486 = 150;
    self._ID470 = "fraggrenade";
    self._ID464 = 0;
    self._ID949 = "";
    self._ID34144 = "coltanaconda";

    if ( _func_0D4( self ) )
    {
        self _meth_8178( 256.0, 0.0 );
        self _meth_8179( 512.0, 1024.0 );
    }

    self._ID1302 = "coltanaconda_shepherd";
    character\character_vil_shepherd_museum::_ID616();
}

_ID988()
{
    self _meth_8042( "axis" );
}

_ID814()
{
    character\character_vil_shepherd_museum::_ID814();
    _func_14E( "coltanaconda_shepherd" );
    _func_14E( "coltanaconda" );
    _func_14E( "fraggrenade" );
}
