// H2 PC GSC
// Decompiled by https://github.com/xensik/gsc-tool

main()
{
    self._ID3217 = "";
    self._ID2032 = "sniper_glint.csv";
    self.team = "axis";
    self.type = "human";
    self._ID36736 = "regular";
    self.accuracy = 0.2;
    self.health = 150;
    self.grenadeweapon = "fraggrenade";
    self.grenadeammo = 0;
    self._ID949 = "pp2000_silencer";
    self._ID34144 = "usp_silencer";

    if ( isai( self ) )
    {
        self setengagementmindist( 256.0, 0.0 );
        self setengagementmaxdist( 768.0, 1024.0 );
    }

    self.weapon = "wa2000";
    _ID45656::main();
}

_ID988()
{
    self setspawnerteam( "axis" );
}

_ID814()
{
    _ID45656::_ID814();
    precacheitem( "wa2000" );
    precacheitem( "pp2000_silencer" );
    precacheitem( "usp_silencer" );
    precacheitem( "fraggrenade" );
    _ID42368::main();
}
