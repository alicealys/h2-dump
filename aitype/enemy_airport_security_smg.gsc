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
    self._ID34144 = "beretta";

    if ( isai( self ) )
    {
        self setengagementmindist( 128.0, 0.0 );
        self setengagementmaxdist( 512.0, 768.0 );
    }

    switch ( _ID42226::_ID15950( 8 ) )
    {
        case 0:
            self.weapon = "tmp";
            break;
        case 1:
            self.weapon = "tmp_reflex";
            break;
        case 2:
            self.weapon = "tmp";
            break;
        case 3:
            self.weapon = "mp5";
            break;
        case 4:
            self.weapon = "mp5_reflex";
            break;
        case 5:
            self.weapon = "ump45";
            break;
        case 6:
            self.weapon = "ump45_eotech";
            break;
        case 7:
            self.weapon = "ump45_reflex";
            break;
    }

    switch ( _ID42226::_ID15942( 2 ) )
    {
        case 0:
            _ID52800::main();
            break;
        case 1:
            _ID43951::main();
            break;
    }
}

_ID988()
{
    self setspawnerteam( "axis" );
}

_ID814()
{
    _ID52800::_ID814();
    _ID43951::_ID814();
    precacheitem( "tmp" );
    precacheitem( "tmp_reflex" );
    precacheitem( "tmp" );
    precacheitem( "mp5" );
    precacheitem( "mp5_reflex" );
    precacheitem( "ump45" );
    precacheitem( "ump45_eotech" );
    precacheitem( "ump45_reflex" );
    precacheitem( "beretta" );
    precacheitem( "fraggrenade" );
}
