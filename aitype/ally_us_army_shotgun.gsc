// H2 PC GSC
// Decompiled by https://github.com/xensik/gsc-tool

main()
{
    self._ID3217 = "";
    self._ID2032 = "";
    self.team = "allies";
    self.type = "human";
    self._ID36736 = "regular";
    self.accuracy = 0.2;
    self.health = 100;
    self.grenadeweapon = "fraggrenade";
    self.grenadeammo = 0;
    self._ID949 = "";
    self._ID34144 = "beretta";

    if ( isai( self ) )
    {
        self setengagementmindist( 256.0, 0.0 );
        self setengagementmaxdist( 768.0, 1024.0 );
    }

    switch ( _ID42226::_ID15950( 3 ) )
    {
        case 0:
            self.weapon = "m1014";
            break;
        case 1:
            self.weapon = "m1014_reflex";
            break;
        case 2:
            self.weapon = "m1014_eotech";
            break;
    }

    switch ( _ID42226::_ID15942( 3 ) )
    {
        case 0:
            _ID50285::main();
            break;
        case 1:
            _ID50900::main();
            break;
        case 2:
            _ID51429::main();
            break;
    }
}

_ID988()
{
    self setspawnerteam( "allies" );
}

_ID814()
{
    _ID50285::_ID814();
    _ID50900::_ID814();
    _ID51429::_ID814();
    precacheitem( "m1014" );
    precacheitem( "m1014_reflex" );
    precacheitem( "m1014_eotech" );
    precacheitem( "beretta" );
    precacheitem( "fraggrenade" );
}
