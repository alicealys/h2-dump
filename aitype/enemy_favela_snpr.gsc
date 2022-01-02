// H2 PC GSC
// Decompiled by https://github.com/xensik/gsc-tool

main()
{
    self._ID3217 = "";
    self._ID2032 = "sniper_glint_and_rambo.csv";
    self.team = "axis";
    self.type = "human";
    self._ID36736 = "militia";
    self.accuracy = 0.15;
    self.health = 150;
    self.grenadeweapon = "fraggrenade";
    self.grenadeammo = 0;
    self._ID949 = "";
    self._ID34144 = "glock";

    if ( isai( self ) )
    {
        self setengagementmindist( 1250.0, 1024.0 );
        self setengagementmaxdist( 1600.0, 2400.0 );
    }

    self.weapon = "dragunov";

    switch ( _ID42226::_ID15942( 2 ) )
    {
        case 0:
            _ID52867::main();
            break;
        case 1:
            _ID45439::main();
            break;
    }
}

_ID988()
{
    self setspawnerteam( "axis" );
}

_ID814()
{
    _ID52867::_ID814();
    _ID45439::_ID814();
    precacheitem( "dragunov" );
    precacheitem( "glock" );
    precacheitem( "fraggrenade" );
    _ID42359::main();
    _ID42368::main();
}
