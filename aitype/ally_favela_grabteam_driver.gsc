// H2 PC GSC
// Decompiled by https://github.com/xensik/gsc-tool

main()
{
    self._ID3217 = "";
    self._ID2032 = "";
    self.team = "allies";
    self.type = "human";
    self._ID36736 = "militia";
    self.accuracy = 0.2;
    self.health = 150;
    self.grenadeweapon = "fraggrenade";
    self.grenadeammo = 0;
    self._ID949 = "";
    self._ID34144 = "ak47";

    if ( isai( self ) )
    {
        self setengagementmindist( 256.0, 0.0 );
        self setengagementmaxdist( 768.0, 1024.0 );
    }

    self.weapon = "beretta";
    _ID51316::main();
}

_ID988()
{
    self setspawnerteam( "allies" );
}

_ID814()
{
    _ID51316::_ID814();
    precacheitem( "beretta" );
    precacheitem( "ak47" );
    precacheitem( "fraggrenade" );
}
