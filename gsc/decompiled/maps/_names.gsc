// H2 GSC SOURCE
// Dumped by https://github.com/xensik/gsc-tool

main()
{

}

setup_names()
{
    if ( isdefined( level.names ) )
        return;

    var_0 = [];
    var_0[var_0.size] = "american";
    var_0[var_0.size] = "british";
    var_0[var_0.size] = "arab";
    var_0[var_0.size] = "russian";
    var_0[var_0.size] = "seal";
    var_0[var_0.size] = "taskforce";
    var_0[var_0.size] = "secretservice";
    var_0[var_0.size] = "multilingual";
    var_0[var_0.size] = "portuguese";
    var_0[var_0.size] = "shadowcompany";
    var_0[var_0.size] = "delta";
    var_0[var_0.size] = "french";
    var_0[var_0.size] = "african";
    var_0[var_0.size] = "czech";
    var_0[var_0.size] = "czech_surnames";
    var_0[var_0.size] = "pmc";
    var_0[var_0.size] = "xslice";
    var_0[var_0.size] = "kva";
    var_0[var_0.size] = "atlas";
    var_0[var_0.size] = "sentinel";
    var_0[var_0.size] = "squad";
    var_0[var_0.size] = "northkorea";

    for ( var_1 = 0; var_1 < var_0.size; var_1++ )
        level.names[var_0[var_1]] = [];

    add_name( "american", "Abrahamsson" );
    add_name( "american", "Alavi" );
    add_name( "american", "Alderman" );
    add_name( "american", "Arem" );
    add_name( "american", "Arya" );
    add_name( "american", "Baker" );
    add_name( "american", "Barb" );
    add_name( "american", "Bartolucci" );
    add_name( "american", "Bell" );
    add_name( "american", "Benitez" );
    add_name( "american", "Berry" );
    add_name( "american", "Blumel" );
    add_name( "american", "Boon" );
    add_name( "american", "Bowling" );
    add_name( "american", "Capen" );
    add_name( "american", "Casey" );
    add_name( "american", "Chen" );
    add_name( "american", "Cherubini" );
    add_name( "american", "Cho" );
    add_name( "american", "Cotterell" );
    add_name( "american", "Cournoyer" );
    add_name( "american", "Davis" );
    add_name( "american", "Dionne" );
    add_name( "american", "Dye" );
    add_name( "american", "Eady" );
    add_name( "american", "Emslie" );
    add_name( "american", "Ferriz" );
    add_name( "american", "Field" );
    add_name( "american", "Fukuda" );
    add_name( "american", "Gaines" );
    add_name( "american", "Ganus" );
    add_name( "american", "Giesler" );
    add_name( "american", "Gigliotti" );
    add_name( "american", "Gillis" );
    add_name( "american", "Glasco" );
    add_name( "american", "Glenn" );
    add_name( "american", "Gompert" );
    add_name( "american", "Grenier" );
    add_name( "american", "Grigsby" );
    add_name( "american", "Haggerty" );
    add_name( "american", "Hammon" );
    add_name( "american", "Harmer" );
    add_name( "american", "Harris" );
    add_name( "american", "Heath" );
    add_name( "american", "Hirsh" );
    add_name( "american", "Johnson" );
    add_name( "american", "Kar" );
    add_name( "american", "Keating" );
    add_name( "american", "Kriegler" );
    add_name( "american", "Kuhn" );
    add_name( "american", "Lai" );
    add_name( "american", "Lambert" );
    add_name( "american", "Lastimosa" );
    add_name( "american", "Lopez" );
    add_name( "american", "Lor" );
    add_name( "american", "Luo" );
    add_name( "american", "McCandlish" );
    add_name( "american", "McCord" );
    add_name( "american", "McCoy" );
    add_name( "american", "McLeod" );
    add_name( "american", "Messerly" );
    add_name( "american", "Miller" );
    add_name( "american", "Neel" );
    add_name( "american", "Onur" );
    add_name( "american", "Peas" );
    add_name( "american", "Pelayo" );
    add_name( "american", "Penrod" );
    add_name( "american", "Perez" );
    add_name( "american", "Pierce" );
    add_name( "american", "Porter" );
    add_name( "american", "Rieke" );
    add_name( "american", "Roycewicz" );
    add_name( "american", "Rubin" );
    add_name( "american", "Sandler" );
    add_name( "american", "Sarkisyan" );
    add_name( "american", "Seal" );
    add_name( "american", "Shiring" );
    add_name( "american", "Silvers" );
    add_name( "american", "Slayback" );
    add_name( "american", "Smith" );
    add_name( "american", "Stone" );
    add_name( "american", "Sue" );
    add_name( "american", "Taehoon" );
    add_name( "american", "Tee" );
    add_name( "american", "Theodore" );
    add_name( "american", "Turner" );
    add_name( "american", "Vinson" );
    add_name( "american", "Volker" );
    add_name( "american", "Wang" );
    add_name( "american", "Wapner" );
    add_name( "american", "Wasilczyk" );
    add_name( "american", "West" );
    add_name( "american", "Wiederhold" );
    add_name( "american", "Yang" );
    add_name( "american", "Zampella" );
    add_name( "american", "Carrier" );
    add_name( "american", "Wilson" );
    add_name( "american", "Taddei" );
    add_name( "american", "Dion Landry" );
    add_name( "american", "Villeneuve" );
    add_name( "american", "Demers" );
    add_name( "american", "St-Amant" );
    add_name( "american", "Gagne-Gauthier" );
    add_name( "american", "Thibeault" );
    add_name( "american", "Ducharme" );
    add_name( "american", "Robidoux" );
    add_name( "american", "Fournier" );
    add_name( "american", "Blanchet-Mainville" );
    add_name( "american", "Lauze" );
    add_name( "american", "Lessard" );
    add_name( "american", "Simon-Laforest" );
    add_name( "american", "Langlois" );
    add_name( "american", "Remondin" );
    add_name( "american", "Rocha" );
    add_name( "american", "Blondeau" );
    add_name( "american", "Bourdages" );
    add_name( "american", "Charron" );
    add_name( "american", "Lalancette" );
    add_name( "american", "Ouellet" );
    add_name( "american", "Rabiller" );
    add_name( "american", "Giguere" );
    add_name( "american", "Mainguy" );
    add_name( "american", "Patitucci" );
    add_name( "american", "Arsenault-Cote" );
    add_name( "american", "Imbeault" );
    add_name( "american", "Alain" );
    add_name( "american", "Bourque" );
    add_name( "american", "Martin" );
    add_name( "american", "Samson" );
    add_name( "american", "Normand" );
    add_name( "american", "Paiement" );
    add_name( "american", "Barret" );
    add_name( "american", "Cheng" );
    add_name( "american", "Delwarte" );
    add_name( "american", "Moreau-Roberge" );
    add_name( "american", "Horth" );
    add_name( "american", "Tauru" );
    add_name( "american", "Landry-Cantin" );
    add_name( "american", "Royer" );
    add_name( "american", "Boudreault" );
    add_name( "american", "Murray" );
    add_name( "american", "Ferland" );
    add_name( "american", "Saindon" );
    add_name( "american", "Denis" );
    add_name( "american", "Harris" );
    add_name( "american", "Montcalm" );
    add_name( "american", "Dupont" );
    add_name( "american", "St-Pierre" );
    add_name( "american", "Brulotte" );
    add_name( "american", "Cormier" );
    add_name( "american", "Grondines" );
    add_name( "american", "Edmond" );
    add_name( "american", "Dompierre" );
    add_name( "american", "Meunier" );
    add_name( "american", "Roach" );
    add_name( "american", "Roy" );
    add_name( "american", "Bellaoui" );
    add_name( "american", "Lakatos" );
    add_name( "american", "Pageau" );
    add_name( "american", "Parent-Labonte" );
    add_name( "american", "Auger" );
    add_name( "american", "Rosenhek" );
    add_name( "american", "Grein" );
    add_name( "american", "Bacon" );
    add_name( "american", "Paradis" );
    add_name( "american", "Tremblay" );
    add_name( "american", "Bellehumeur" );
    add_name( "american", "Boudreau" );
    add_name( "american", "Carmona" );
    add_name( "american", "Cossette" );
    add_name( "american", "Gratton" );
    add_name( "american", "Beaulieu" );
    add_name( "american", "Lelievre" );
    add_name( "american", "St-Onge" );
    add_name( "american", "Parashar" );
    add_name( "american", "Descamps" );
    add_name( "american", "Blouin" );
    add_name( "american", "Bruin" );
    add_name( "american", "Hebert" );
    add_name( "american", "Aubry" );
    add_name( "american", "Colin-Doiron" );
    add_name( "american", "Fortin" );
    add_name( "american", "Morin" );
    add_name( "american", "Poirier" );
    add_name( "american", "Diamant" );
    add_name( "american", "Girard" );
    add_name( "american", "Lavoie" );
    add_name( "american", "Pouliot" );
    add_name( "american", "Durand" );
    add_name( "american", "Lagrange" );
    add_name( "american", "Aube" );
    add_name( "american", "Audet" );
    add_name( "american", "Dion" );
    add_name( "american", "Gauthier" );
    add_name( "american", "Thomas" );
    add_name( "american", "Lachance" );
    add_name( "american", "Desrosiers" );
    add_name( "american", "Gosselin" );
    add_name( "american", "Laberge" );
    add_name( "american", "Riedl" );
    add_name( "american", "Wauthy" );
    add_name( "american", "Idrissi" );
    add_name( "american", "Charette" );
    add_name( "american", "Pothier" );
    add_name( "american", "Lesperance" );
    add_name( "american", "Gagne" );
    add_name( "american", "Bibeau" );
    add_name( "american", "Dube" );
    add_name( "american", "Grignon-Roy" );
    add_name( "american", "Desmarais" );
    add_name( "american", "Morasse" );
    add_name( "american", "Proulx" );
    add_name( "american", "Houle" );
    add_name( "american", "Delboulle" );
    add_name( "american", "Lavigne" );
    add_name( "american", "Simard" );
    add_name( "american", "Morel" );
    add_name( "american", "Pare-Jobin" );
    add_name( "american", "Amiri" );
    add_name( "american", "Pinsonneault" );
    add_name( "british", "Abbot" );
    add_name( "british", "Adams" );
    add_name( "british", "Bartlett" );
    add_name( "british", "Boyd" );
    add_name( "british", "Boyle" );
    add_name( "british", "Bremner" );
    add_name( "british", "Carlyle" );
    add_name( "british", "Carver" );
    add_name( "british", "Cheek" );
    add_name( "british", "Clarke" );
    add_name( "british", "Collins" );
    add_name( "british", "Compton" );
    add_name( "british", "Connolly" );
    add_name( "british", "Cook" );
    add_name( "british", "Dowd" );
    add_name( "british", "Field" );
    add_name( "british", "Fleming" );
    add_name( "british", "Fletcher" );
    add_name( "british", "Flynn" );
    add_name( "british", "Grant" );
    add_name( "british", "Greaves" );
    add_name( "british", "Griffin" );
    add_name( "british", "Harris" );
    add_name( "british", "Harrison" );
    add_name( "british", "Heath" );
    add_name( "british", "Henderson" );
    add_name( "british", "Hopkins" );
    add_name( "british", "Hoyt" );
    add_name( "british", "Kent" );
    add_name( "british", "Lewis" );
    add_name( "british", "Lipton" );
    add_name( "british", "Macdonald" );
    add_name( "british", "Maxwell" );
    add_name( "british", "McQuarrie" );
    add_name( "british", "Miller" );
    add_name( "british", "Mitchell" );
    add_name( "british", "Moore" );
    add_name( "british", "Murphy" );
    add_name( "british", "Murray" );
    add_name( "british", "Pearce" );
    add_name( "british", "Plumber" );
    add_name( "british", "Pritchard" );
    add_name( "british", "Rankin" );
    add_name( "british", "Reed" );
    add_name( "british", "Ritchie" );
    add_name( "british", "Ross" );
    add_name( "british", "Roth" );
    add_name( "british", "Smith" );
    add_name( "british", "Stevenson" );
    add_name( "british", "Stuart" );
    add_name( "british", "Sullivan" );
    add_name( "british", "Thompson" );
    add_name( "british", "Veale" );
    add_name( "british", "Wallace" );
    add_name( "british", "Wells" );
    add_name( "british", "Welsh" );
    add_name( "russian", "Sasha Ivanov" );
    add_name( "russian", "Aleksei Vyshinskiy" );
    add_name( "russian", "Boris Ryzhkov" );
    add_name( "russian", "Dima Tikhonov" );
    add_name( "russian", "Oleg Kosygin" );
    add_name( "russian", "Pyotr Bulganin" );
    add_name( "russian", "Petya Malenkov" );
    add_name( "russian", "Alyosha Tarkovsky" );
    add_name( "russian", "Sergei Grombyo" );
    add_name( "russian", "Viktor Kuznetsov" );
    add_name( "russian", "Misha Podgorniy" );
    add_name( "russian", "Borya Mikoyan" );
    add_name( "russian", "Anatoly Voroshilov" );
    add_name( "russian", "Kolya Shvernik" );
    add_name( "russian", "Nikolai Kalinin" );
    add_name( "russian", "Vladimir Brezhnev" );
    add_name( "russian", "Pavel Chernenko" );
    add_name( "russian", "Volodya Andropov" );
    add_name( "russian", "Yuri Nikitin" );
    add_name( "russian", "Dmitri Petrenko" );
    add_name( "russian", "Vanya Gerasimov" );
    add_name( "russian", "Mikhail Zhuravlev" );
    add_name( "russian", "Ivan Lukin" );
    add_name( "russian", "Kostya Golubev" );
    add_name( "russian", "Konstantin Lebedev" );
    add_name( "russian", "Aleksandr Vasilev" );
    add_name( "russian", "Yakov Glushenko" );
    add_name( "russian", "Sasha Semenov" );
    add_name( "russian", "Aleksei Ulyanov" );
    add_name( "russian", "Boris Yefremov" );
    add_name( "russian", "Dima Chernyshenko" );
    add_name( "russian", "Oleg Stepanoshvili" );
    add_name( "russian", "Pyotr Demchenko" );
    add_name( "russian", "Petya Avagimov" );
    add_name( "russian", "Alyosha Murzaev" );
    add_name( "russian", "Sergei Shkuratov" );
    add_name( "russian", "Viktor Yakimenko" );
    add_name( "russian", "Misha Masijashvili" );
    add_name( "russian", "Borya Shapovalov" );
    add_name( "russian", "Anatoly Ivashenko" );
    add_name( "russian", "Kolya Dovzhenko" );
    add_name( "russian", "Nikolai Turdyev" );
    add_name( "russian", "Vladimir Sabgaida" );
    add_name( "russian", "Pavel Svirin" );
    add_name( "russian", "Volodya Sarayev" );
    add_name( "russian", "Yuri Kiselev" );
    add_name( "russian", "Dmitri Bondarenko" );
    add_name( "russian", "Vanya Chernogolov" );
    add_name( "russian", "Mikhail Voronov" );
    add_name( "russian", "Ivan Afanasyev" );
    add_name( "russian", "Kostya Gridin" );
    add_name( "russian", "Konstantin Petrov" );
    add_name( "russian", "Aleksandr Rykov" );
    add_name( "russian", "Yakov Shvedov" );
    add_name( "arab", "Abdulaziz" );
    add_name( "arab", "Abdullah" );
    add_name( "arab", "Ali" );
    add_name( "arab", "Amin" );
    add_name( "arab", "Bassam" );
    add_name( "arab", "Fahd" );
    add_name( "arab", "Faris" );
    add_name( "arab", "Fouad" );
    add_name( "arab", "Habib" );
    add_name( "arab", "Hakem" );
    add_name( "arab", "Hassan" );
    add_name( "arab", "Ibrahim" );
    add_name( "arab", "Imad" );
    add_name( "arab", "Jabbar" );
    add_name( "arab", "Kareem" );
    add_name( "arab", "Khalid" );
    add_name( "arab", "Malik" );
    add_name( "arab", "Muhammad" );
    add_name( "arab", "Nasir" );
    add_name( "arab", "Omar" );
    add_name( "arab", "Rafiq" );
    add_name( "arab", "Rami" );
    add_name( "arab", "Said" );
    add_name( "arab", "Salim" );
    add_name( "arab", "Samir" );
    add_name( "arab", "Talib" );
    add_name( "arab", "Tariq" );
    add_name( "arab", "Youssef" );
    add_name( "arab", "Ziad" );
    add_name( "seal", "Angel" );
    add_name( "seal", "Apex" );
    add_name( "seal", "Avatar" );
    add_name( "seal", "Bearcat" );
    add_name( "seal", "Bishop" );
    add_name( "seal", "Boomer" );
    add_name( "seal", "Boxer" );
    add_name( "seal", "Canine" );
    add_name( "seal", "Chemist" );
    add_name( "seal", "Chemo" );
    add_name( "seal", "Cherub" );
    add_name( "seal", "Chino" );
    add_name( "seal", "Coffin" );
    add_name( "seal", "Coma" );
    add_name( "seal", "Cyclops" );
    add_name( "seal", "Cypher" );
    add_name( "seal", "Doc" );
    add_name( "seal", "Druid" );
    add_name( "seal", "Exxon" );
    add_name( "seal", "Gator" );
    add_name( "seal", "Hannibal" );
    add_name( "seal", "Hazard" );
    add_name( "seal", "Hitman" );
    add_name( "seal", "Jayhawk" );
    add_name( "seal", "Jester" );
    add_name( "seal", "Justice" );
    add_name( "seal", "Klepto" );
    add_name( "seal", "Kojak" );
    add_name( "seal", "Langley" );
    add_name( "seal", "Neptune" );
    add_name( "seal", "Mamba" );
    add_name( "seal", "Midnight" );
    add_name( "seal", "Neon" );
    add_name( "seal", "Nomad" );
    add_name( "seal", "Ogre" );
    add_name( "seal", "Ozone" );
    add_name( "seal", "Patron" );
    add_name( "seal", "Peasant" );
    add_name( "seal", "Pharaoh" );
    add_name( "seal", "Pieces" );
    add_name( "seal", "Poet" );
    add_name( "seal", "Preacher" );
    add_name( "seal", "Reaper" );
    add_name( "seal", "Redcell" );
    add_name( "seal", "Roadie" );
    add_name( "seal", "Robot" );
    add_name( "seal", "Rocket" );
    add_name( "seal", "Rooster" );
    add_name( "seal", "Sandman" );
    add_name( "seal", "Sparrow" );
    add_name( "seal", "Taco" );
    add_name( "seal", "Thumper" );
    add_name( "seal", "Trojan" );
    add_name( "seal", "Twister" );
    add_name( "seal", "Undertone" );
    add_name( "seal", "Utah" );
    add_name( "seal", "Whiskey" );
    add_name( "seal", "Worm" );
    add_name( "seal", "Yankee" );
    add_name( "seal", "Zero" );
    copy_names( "taskforce", "seal" );
    add_name( "secretservice", "Smith" );
    add_name( "secretservice", "Jones" );
    add_name( "secretservice", "Jackson" );
    add_name( "secretservice", "Johnson" );
    add_name( "secretservice", "Thompson" );
    add_name( "secretservice", "Ash" );
    add_name( "secretservice", "Bird" );
    add_name( "secretservice", "Finn" );
    add_name( "secretservice", "Fine" );
    add_name( "secretservice", "Brown" );
    add_name( "secretservice", "White" );
    add_name( "secretservice", "Gray" );
    add_name( "secretservice", "Black" );
    add_name( "secretservice", "Wylie" );
    add_name( "secretservice", "Rosenhaus" );
    add_name( "secretservice", "Boras" );
    add_name( "secretservice", "McKinnis" );
    add_name( "secretservice", "Duffy" );
    add_name( "secretservice", "Falk" );
    add_name( "secretservice", "Tellem" );
    add_name( "secretservice", "Goodwin" );
    add_name( "secretservice", "Condon" );
    add_name( "secretservice", "Parker" );
    add_name( "secretservice", "McGuire" );
    add_name( "secretservice", "Steinberg" );
    add_name( "portuguese", "Carlitos" );
    add_name( "portuguese", "Antonio" );
    add_name( "portuguese", "Gervasio" );
    add_name( "portuguese", "Lois" );
    add_name( "portuguese", "Xesus" );
    add_name( "shadowcompany", "Lestat" );
    add_name( "shadowcompany", "Nosferatu" );
    add_name( "shadowcompany", "Lecter" );
    add_name( "multilingual", "Kugelschreiber" );
    add_name( "multilingual", "Flughafen" );
    add_name( "xslice", "######InvalidName######" );
    add_name( "delta", "######InvalidName######" );
    add_name( "french", "######InvalidName######" );
    add_name( "african", "######InvalidName######" );
    add_name( "czech", "######InvalidName######" );
    add_name( "czech_surnames", "######InvalidName######" );
    add_name( "atlas", "######InvalidName######" );
    add_name( "sentinel", "######InvalidName######" );
    add_name( "kva", "######InvalidName######" );
    add_name( "squad", "######InvalidName######" );
    add_name( "northkorea", "######InvalidName######" );
    add_name( "pmc", "######InvalidName######" );
    init_script_friendnames();

    for ( var_1 = 0; var_1 < var_0.size; var_1++ )
    {
        remove_script_friendnames_from_list( var_0[var_1] );
        randomize_name_list( var_0[var_1] );
        level.nameindex[var_0[var_1]] = 0;
    }
}

