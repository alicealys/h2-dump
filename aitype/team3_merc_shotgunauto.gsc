// H2 PC GSC
// Decompiled by https://github.com/xensik/gsc-tool

main()
{
    self._ID3217 = "";
    self._ID2032 = "";
    self.team = "team3";
    self.type = "human";
    self._ID36736 = "regular";
    self.accuracy = 0.2;
    self.health = 150;
    self.grenadeweapon = "fraggrenade";
    self.grenadeammo = 0;
    self._ID949 = "";
    self._ID34144 = "pp2000";

    if ( isai( self ) )
    {
        self setengagementmindist( 0.0, 0.0 );
        self setengagementmaxdist( 280.0, 400.0 );
    }

    switch ( _ID42226::_ID15950( 2 ) )
    {
        case 0:
            self.weapon = "striker_woodland";
            break;
        case 1:
            self.weapon = "striker_woodland_reflex";
            break;
    }

    switch ( _ID42226::_ID15942( 2 ) )
    {
        case 0:
            _ID53933::main();
            break;
        case 1:
            _ID51729::main();
            break;
    }
}

_ID988()
{
    self setspawnerteam( "team3" );
}

_ID814()
{
    _ID53933::_ID814();
    _ID51729::_ID814();
    precacheitem( "striker_woodland" );
    precacheitem( "striker_woodland_reflex" );
    precacheitem( "pp2000" );
    precacheitem( "fraggrenade" );
}
