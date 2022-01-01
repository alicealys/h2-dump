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

    if ( isai( self ) )
    {
        self setengagementmindist( 0.0, 0.0 );
        self setengagementmaxdist( 256.0, 1024.0 );
    }

    switch ( _ID42226::_ID15950( 3 ) )
    {
        case 0:
            self._ID1302 = "m240";
            break;
        case 1:
            self._ID1302 = "m240_reflex";
            break;
        case 2:
            self._ID1302 = "m240_acog";
            break;
    }

    character\character_sp_juggernaut_h2::_ID616();
}

_ID988()
{
    self setspawnerteam( "axis" );
}

_ID814()
{
    character\character_sp_juggernaut_h2::_ID814();
    precacheitem( "m240" );
    precacheitem( "m240_reflex" );
    precacheitem( "m240_acog" );
    precacheitem( "beretta" );
    precacheitem( "beretta" );
    precacheitem( "fraggrenade" );
    _ID42320::_ID616();
}
