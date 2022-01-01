// H2 PC GSC
// Decompiled by https://github.com/xensik/gsc-tool

_ID616()
{
    self._ID3217 = "";
    self._ID2032 = "";
    self._ID1194 = "allies";
    self._ID1244 = "human";
    self._ID36736 = "regular";
    self._ID10 = 0.2;
    self._ID486 = 3600;
    self._ID470 = "fraggrenade";
    self._ID464 = 4;
    self._ID949 = "beretta";
    self._ID34144 = "beretta";

    if ( isai( self ) )
    {
        self setengagementmindist( 256.0, 0.0 );
        self setengagementmaxdist( 768.0, 1024.0 );
    }

    switch ( _ID42226::_ID15950( 4 ) )
    {
        case 0:
            self._ID1302 = "mp5";
            break;
        case 1:
            self._ID1302 = "mp5_reflex";
            break;
        case 2:
            self._ID1302 = "mp5_silencer";
            break;
        case 3:
            self._ID1302 = "mp5_silencer_reflex";
            break;
    }

    character\character_airport_anatoly::_ID616();
}

_ID988()
{
    self setspawnerteam( "allies" );
}

_ID814()
{
    character\character_airport_anatoly::_ID814();
    precacheitem( "mp5" );
    precacheitem( "mp5_reflex" );
    precacheitem( "mp5_silencer" );
    precacheitem( "mp5_silencer_reflex" );
    precacheitem( "beretta" );
    precacheitem( "beretta" );
    precacheitem( "fraggrenade" );
}
