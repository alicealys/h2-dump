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
    self._ID34144 = "beretta";

    if ( isai( self ) )
    {
        self setengagementmindist( 512.0, 400.0 );
        self setengagementmaxdist( 1024.0, 1250.0 );
    }

    self.weapon = "rpd_acog";

    switch ( _ID42226::_ID15942( 11 ) )
    {
        case 0:
            _ID51316::main();
            break;
        case 1:
            _ID45439::main();
            break;
        case 2:
            _ID49730::main();
            break;
        case 3:
            _ID53930::main();
            break;
        case 4:
            _ID44765::main();
            break;
        case 5:
            _ID54019::main();
            break;
        case 6:
            _ID47374::main();
            break;
        case 7:
            _ID45943::main();
            break;
        case 8:
            _ID48226::main();
            break;
        case 9:
            _ID47555::main();
            break;
        case 10:
            _ID43317::main();
            break;
    }
}

_ID988()
{
    self setspawnerteam( "axis" );
}

_ID814()
{
    _ID51316::_ID814();
    _ID45439::_ID814();
    _ID49730::_ID814();
    _ID53930::_ID814();
    _ID44765::_ID814();
    _ID54019::_ID814();
    _ID47374::_ID814();
    _ID45943::_ID814();
    _ID48226::_ID814();
    _ID47555::_ID814();
    _ID43317::_ID814();
    precacheitem( "rpd_acog" );
    precacheitem( "beretta" );
    precacheitem( "fraggrenade" );
    _ID42359::main();
}
