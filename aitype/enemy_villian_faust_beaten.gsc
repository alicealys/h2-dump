// H2 PC GSC
// Decompiled by https://github.com/xensik/gsc-tool

main()
{
    self._ID3217 = "";
    self._ID2032 = "common_rambo_anims.csv";
    self.team = "axis";
    self.type = "human";
    self._ID36736 = "militia";
    self.accuracy = 0.12;
    self.health = 150;
    self.grenadeweapon = "fraggrenade";
    self.grenadeammo = 0;
    self._ID949 = "";
    self._ID34144 = "deserteagle";

    if ( isai( self ) )
    {
        self setengagementmindist( 256.0, 0.0 );
        self setengagementmaxdist( 512.0, 1024.0 );
    }

    self.weapon = "ak47";
    _ID52005::main();
}

_ID988()
{
    self setspawnerteam( "axis" );
}

_ID814()
{
    _ID52005::_ID814();
    precacheitem( "ak47" );
    precacheitem( "deserteagle" );
    precacheitem( "fraggrenade" );
    _ID42359::main();
}
