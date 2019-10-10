Set-StrictMode -Version 1

$HashCategorie = [ordered]@{
    'Toutes_catégories'                   = $null
    '_EMPLOI_'                            = 71
        'Offres_emploi'                   = 33
    '_VEHICULES_'                         = 1
        'Voitures'                        = 2
        'Motos'                           = 3
        'Caravaning'                      = 4
        'Utilitaires'                     = 5
        'Equipement_auto'                 = 6
        'Equipement_moto'                 = 44
        'Equipement_caravaning'           = 50
        'Equipement_nautisme'             = 51
        'Nautisme'                        = 7
    '_IMMOBILIER_'                        = 8
        'Ventes_immobilières'             = 9
        'Locations'                       = 10
        'Colocations'                     = 11
        'Bureaux_Commerces'               = 13
    '_VACANCES_'                          = 66
        'Locations_Gites'                 = 12
        'Chambres_d_hotes'                = 67
        'Campings'                        = 68
        'Hôtels'                          = 69
        'Hébergements_insolites'          = 70
    '_MULTIMEDIA_'                        = 14
        'Informatique'                    = 15
        'Consoles_jeux_video'             = 43
        'Image_son'                       = 16
        'Téléphonie'                      = 17
    '_MAISON_'                            = 18
        'Ameublement'                     = 19
        'Electromenager'                  = 20
        'Arts_de_la_table'                = 45
        'Décoration'                      = 39
        'Linge_de_maison'                 = 46
        'Bricolage'                       = 21
        'Jardinage'                       = 52
        'Vêtements'                       = 22
        'Chaussures'                      = 53
        'Accessoires_bagagerie'           = 47
        'Montres_bijoux'                  = 42
        'Equipement_bébé'                 = 23
        'Vêtements_bébé'                  = 54
    '_LOISIRS_'                           = 24
        'DVD_Films'                       = 25
        'CD_Musique'                      = 26
        'Livres'                          = 27
        'Animaux'                         = 28
        'Vélos'                           = 55
        'Sports_Hobbies'                  = 29
        'instruments_de_musique'          = 30
        'Collection'                      = 40
        'Jeux_Jouets'                     = 41
        'Vins_Gastronomie'                = 48
    '_MATERIEL_PROFESSIONNEL_'            = 56
        'Matériel_agricole'               = 57 
        'Transport_manutention'           = 58
        'BTP_chantier_gros_oeuvre'        = 59 
        'Outillage_materiaux_2nd_oeuvre'  = 60
        'Equipements_industriels'         = 32
        'Restauration_hotellerie'         = 61
        'Fournitures_de_bureau'           = 62
        'Commerces_marchés'               = 63
        'Matériel_médical'                = 64
    '_SERVICES_'                          = 31
        'Prestations_de_services'         = 34
        'Billeterie'                      = 35
        'Evénements'                      = 49
        'Cours_particuliers'              = 36
        'Covoiturage'                     = 65
    'Autres'                              = 37
}

