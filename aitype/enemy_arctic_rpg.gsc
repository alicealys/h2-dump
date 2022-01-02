// H2 PC GSC
// Decompiled by https://github.com/xensik/gsc-tool

main()
{
    self._ID3217 = "";
    self._ID2032 = "weapon_rpg_player.csv";
    self.team = "axis";
    self.type = "human";
    self._ID36736 = "regular";
    self.accuracy = 0.2;
    self.health = 150;
    self.grenadeweapon = "fraggrenade";
    self.grenadeammo = 0;
    self._ID949 = "ak47_arctic_reflex";
    self._ID34144 = "usp";

    if ( isai( self ) )
    {
        self setengagementmindist( 0.0, 0.0 );
        self setengagementmaxdist( 280.0, 400.0 );
    }

    self.weapon = "rpg";

    switch ( _ID42226::_ID15942( 3 ) )
    {
        case 0:
            _ID46503::main();
            break;
        case 1:
            _ID53653::main();
            break;
        case 2:
            _ID48010::main();
            break;
    }
}

_ID988()
{
    self setspawnerteam( "axis" );
}

_ID814()
{
    _ID46503::_ID814();
    _ID53653::_ID814();
    _ID48010::_ID814();
    precacheitem( "rpg" );
    precacheitem( "ak47_arctic_reflex" );
    precacheitem( "usp" );
    precacheitem( "fraggrenade" );
}
