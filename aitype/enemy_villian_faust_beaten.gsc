// H2 PC GSC
// Decompiled by https://github.com/xensik/gsc-tool

_ID616()
{
    self._ID3217 = "";
    self._ID2032 = "common_rambo_anims.csv";
    self._ID1194 = "axis";
    self._ID1244 = "human";
    self._ID36736 = "militia";
    self._ID10 = 0.12;
    self._ID486 = 150;
    self._ID470 = "fraggrenade";
    self._ID464 = 0;
    self._ID949 = "";
    self._ID34144 = "deserteagle";

    if ( isai( self ) )
    {
        self setengagementmindist( 256.0, 0.0 );
        self setengagementmaxdist( 512.0, 1024.0 );
    }

    self._ID1302 = "ak47";
    _ID52005::_ID616();
}

_ID988()
{
    self setspawnerteam( "axis" );
}

_ID814()
{
    _ID52005::_ID814();
    precacheitem( "ak47" );
    precacheitem( "deserteagle" );
    precacheitem( "fraggrenade" );
    _ID42359::_ID616();
}
