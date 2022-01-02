// H2 PC GSC
// Decompiled by https://github.com/xensik/gsc-tool

main()
{
    self._ID3217 = "";
    self._ID2032 = "riotshield.csv";
    self.team = "axis";
    self.type = "human";
    self._ID36736 = "elite";
    self.accuracy = 0.2;
    self.health = 150;
    self.grenadeweapon = "fraggrenade";
    self.grenadeammo = 0;
    self._ID949 = "";
    self._ID34144 = "usp";

    if ( isai( self ) )
    {
        self setengagementmindist( 256.0, 0.0 );
        self setengagementmaxdist( 768.0, 1024.0 );
    }

    switch ( _ID42226::_ID15950( 6 ) )
    {
        case 0:
            self.weapon = "tavor_acog";
            break;
        case 1:
            self.weapon = "tavor_mars";
            break;
        case 2:
            self.weapon = "fn2000";
            break;
        case 3:
            self.weapon = "fn2000_acog";
            break;
        case 4:
            self.weapon = "fn2000_reflex";
            break;
        case 5:
            self.weapon = "fn2000_scope";
            break;
    }

    _ID45698::main();
}

_ID988()
{
    self setspawnerteam( "axis" );
}

_ID814()
{
    _ID45698::_ID814();
    precacheitem( "tavor_acog" );
    precacheitem( "tavor_mars" );
    precacheitem( "fn2000" );
    precacheitem( "fn2000_acog" );
    precacheitem( "fn2000_reflex" );
    precacheitem( "fn2000_scope" );
    precacheitem( "usp" );
    precacheitem( "fraggrenade" );
}
