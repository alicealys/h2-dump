// H2 PC GSC
// Decompiled by https://github.com/xensik/gsc-tool

main()
{
    self._ID3217 = "";
    self._ID2032 = "";
    self.team = "axis";
    self.type = "human";
    self._ID36736 = "regular";
    self.accuracy = 0.2;
    self.health = 150;
    self.grenadeweapon = "fraggrenade";
    self.grenadeammo = 0;
    self._ID949 = "ak47_woodland_reflex";
    self._ID34144 = "pp2000";

    if ( isai( self ) )
    {
        self setengagementmindist( 768.0, 512.0 );
        self setengagementmaxdist( 1024.0, 1500.0 );
    }

    self.weapon = "rpg";

    switch ( _ID42226::_ID15942( 3 ) )
    {
        case 0:
            _ID45139::main();
            break;
        case 1:
            _ID49398::main();
            break;
        case 2:
            _ID46819::main();
            break;
    }
}

_ID988()
{
    self setspawnerteam( "axis" );
}

_ID814()
{
    _ID45139::_ID814();
    _ID49398::_ID814();
    _ID46819::_ID814();
    precacheitem( "rpg" );
    precacheitem( "ak47_woodland_reflex" );
    precacheitem( "pp2000" );
    precacheitem( "fraggrenade" );
}
