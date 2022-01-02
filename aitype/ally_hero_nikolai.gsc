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
    self.health = 150;
    self.grenadeweapon = "fraggrenade";
    self.grenadeammo = 0;
    self._ID949 = "";
    self._ID34144 = "beretta";

    if ( isai( self ) )
    {
        self setengagementmindist( 256.0, 0.0 );
        self setengagementmaxdist( 768.0, 1024.0 );
    }

    self.weapon = "masada_acog";
    _ID53330::main();
}

_ID988()
{
    self setspawnerteam( "allies" );
}

_ID814()
{
    _ID53330::_ID814();
    precacheitem( "masada_acog" );
    precacheitem( "beretta" );
    precacheitem( "fraggrenade" );
}
