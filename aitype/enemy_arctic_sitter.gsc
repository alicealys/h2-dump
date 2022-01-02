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
    self._ID34144 = "usp";

    if ( isai( self ) )
    {
        self setengagementmindist( 128.0, 0.0 );
        self setengagementmaxdist( 512.0, 1024.0 );
    }

    switch ( _ID42226::_ID15950( 9 ) )
    {
        case 0:
            self.weapon = "ak47_arctic";
            break;
        case 1:
            self.weapon = "ak47_arctic_acog";
            break;
        case 2:
            self.weapon = "ak47_arctic_grenadier";
            break;
        case 3:
            self.weapon = "ak47_arctic_reflex";
            break;
        case 4:
            self.weapon = "famas_arctic";
            break;
        case 5:
            self.weapon = "famas_arctic_reflex";
            break;
        case 6:
            self.weapon = "aug_scope_arctic";
            break;
        case 7:
            self.weapon = "aug_reflex_arctic";
            break;
        case 8:
            self.weapon = "aug_reflex_arctic";
            break;
    }

    _ID54160::main();
}

_ID988()
{
    self setspawnerteam( "axis" );
}

_ID814()
{
    _ID54160::_ID814();
    precacheitem( "ak47_arctic" );
    precacheitem( "ak47_arctic_acog" );
    precacheitem( "ak47_arctic_grenadier" );
    precacheitem( "gl_ak47_arctic" );
    precacheitem( "ak47_arctic_reflex" );
    precacheitem( "famas_arctic" );
    precacheitem( "famas_arctic_reflex" );
    precacheitem( "aug_scope_arctic" );
    precacheitem( "aug_reflex_arctic" );
    precacheitem( "aug_reflex_arctic" );
    precacheitem( "usp" );
    precacheitem( "fraggrenade" );
}