copy_names( var_0, var_1 )
{
    level.names[var_0] = level.names[var_1];
}

add_name( var_0, var_1 )
{
    level.names[var_0][level.names[var_0].size] = var_1;
}

remove_name( var_0, var_1 )
{
    level.names[var_0] = common_scripts\utility::array_remove( level.names[var_0], var_1 );
}

init_script_friendnames()
{
    var_0 = [];
    var_1 = getspawnerarray();
    var_2 = getaiarray();

    foreach ( var_4 in var_1 )
    {
        if ( isdefined( var_4.script_friendname ) && var_4.script_friendname != "none" )
        {
            var_5 = normalize_script_friendname( var_4.script_friendname );
            var_0[var_0.size] = var_5;
        }
    }

    foreach ( var_8 in var_2 )
    {
        if ( isdefined( var_8.script_friendname ) && var_8.script_friendname != "none" )
        {
            var_5 = normalize_script_friendname( var_8.script_friendname );
            var_0[var_0.size] = var_5;
        }
    }

    level.script_friendnames = var_0;
}

normalize_script_friendname( var_0 )
{
    var_1 = strtok( var_0, " " );

    if ( var_1.size > 1 )
        var_0 = var_1[1];

    return var_0;
}

remove_script_friendnames_from_list( var_0 )
{
    foreach ( var_2 in level.script_friendnames )
    {
        foreach ( var_4 in level.names[var_0] )
        {
            if ( var_2 == var_4 )
                remove_name( var_0, var_4 );
        }
    }
}