$HashRegion = [Ordered]@{
    'Toute_la_France'            = '' 
    'Alsace'                     = 1
    'Aquitaine'                  = 2
    'Auvergne'                   = 3
    'Basse-Normandie'            = 4
    'Bourgogne'                  = 5
    'Bretagne'                   = 6
    'Centre'                     = 7
    'Champagne-Ardenne'          = 8
    'Corse'                      = 9
    'Franche-Comte'              = 10
    'Haute-Normandie'            = 11
    'Ile-De-France'              = 12
    'Languedoc-Roussillon'       = 13
    'Limousin'                   = 14
    'Lorraine'                   = 15
    'Midi-Pyrenees'              = 16
    'Nord-Pas-De-Calais'         = 17
    'Pays-De-La-Loire'           = 18
    'Picardie'                   = 19
    'Poitou-Charentes'           = 20
    'Provence-Alpes-Cote-d-Azur' = 21
    'Rhone-Alpes'                = 22
    'Guadeloupe'                 = 23
    'Martinique'                 = 24
    'Guyanne'                    = 25
    'Reunion'                    = 26
  }

  $HashDepartement = @{
    'Ain'                     = 1;
    'Aisne'                   = 2; 
    'Allier'                  = 3;
    'Alpes-De-Haute-Provence' = 4;
    'Hautes-Alpes'            = 5;
    'Alpes-Maritimes'         = 6;
    'Ardèche'                 = 7;
    'Ardennes'                = 8;
    'Ariège'                  = 9;
    'Aube'                    = 10;
    'Aude'                    = 11;
    'Aveyron'                 = 12;
    'Bouches-Du-Rhône'        = 13;
    'Calvados'                = 14;
    'Cantal'                  = 15;
    'Charente'                = 16;
    'Charente-Maritime'       = 17;
    'Cher'                    = 18;
    'Corrèze'                 = 19;
    'Corse'                   = 20;
    "Côte-d`'or"              = 21;
    "Côte d`'Armor"           = 22;
    'Creuse'                  = 23;
    'Dordogne'                = 24;
    'Doubs'                   = 25;
    'Drôme'                   = 26;
    'Eure'                    = 27;
    'Eure-Et-Loire'           = 28;
    'Finistère'               = 29;
    'Gard'                    = 30;
    'Haute-Garonne'           = 31;
    'Gers'                    = 32;
    'Gironde'                 = 33;
    'Hérault'                 = 34;
    'Ille-Et-Vilaine'         = 35;
    'Indre'                   = 36;
    'Indre-Et-Loire'          = 37;
    'Isère'                   = 38;
    'Jura'                    = 39;
    'Landes'                  = 40;
    'Loir-Et-Cher'            = 41;
    'Loire'                   = 42;
    'Haute-Loire'             = 43;
    'Loire-Atlantique'        = 44;
    'Loiret'                  = 45;
    'Lot'                     = 46;
    'Lot-Et-Garonne'          = 47;
    'Lozère'                  = 48;
    'Maine-Et-Loire'          = 49;
    'Manche'                  = 50;
    'Marne'                   = 51;
    'Haute-Marne'             = 52;
    'Mayenne'                 = 53;
    'Meurthe-Et-Moselle'      = 54;
    'Meuse'                   = 55;
    'Morbihian'               = 56;
    'Moselle'                 = 57;
    'Nièvre'                  = 58;
    'Nord'                    = 59;
    'Oise'                    = 60;
    'Orne'                    = 61;
    'Pas-De-Calais'           = 62;
    'Puy-De-Dome'             = 63;
    'Pyrénées-Atlantiques'    = 64;
    'Haute-Pyrénées'          = 65;
    'Pyrénées-Orientales'     = 66;
    'Bas-Rhin'                = 67;
    'Haut-Rhin'               = 68;
    'Rhône'                   = 69;
    'Haute-Saône'             = 70;
    'Saône-Et-Loire'          = 71;
    'Sarthe'                  = 72;
    'Savoie'                  = 73;
    'Haute-Savoie'            = 74;
    'Paris'                   = 75;
    'Seine-Maritime'          = 76;
    'Seine-Et-Marne'          = 77;
    'Yvelines'                = 78;
    'Deux-Sèvres'             = 79;
    'Somme'                   = 80;
    'Tarn'                    = 81;
    'Tarn-Et-Garonne'         = 82;
    'Var'                     = 83;
    'Vaucluse'                = 84;
    'Vendée'                  = 85;
    'Vienne'                  = 86;
    'Haute-Vienne'            = 87;
    'Vosges'                  = 88;
    'Yonne'                   = 89;
    'Territoire-de-Belfort'   = 90;
    'Essonne'                 = 91;
    'Haut-De-Seine'           = 92;
    'Seine-Saint-Denis'       = 93;
    'Val-De-Marne'            = 94;
    "Val-D`'Oise"             = 95;
}

$headerParams = @{
    "accept" = "*/*"
    "Content-Type" = "text/plain;charset=UTF-8"
    "Accept-Language" = "fr-FR;q=1"
    "Accept-Encoding" = "identity"
    "origin" = "https://www.leboncoin.fr"
    "api_key" = "ba0c2dad52b3ec"
    "X-DataDome" = "protected"
}

