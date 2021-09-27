// H2 PC GSC
// Decompiled by https://github.com/xensik/gsc-tool

_ID616()
{
    self._ID3217 = "";
    self._ID2032 = "weapon_rpg_player.csv";
    self._ID1194 = "axis";
    self._ID1244 = "human";
    self._ID36736 = "regular";
    self._ID10 = 0.2;
    self._ID486 = 150;
    self._ID470 = "fraggrenade";
    self._ID464 = 0;
    self._ID949 = "ak47_arctic_reflex";
    self._ID34144 = "usp";

    if ( _func_0D4( self ) )
    {
        self _meth_8178( 0.0, 0.0 );
        self _meth_8179( 280.0, 400.0 );
    }

    self._ID1302 = "rpg";

    switch ( _ID42226::_ID15942( 3 ) )
    {

    }

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
    _ID46503::_ID814();
    _ID53653::_ID814();
    _ID48010::_ID814();
    _func_14E( "rpg" );
    _func_14E( "ak47_arctic_reflex" );
    _func_14E( "usp" );
    _func_14E( "fraggrenade" );
}
