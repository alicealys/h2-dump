// H2 GSC SOURCE
// Dumped by https://github.com/xensik/gsc-tool

main()
{
    self.animtree = "";
    self.additionalassets = "";
    self.team = "axis";
    self.type = "human";
    self.subclass = "regular";
    self.accuracy = 0.2;
    self.health = 150;
    self.grenadeweapon = "fraggrenade";
    self.grenadeammo = 0;
    self.secondaryweapon = "";
    self.sidearm = "beretta";

    if ( isai( self ) )
    {
        self setengagementmindist( 256.0, 0.0 );
        self setengagementmaxdist( 768.0, 1024.0 );
    }

    switch ( codescripts\character::get_random_weapon( 4 ) )
    {
        case 0:
            self.weapon = "ak47";
            break;
        case 1:
            self.weapon = "ak47_acog";
            break;
        case 2:
            self.weapon = "ak47_reflex";
            break;
        case 3:
            self.weapon = "ak47_grenadier";
            break;
    }

    switch ( codescripts\character::get_random_character( 8 ) )
    {
        case 0:
            _id_AE5A::main();
            break;
        case 1:
            _id_B9F7::main();
            break;
        case 2:
            _id_D358::main();
            break;
        case 3:
            _id_BD22::main();
            break;
        case 4:
            _id_D228::main();
            break;
        case 5:
            _id_B078::main();
            break;
        case 6:
            _id_BA6A::main();
            break;
        case 7:
            _id_A813::main();
            break;
    }
}

spawner()
{
    self setspawnerteam( "axis" );
}

precache()
{
    _id_AE5A::precache();
    _id_B9F7::precache();
    _id_D358::precache();
    _id_BD22::precache();
    _id_D228::precache();
    _id_B078::precache();
    _id_BA6A::precache();
    _id_A813::precache();
    precacheitem( "ak47" );
    precacheitem( "ak47_acog" );
    precacheitem( "ak47_reflex" );
    precacheitem( "ak47_grenadier" );
    precacheitem( "gl_ak47" );
    precacheitem( "beretta" );
    precacheitem( "fraggrenade" );
}
