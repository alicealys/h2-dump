// H2 PC GSC
// Decompiled by https://github.com/xensik/gsc-tool

_ID616()
{
    self._ID3217 = "";
    self._ID2032 = "";
    self._ID1194 = "axis";
    self._ID1244 = "human";
    self._ID36736 = "regular";
    self._ID10 = 0.2;
    self._ID486 = 150;
    self._ID470 = "fraggrenade";
    self._ID464 = 0;
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
            self._ID1302 = "ak47_arctic";
            break;
        case 1:
            self._ID1302 = "ak47_arctic_acog";
            break;
        case 2:
            self._ID1302 = "ak47_arctic_grenadier";
            break;
        case 3:
            self._ID1302 = "ak47_arctic_reflex";
            break;
        case 4:
            self._ID1302 = "famas_arctic";
            break;
        case 5:
            self._ID1302 = "famas_arctic_reflex";
            break;
        case 6:
            self._ID1302 = "aug_scope_arctic";
            break;
        case 7:
            self._ID1302 = "aug_reflex_arctic";
            break;
        case 8:
            self._ID1302 = "aug_reflex_arctic";
            break;
    }

    character\character_opforce_merc_lmg_a_oilrig::_ID616();
}

_ID988()
{
    self setspawnerteam( "axis" );
}

_ID814()
{
    character\character_opforce_merc_lmg_a_oilrig::_ID814();
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