randomize_name_list( var_0 )
{
    var_1 = level.names[var_0].size;

    for ( var_2 = 0; var_2 < var_1; var_2++ )
    {
        var_3 = randomint( var_1 );
        var_4 = level.names[var_0][var_2];
        level.names[var_0][var_2] = level.names[var_0][var_3];
        level.names[var_0][var_3] = var_4;
    }
}

get_name( var_0 )
{
    if ( isdefined( self.team ) && self.team == "neutral" )
        return;

    if ( !isdefined( var_0 ) && level.script == "credits" )
    {
        self.airank = "private";
        return;
    }

    if ( isdefined( self.script_friendname ) )
    {
        if ( self.script_friendname == "none" )
            return;

        self.name = self.script_friendname;
        getrankfromname( self.name );
        self notify( "set name and rank" );
        return;
    }

    get_name_for_nationality( self.voice );
    self notify( "set name and rank" );
}

_id_D1B3( var_0 )
{
    switch ( var_0 )
    {
        case "shadowcompany":
        case "portuguese":
        case "multilingual":
        case "secretservice":
        case "taskforce":
        case "seal":
        case "russian":
        case "arab":
        case "british":
        case "american":
            return;
    }
}

get_name_for_nationality( var_0 )
{
    _id_D1B3( var_0 );
    level.nameindex[var_0] = ( level.nameindex[var_0] + 1 ) % level.names[var_0].size;
    var_1 = level.names[var_0][level.nameindex[var_0]];
    var_2 = randomint( 10 );
    var_3 = undefined;

    if ( var_0 == "seal" || var_0 == "taskforce" )
    {
        var_3 = var_1;
        self.airank = "private";
    }
    else if ( var_0 == "secretservice" )
    {
        var_3 = "Agent " + var_1;
        self.airank = "private";
    }
    else
    {
        if ( isdefined( self.script_friendrank ) )
        {
            self.airank = undefined;

            switch ( self.script_friendrank )
            {
                case "Pvt.":
                    self.airank = "private";
                    break;
                case "Pfc.":
                    self.airank = "private";
                    break;
                case "Agent":
                    self.airank = "private";
                    break;
                case "Cpl.":
                    self.airank = "corporal";
                    break;
                case "Sgt.":
                    self.airank = "sergeant";
                    break;
                case "Lt.":
                    self.airank = "lieutenant";
                    break;
                case "Cpt.":
                    self.airank = "captain";
                    break;
                case "Capt.":
                    self.airank = "captain";
                    break;
            }

            if ( isdefined( self.airank ) )
                var_3 = self.script_friendrank + " " + var_1;
        }

        if ( !isdefined( self.airank ) )
        {
            if ( var_2 > 5 )
            {
                var_3 = "Pvt. " + var_1;
                self.airank = "private";
            }
            else if ( var_2 > 2 )
            {
                var_3 = "Cpl. " + var_1;
                self.airank = "private";
            }
            else
            {
                var_3 = "Sgt. " + var_1;
                self.airank = "sergeant";
            }
        }
    }

    if ( isai( self ) && self isbadguy() )
        self.ainame = var_3;
    else
        self.name = var_3;
}

getrankfromname( var_0 )
{
    if ( !isdefined( var_0 ) )
        self.airank = "private";

    var_1 = strtok( var_0, " " );
    var_2 = var_1[0];

    switch ( var_2 )
    {
        case "Pvt.":
            self.airank = "private";
            break;
        case "Pfc.":
            self.airank = "private";
            break;
        case "Agent":
            self.airank = "private";
            break;
        case "Cpl.":
            self.airank = "corporal";
            break;
        case "Sgt.":
            self.airank = "sergeant";
            break;
        case "Lt.":
            self.airank = "lieutenant";
            break;
        case "Cpt.":
            self.airank = "captain";
            break;
        case "Capt.":
            self.airank = "captain";
            break;
        default:
            self.airank = "private";
            break;
    }
}

nationalityusescallsigns( var_0 )
{
    switch ( var_0 )
    {
        case "sentinel":
        case "atlas":
        case "xslice":
        case "czech":
        case "shadowcompany":
        case "taskforce":
        case "seal":
        case "delta":
            return 1;
    }

    return 0;
}

nationalityusessurnames( var_0 )
{
    return isdefined( level.names[var_0 + "_surnames"] );
}
