# LeBonCoin
Ce module PowerShell permet de récupérer les petites annonces du site LeBonCoin.fr

## Utilisation

Exemple 1:
```PowerShell
# Génération de l'URI en fonction des critères de l'utilisateur
# Retourne une URI qu'il suffit de copier/coller dans le navigateur pour vérifier qu'elle fonctionne correctement

$URI = Get-LBCURI -MotsCles 'ampli guitare' -Categorie instruments_de_musique  -ParticuliersOuPros Tous -Region Ile-De-France -PrixMax 250
$URI

# Copie dans le presse-papier
$URI | Clip
```

Exemple 2:
```PowerShell
# Récupération des annonces à partir du site LeBonCoin

Get-LBCAnnonce -MotsCles 'ampli guitare' -Categorie instruments_de_musique  -ParticuliersOuPros Tous -Region Ile-De-France -PrixMax 250
```

Exemple 3 : Utilisation d'une hashtable pour plus de commodité d'utilisation
```PowerShell
$mySearch = @{
    MotsCles = 'Ampli guitare'
    Categorie = 'instruments_de_musique'
    TitreUniquement = $true
    ParticuliersOuPros = 'Tous'
    prixMin = 100
    prixMax = 300
    Region = 'Ile-De-France'
}
Get-LBCAnnonce @mySearch
```

Exemple 4 : Récupération d'informations détaillées sur une annonce en particulier
La commande Get-LBCAnnonce retourne l'id des annonces. Cet id doit être spécifié ici pour récupérer les détails d'une annonce en particulier.
```PowerShell
Get-LBCDetailedAnnonce -idAnnonce 1679394780

# Exemple de résultat :


list_id                : 1679394780
first_publication_date : 2019-09-22 22:59:00
expiration_date        : 2019-11-21 22:59:00
index_date             : 2019-10-10 20:08:42
status                 : active
category_id            : 30
category_name          : Instruments de musique
subject                : Ampli guitare Vox AC 4 TV très bon état
body                   : Très bon état, a très peu servi.
                         Une petite marque que j'ai prise en photo, c'est tout ce qu'il y a à dire, il n'est pas sorti de chez moi.
                         
                         Remise en mains propre uniquement
ad_type                : offer
url                    : https://www.leboncoin.fr/instruments_de_musique/1679394780.htm
price                  : {240}
price_calendar         : 
images                 : @{thumb_url=https://img7.leboncoin.fr/ad-thumb/dec75387ac6abffe3f0a1d667c64b4b5ce9c742b.jpg; small_url=https://img7.leboncoin.fr/ad-small/dec75387ac6abffe3f0a1d667c64b4b5ce9c742b.jpg; nb_images=3; urls=System.Object[]; urls_thumb=System.Object[]; urls_large=System.Object[]}
attributes             : {@{key=is_import; value=false; value_label=false; generic=False}, @{key=lease_type; value=sell; value_label=sell; generic=False}, @{key=item_condition; value=2; key_label=├ëtat; value_label=Tr├¿s bon ├⌐tat; generic=True}}
location               : @{region_id=12; region_name=Ile-de-France; department_id=75; department_name=Paris; city_label=Paris 75013; city=Paris; zipcode=75013; lat=48,83217; lng=2,35511; source=address; provider=here; is_shape=False}
owner                  : @{store_id=6501456; user_id=9e1e1841-2e2b-4560-845b-7e4fa61178c9; type=private; name=Cyrillll; no_salesmen=True}
options                : @{has_option=False; booster=False; photosup=False; urgent=False; gallery=False; sub_toplist=False}
has_phone              : True
```