Function Get-LBCCategory
{
    Param ( 
        [Switch]$ToScreen
    )
    
    if ($ToScreen) {
        $HashCategorie.keys | ForEach-Object { if ($_[0] -ne '_') {"   $_"} else {Write-Host $_ -ForegroundColor Yellow }}    
    }
    else {
        $HashCategorie.keys | ForEach-Object { if ($_[0] -eq '_') {$_.ToUpper()} else { $_ }}
    }
}

### Fonctions spécifiques Le Bon Coin
Function Get-LBCURI
{
    [CmdletBinding(DefaultParameterSetName='ParameterSet1')]
    Param ( 
        [Parameter(Mandatory=$false, 
                    ValueFromPipeline=$true,
                    ValueFromPipelineByPropertyName=$true, 
                    ParameterSetName='ParameterSet1')]
        [string]$MotsCles,

        [Parameter(Mandatory=$false, 
                    ValueFromPipeline=$true,
                    ValueFromPipelineByPropertyName=$true, 
                    ParameterSetName='ParameterSet1')]
        # ((Get-LBCCategory) | foreach {"'$_'"} ) -join ',' | Set-Clipboard
        [ValidateSet('Toutes_catégories','_EMPLOI_','Offres_emploi','_VEHICULES_','Voitures','Motos','Caravaning','Utilitaires','Equipement_auto','Equipement_moto','Equipement_caravaning','Equipement_nautisme','Nautisme','_IMMOBILIER_','Ventes_immobilières','Locations','Colocations','Bureaux_Commerces','_VACANCES_','Locations_Gites','Chambres_d_hotes','Campings','Hotels','Hébergements_insolites','_MULTIMEDIA_','Informatique','Consoles_jeux_video','Image_son','Téléphonie','_MAISON_','Ameublement','Electromenager','Arts_de_la_table','Décoration','Linge_de_maison','Bricolage','Jardinage','Vêtements','Chaussures','Accessoires_bagagerie','Montres_bijoux','Equipement_bébé','Vêtements_bébé','_LOISIRS_','DVD_Films','CD_Musique','Livres','Animaux','Vélos','Sports_Hobbies','instruments_de_musique','Collection','Jeux_Jouets','Vins_Gastronomie','_MATERIEL_PROFESSIONNEL_','Matériel_agricole','Transport_manutention','BTP_chantier_gros_oeuvre','Outillage_materiaux_2nd_oeuvre','Equipements_industriels','Restauration_hotellerie','Fournitures_de_bureau','Commerces_marches','Matériel_médical','_SERVICES_','Prestations_de_services','Billeterie','Evénements','Cours_particuliers','Covoiturage','Autres')]
        [string]$Categorie,

        [Parameter(Mandatory=$false, 
                    ValueFromPipeline=$true,
                    ValueFromPipelineByPropertyName=$true, 
                    ParameterSetName='ParameterSet1')]
        [string]$codePostal,

        [Parameter(Mandatory=$false, 
                    ValueFromPipeline=$true,
                    ValueFromPipelineByPropertyName=$true, 
                    ParameterSetName='ParameterSet1')]
        [string]$Region,

        [Parameter(Mandatory=$false, 
                    ValueFromPipeline=$true,
                    ValueFromPipelineByPropertyName=$true, 
                    ParameterSetName='ParameterSet1')]
        [string]$Departement,

        [Parameter(Mandatory=$false)]
        [ValidateSet('Tous', 'Particuliers', 'Pros')]
        [string]$ParticuliersOuPros,
        
        [switch]$TitreUniquement,

        [Parameter(Mandatory=$false, 
                    ValueFromPipeline=$true,
                    ValueFromPipelineByPropertyName=$true, 
                    ParameterSetName='ParameterSet1')]
        $PrixMin,

        [Parameter(Mandatory=$false, 
                    ValueFromPipeline=$true,
                    ValueFromPipelineByPropertyName=$true, 
                    ParameterSetName='ParameterSet1')]
        $PrixMax
    )
    
    if ( ($MotsCles -ne '') -or ($null -ne $MotsCles) ) {
        Write-Verbose ('$MotsCles=' + $MotsCles) 
        $MotsCles = $MotsCles -replace ' ','%20'
        $MotsCles = $MotsCles -replace '&','%26'
    }
    else {
        $MotsCles = $null
    }
    
    if ($Categorie) {
        $Cat = $HashCategorie[$Categorie]
    }

    if ($TitreUniquement) {
        $TitleOnly = '&search_in=subject'
    }  
    else {
        $TitleOnly = ''
    } 
    
    if ($region) {
        $region = $HashRegion[$region]
        if ($region -eq 'France') {
            $region = ''
        }
        if ($Departement)
        {
            $Departement = $HashDepartement[$Departement]
        }
    }
    else {
        $region = ''
    } 

    if (-not $PrixMin -or $PrixMin -eq 0) {
        $PrixMin = 'min'
    }

    if (-not $PrixMax -or $PrixMax -gt 9999999) {
        $PrixMax = 'max'
    }

    $Prix = '{0}-{1}' -f $PrixMin, $PrixMax

    switch ($ParticuliersOuPros) {
        'Particuliers' {$scope='private'}
        'Pros'         {$scope='pro'}
        default        {$scope =''}
    }

    $URI = 'https://www.leboncoin.fr/recherche/?category={0}&regions={1}&departments={2}{3}&owner_type={4}&text={5}&price={6}&location={7}' -f `
           $Cat, $Region, $Departement, $TitleOnly, $scope, $MotsCles, $Prix, $CodePostal
    $URI
    Write-Verbose "URI = $URI" 
}

function ConvertFrom-LBCDate
{
    [cmdletBinding()]
    Param ([String]$dateLBC)

      enum Mois {
         Janvier = 1
         Février = 2
         Mars = 3 
         Avril = 4
         Mai = 5
         Juin = 6
         Juillet = 7
         Août = 8
         Septembre = 9
         Octobre = 10
         Novembre = 11
         Décembre = 12
      }

    $annee = (Get-Date).Year 
    $moisBrut = $dateLBC -split ", " | Select-Object -index 0
    $moisBrut = Invoke-HTMLStringCleanUp -String $moisBrut
    
    switch ($moisBrut) {
        {$_ -match '^\d'} { # c'est un nombre, ou plutôt c'est une chaine qu'il faut découper
            Write-Verbose "Mois Brut = $MoisBrut"
            $jour = $moisBrut -split ' ' | Select-Object -index 0
            $moisBrut = $moisBrut -split ' ' | Select-Object -index 1
            $moisBrut = Invoke-HTMLStringCleanUp -String $moisBrut
            Write-Verbose "Mois Brut = $MoisBrut"
            $mois = [int][Mois]$moisBrut
            Break
        }

        {$_ -eq "Aujourd'hui"} {
            Write-Verbose "aujourd'hui"
            $mois = (Get-Date).Month
            $jour = (Get-Date).Day
            Break
        }

        {$_ -eq 'Hier'} {
            Write-Verbose 'Hier'
            #$mois = (Get-Date).Month
            $hier = ((Get-Date).AddDays(-1)) #(Get-Date).Day -1
            $jour = $hier.Day
            $mois = $hier.Month
            Break
        }
    }

    Write-Verbose "Mois = $moisBrut"
    Write-Verbose "Mois converti = $mois"
    Write-Verbose "Jour = $jour"
    $heure = ($dateLBC -split ", " | Select-Object -index 1) -split ':' | Select-Object -Index 0
    Write-Verbose "Heure = $heure"
    $minutes = ($dateLBC -split ", " | Select-Object -index 1) -split ':' | Select-Object -Index 1
    Write-Verbose "Minutes = $minutes"
 
    $dateAnnonce = Get-Date -Year $annee -Month $mois -Day $jour -Hour $heure -Minute $minutes -Second 0 -Millisecond 0
    Write-Verbose "Date convertie (avant correction eventuelle) = $dateAnnonce"    

    # Lors de la récupération des annonces, l'année de parution n'est pas mentionnée
    # Il est donc nécessaire d'effectuer quelques comparaisons afin de déterminer
    # si l'annonce récupérée est de l'année en cours, ou de l'année précédente.
    # Ce test est surtout utile en début et fin d'année, lorsque les années se cheva
    # uchent en termes d'annonces trouvées.
    $t = New-TimeSpan -Start $dateAnnonce -End (get-date) | Select-Object -ExpandProperty TotalDays
    # si l'intervalle de temps est négatif, c'est que l'annonce était de l'année précédente.
    if ($t -le 0)
    {
        $dateAnnonce = $dateAnnonce.AddYears(-1)
        Write-Verbose "Correction de l'année de l'annonce"
    }
    
    Write-Verbose "Date convertie (après correction eventuelle) = $dateAnnonce"    
    $dateAnnonce
}


Function Get-LBCDetailedAnnonce {
    Param ([String]$idAnnonce
    )

    $URI = "https://api.leboncoin.fr/finder/classified/$idAnnonce"
    #$result = Invoke-WebRequest -Uri $apiUrl -Headers $headerParams -Method Get -UseBasicParsing 
    $result = Invoke-RestMethod -Method Get -Uri $URI -Headers $headerParams 
    $result #| ConvertFrom-Json
}

function ConvertTo-Obj 
{
    [CmdletBinding()]
    Param ($annonce)

    $titreAnnonce = $annonce.Attributes | Where-Object {$_.name -eq 'title'} | Select-Object -ExpandProperty Value
    $annonceURL   = $annonce.Attributes | Where-Object {$_.name -eq 'href'} | Select-Object -ExpandProperty Value
    $annonceId    = ($annonceURL.replace('.htm/','') -split '/')[-1]
    $annonceURL   = 'https://www.leboncoin.fr' + $annonceURL
    $emplacement  = $annonce.SelectNodes('.//*[@itemprop="availableAtOrFrom"]').InnerText
    $categorie    = $annonce.SelectNodes('.//*[@*="aditem_category"]').InnerText
    $prix         = (($annonce.SelectNodes('.//meta[@*="priceCurrency"]').parentnode.innerhtml)) -split '-->' | Select-Object -index 1
    $prix         = $prix -split '<' | Select-Object -Index 0
    if ($null -eq $prix) {
        $prix = 0
    }
    else {
        [int]$prix = $prix -replace ' ',''        
    }
    $dateAnnonce  = $annonce.SelectNodes('.//p[@*="availabilityStarts"]').InnerHTML
    $ProOuPart    = if ($categorie -like '(pro)*') { 'Professionnel'} else { 'Particulier' }

    $obj = [PSCustomObject]@{
        Id            =   $annonceId
        Date          =   ConvertFrom-LBCDate -dateLBC $dateAnnonce  
        Titre         =   Invoke-HTMLStringCleanUp -String $titreAnnonce
        Prix          =   $prix
        Image         =   $null
        Emplacement   =   Invoke-HTMLStringCleanUp -String $emplacement
        Categorie     =   Invoke-HTMLStringCleanUp -String $categorie
        Lien          =   $annonceURL
        ProOuPart     =   $ProOuPart
        Site          =   'LBC'
    }
    Write-Verbose "OBJ: $obj"
    $obj
}

Function Get-LBCRawAnnonce
{
   # Parameter help description
   [Parameter(Mandatory)]
   [String] $URI

   Invoke-RestMethod -Method Get -Uri $URI -Headers $headerParams 
}

Function Get-LBCAnnonce
{
    [CmdletBinding(DefaultParameterSetName='ParameterSet1')]
    Param ( 
        [Parameter(Mandatory=$false, 
                    ValueFromPipeline=$true,
                    ValueFromPipelineByPropertyName=$true, 
                    ParameterSetName='ParameterSet1')]
        [string]$MotsCles,

        [Parameter(Mandatory=$false, 
                    ValueFromPipeline=$true,
                    ValueFromPipelineByPropertyName=$true, 
                    ParameterSetName='ParameterSet1')]
        # ((Get-LBCCategory) | foreach {"'$_'"} ) -join ',' | Set-Clipboard
        [ValidateSet('Toutes_catégories','_EMPLOI_','Offres_emploi','_VEHICULES_','Voitures','Motos','Caravaning','Utilitaires','Equipement_auto','Equipement_moto','Equipement_caravaning','Equipement_nautisme','Nautisme','_IMMOBILIER_','Ventes_immobilières','Locations','Colocations','Bureaux_Commerces','_VACANCES_','Locations_Gites','Chambres_d_hotes','Campings','Hotels','Hébergements_insolites','_MULTIMEDIA_','Informatique','Consoles_jeux_video','Image_son','Téléphonie','_MAISON_','Ameublement','Electromenager','Arts_de_la_table','Décoration','Linge_de_maison','Bricolage','Jardinage','Vêtements','Chaussures','Accessoires_bagagerie','Montres_bijoux','Equipement_bébé','Vêtements_bébé','_LOISIRS_','DVD_Films','CD_Musique','Livres','Animaux','Vélos','Sports_Hobbies','instruments_de_musique','Collection','Jeux_Jouets','Vins_Gastronomie','_MATERIEL_PROFESSIONNEL_','Matériel_agricole','Transport_manutention','BTP_chantier_gros_oeuvre','Outillage_materiaux_2nd_oeuvre','Equipements_industriels','Restauration_hotellerie','Fournitures_de_bureau','Commerces_marches','Materiel_medical','_SERVICES_','Prestations_de_services','Billeterie','Evénements','Cours_particuliers','Covoiturage','Autres')]
        [string]$Categorie,

        [Parameter(Mandatory=$false, 
                    ValueFromPipeline=$true,
                    ValueFromPipelineByPropertyName=$true, 
                    ParameterSetName='ParameterSet1')]
        [string]$codePostal,

        [Parameter(Mandatory=$false, 
                    ValueFromPipeline=$true,
                    ValueFromPipelineByPropertyName=$true, 
                    ParameterSetName='ParameterSet1')]
        [string]$Region,

        [Parameter(Mandatory=$false, 
                    ValueFromPipeline=$true,
                    ValueFromPipelineByPropertyName=$true, 
                    ParameterSetName='ParameterSet1')]
        [string]$Departement,

        [Parameter(Mandatory=$true, 
                    ValueFromPipeline=$false,
                    ValueFromPipelineByPropertyName=$true, 
                    Position=0,
                    ParameterSetName='ParameterSet2')]
        $URI,
        
        [Parameter(Mandatory=$false)]
        [ValidateSet('Tous', 'Particuliers', 'Pros')]
        [string]$ParticuliersOuPros,
        
        [switch]$TitreUniquement,

        [Parameter(Mandatory=$false, 
                    ValueFromPipeline=$true,
                    ValueFromPipelineByPropertyName=$true, 
                    ParameterSetName='ParameterSet1')]
        $PrixMin = 0,

        [Parameter(Mandatory=$false, 
                    ValueFromPipeline=$true,
                    ValueFromPipelineByPropertyName=$true, 
                    ParameterSetName='ParameterSet1')]
        $PrixMax = 9999999
    )
    
    if (-not $URI) {
        $URI = Get-LBCURI @PsBoundParameters
    }
    Write-Verbose ("URI : {0}" -f $URI)

    $htmlDoc = New-Object HtmlAgilityPack.HtmlDocument
    $HtmlBody = Get-LBCRawAnnonce -URI $URI
    $htmlDoc.LoadHtml($HtmlBody)
    
    $annonces = $htmlDoc.DocumentNode.SelectNodes('.//a[@class="clearfix trackable"]')

    Write-Verbose ("Annonces trouvées : {0}" -f $annonces.count)

    $(foreach ($Annonce in $Annonces)
    {
        ConvertTo-Obj -Annonce ($Annonce) | Where-Object { ($_.Prix -ge $PrixMin) -and ($_.Prix -le $PrixMax) }
    }) 
}