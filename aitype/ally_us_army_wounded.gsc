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
    self.health = 100;
    self.grenadeweapon = "";
    self.grenadeammo = 0;
    self._ID949 = "beretta";
    self._ID34144 = "";

    if ( isai( self ) )
    {
        self setengagementmindist( 256.0, 0.0 );
        self setengagementmaxdist( 768.0, 1024.0 );
    }

    self.weapon = "m4_grunt";

    switch ( _ID42226::_ID15942( 6 ) )
    {
        case 0:
            _ID44891::main();
            break;
        case 1:
            _ID48730::main();
            break;
        case 2:
            _ID45618::main();
            break;
        case 3:
            _ID46439::main();
            break;
        case 4:
            _ID47504::main();
            break;
        case 5:
            _ID47389::main();
            break;
    }
}

_ID988()
{
    self setspawnerteam( "allies" );
}

_ID814()
{
    _ID44891::_ID814();
    _ID48730::_ID814();
    _ID45618::_ID814();
    _ID46439::_ID814();
    _ID47504::_ID814();
    _ID47389::_ID814();
    precacheitem( "m4_grunt" );
    precacheitem( "beretta" );
}
