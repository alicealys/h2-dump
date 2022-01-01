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
    self._ID486 = 150;
    self._ID470 = "fraggrenade";
    self._ID464 = 0;
    self._ID949 = "";
    self._ID34144 = "glock";

    if ( isai( self ) )
    {
        self setengagementmindist( 256.0, 0.0 );
        self setengagementmaxdist( 768.0, 1024.0 );
    }

    switch ( _ID42226::_ID15950( 8 ) )
    {
        case 0:
            self._ID1302 = "ak47_desert";
            break;
        case 1:
            self._ID1302 = "ak47_reflex";
            break;
        case 2:
            self._ID1302 = "ak47_desert_grenadier";
            break;
        case 3:
            self._ID1302 = "ak47_acog";
            break;
        case 4:
            self._ID1302 = "fal";
            break;
        case 5:
            self._ID1302 = "fal_acog";
            break;
        case 6:
            self._ID1302 = "ak47_desert";
            break;
        case 7:
            self._ID1302 = "fal_shotgun";
            break;
    }

    _ID48914::_ID616();
}

_ID988()
{
    self setspawnerteam( "axis" );
}

_ID814()
{
    _ID48914::_ID814();
    precacheitem( "ak47_desert" );
    precacheitem( "ak47_reflex" );
    precacheitem( "ak47_desert_grenadier" );
    precacheitem( "gl_ak47_desert" );
    precacheitem( "ak47_acog" );
    precacheitem( "fal" );
    precacheitem( "fal_acog" );
    precacheitem( "ak47_desert" );
    precacheitem( "fal_shotgun" );
    precacheitem( "fal_shotgun_attach" );
    precacheitem( "glock" );
    precacheitem( "fraggrenade" );
}
