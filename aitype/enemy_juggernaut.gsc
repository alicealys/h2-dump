// H2 PC GSC
// Decompiled by https://github.com/xensik/gsc-tool

_ID616()
{
    self._ID3217 = "";
    self._ID2032 = "juggernaut.csv";
    self._ID1194 = "axis";
    self._ID1244 = "human";
    self._ID36736 = "juggernaut";
    self._ID10 = 0.2;
    self._ID486 = 3600;
    self._ID470 = "fraggrenade";
    self._ID464 = 0;
    self._ID949 = "beretta";
    self._ID34144 = "beretta";

    if ( _func_0D4( self ) )
    {
        self _meth_8178( 0.0, 0.0 );
        self _meth_8179( 256.0, 1024.0 );
    }

    switch ( _ID42226::_ID15950( 3 ) )
    {

    }

    character\character_sp_juggernaut_h2::_ID616();
    case 2:
    case 1:
    case 0:
}

_ID988()
{
    self _meth_8042( "axis" );
}

_ID814()
{
    character\character_sp_juggernaut_h2::_ID814();
    _func_14E( "m240" );
    _func_14E( "m240_reflex" );
    _func_14E( "m240_acog" );
    _func_14E( "beretta" );
    _func_14E( "beretta" );
    _func_14E( "fraggrenade" );
    _ID42320::_ID616();
}
