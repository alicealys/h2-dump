// H2 PC GSC
// Decompiled by https://github.com/xensik/gsc-tool

main()
{
    self._ID3217 = "";
    self._ID2032 = "rpg_player.csv";
    self.team = "axis";
    self.type = "human";
    self._ID36736 = "regular";
    self.accuracy = 0.2;
    self.health = 150;
    self.grenadeweapon = "fraggrenade";
    self.grenadeammo = 0;
    self._ID949 = "ak47_reflex";
    self._ID34144 = "beretta";

    if ( isai( self ) )
    {
        self setengagementmindist( 768.0, 512.0 );
        self setengagementmaxdist( 1024.0, 1500.0 );
    }

    self.weapon = "rpg";
    _ID46607::main();
}

_ID988()
{
    self setspawnerteam( "axis" );
}

_ID814()
{
    _ID46607::_ID814();
    precacheitem( "rpg" );
    precacheitem( "ak47_reflex" );
    precacheitem( "beretta" );
    precacheitem( "fraggrenade" );
}
