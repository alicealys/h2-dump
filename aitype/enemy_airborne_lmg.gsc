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
    self._ID949 = "";
    self._ID34144 = "pp2000";

    if ( isai( self ) )
    {
        self setengagementmindist( 512.0, 400.0 );
        self setengagementmaxdist( 1024.0, 1250.0 );
    }

    switch ( _ID42226::_ID15950( 6 ) )
    {
        case 0:
            self.weapon = "rpd";
            break;
        case 1:
            self.weapon = "rpd_reflex";
            break;
        case 2:
            self.weapon = "rpd_acog";
            break;
        case 3:
            self.weapon = "rpd_digital";
            break;
        case 4:
            self.weapon = "rpd_digital_acog";
            break;
        case 5:
            self.weapon = "rpd_digital_reflex";
            break;
    }

    switch ( _ID42226::_ID15942( 3 ) )
    {
        case 0:
            _ID52464::main();
            break;
        case 1:
            _ID49613::main();
            break;
        case 2:
            _ID54249::main();
            break;
    }
}

_ID988()
{
    self setspawnerteam( "axis" );
}

_ID814()
{
    _ID52464::_ID814();
    _ID49613::_ID814();
    _ID54249::_ID814();
    precacheitem( "rpd" );
    precacheitem( "rpd_reflex" );
    precacheitem( "rpd_acog" );
    precacheitem( "rpd_digital" );
    precacheitem( "rpd_digital_acog" );
    precacheitem( "rpd_digital_reflex" );
    precacheitem( "pp2000" );
    precacheitem( "fraggrenade" );
}
