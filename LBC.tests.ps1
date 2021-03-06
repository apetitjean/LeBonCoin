$here = Split-Path -Path (Split-Path -Parent $MyInvocation.MyCommand.Path) -Parent
Import-Module "$here\MPARoot\MPARoot.psm1" -DisableNameChecking -Force
Import-Module "$PSScriptRoot\LBC.psm1" -force

Describe 'Testing module LBC with iPhones' -Tag 'LBC_iphone' {
   InModuleScope LBC {

      Mock Load-LBCRawAnnonce -ModuleName LBC -Verifiable {
         # Generated with :
         #    $r = Invoke-WebRequest -Uri $URI -UseBasicParsing
         #    $r.Content | Out-File .\LBC_iphone_aquitaine.raw2

         $file = "C:\Users\Arnaud\Documents\GitRepo\MesPetitesAlertes\Tests\LBC_iphone_aquitaine.raw3"
         $htmlWeb = New-Object HtmlAgilityPack.HtmlWeb
         $htmlWeb.OverrideEncoding = [System.text.encoding]::Default
         $htmlWeb.UserAgent = 'Mozilla/5.0 (Windows; U; Windows NT 6.1; fr; rv:1.9.2) Gecko/20100115 Firefox/3.6'
         $htmlWeb.Load($file)      
      } 

      $criteres = @{
         MotsCles           = $null
         Categorie          = 'Téléphonie'
         Region             = 'Aquitaine'
         ParticuliersOuPros = 'Tous'
         PrixMin            = 0
         PrixMax            = [int]::MaxValue
      }


      Context 'Get-LBCAnnonce - ParameterSet 1' {
        # $here = Split-Path -Parent $MyInvocation.MyCommand.Path
         It 'Should return more than one ad' {
            
            (Get-LBCAnnonce @criteres).count | Should BeGreaterThan 0
         }
         It 'Should call Mock Load-LBCRawAnnonce' {
               Assert-VerifiableMocks 
         }
      }

      Context 'ConvertTo-Obj' {

         BeforeAll {
             $web = Load-LBCRawAnnonce
             $annonces  = $web.DocumentNode.SelectNodes('//section[@class="tabsContent block-white dontSwitch"]/ul/li')
         }

         It 'Should return a PSCustomObject' {
            (ConvertTo-Obj -annonce $annonces[0]) | Should BeOfType [PSCustomObject]
           # $host.EnterNestedPrompt()
         }
         It 'Should have a "Date" property that is a [DateTime]' {
            (ConvertTo-Obj -annonce $annonces[0]).Date | Should BeofType [DateTime]
         }
         It 'Should have a "Titre" property that is a [String]' {
            (ConvertTo-Obj -annonce $annonces[0]).Titre | Should BeofType [String]
         }
         It 'Should have a "Prix" property that is a [Int]' {
            (ConvertTo-Obj -annonce $annonces[0]).Prix | Should BeofType [Int]
         }
         It 'Should have a "Image" property that is a [String]' {
            (ConvertTo-Obj -annonce $annonces[0]).Image | Should BeofType [String]
         }
         It 'Should have a "Emplacement" property that is a [String]' {
            (ConvertTo-Obj -annonce $annonces[0]).Emplacement | Should BeofType [String]
         }
         It 'Should not have more than 1 slash in the "Emplacement" property' {
            ((ConvertTo-Obj -annonce $annonces[0]).Emplacement.ToCharArray() -like '/').count | Should BeLessThan 2
         }         
         It 'Should have a "Category" property that is Null' {
            (ConvertTo-Obj -annonce $annonces[0]).Category | Should Be $Null
         }
         It 'Should have a "Lien" property that is a [String]' {
            (ConvertTo-Obj -annonce $annonces[0]).Lien | Should BeofType [String]
         }
         It 'Should have a "Lien" that starts with "http://www.leboncoin.fr/"' {
            (ConvertTo-Obj -annonce $annonces[0]).Lien | Should BeLike "http://www.leboncoin.fr/*"
         }         
         It 'Should have a "ProOuPart" property that is a [String]' {
            (ConvertTo-Obj -annonce $annonces[0]).ProOuPart | Should BeofType [String]
         }
         It 'Should have a "isUrgent" property that is a [Boolean]' {
            (ConvertTo-Obj -annonce $annonces[0]).isUrgent | Should BeofType [Boolean]
         }         
         It 'Should have a "Site" property that is a [String]' {
            (ConvertTo-Obj -annonce $annonces[0]).Site | Should BeofType [String]
         }         
      }

      Context 'ConvertFrom-LBCDate' {

         it "Should convert 'Aujourd'hui, 7:02' to [Datetime]" {
            $LBCDate = "Aujourd'hui, 7:02"
            $convertedDate = ConvertFrom-LBCDate -DateLBC $LBCDate
            $convertedDate | Should BeOfType [DateTime]
         }

          it "Should convert 'Hier, 08:24' to [Datetime]" {
            $LBCDate = 'Hier, 08:24'
            $convertedDate = ConvertFrom-LBCDate -DateLBC $LBCDate
            $convertedDate | Should BeofType [DateTime]
         }

         it "Should convert '15 jan, 12:51' to [Datetime]" {
            $LBCDate = '15 jan, 12:51'
            $convertedDate = ConvertFrom-LBCDate -DateLBC $LBCDate
            $convertedDate | Should BeOfType [DateTime]
         }

         it "Should convert '15 fév, 12:51' to [Datetime]" {
            $LBCDate = '15 fév, 12:51'
            $convertedDate = ConvertFrom-LBCDate -DateLBC $LBCDate
            $convertedDate | Should BeOfType [DateTime]
         }

         it "Should convert '15 mars, 12:51' to [Datetime]" {
            $LBCDate = '15 mars, 12:51'
            $convertedDate = ConvertFrom-LBCDate -DateLBC $LBCDate
            $convertedDate | Should BeOfType [DateTime]
         }

         it "Should convert '15 avril, 12:51' to [Datetime]" {
            $LBCDate = '15 avril, 12:51'
            $convertedDate = ConvertFrom-LBCDate -DateLBC $LBCDate
            $convertedDate | Should BeOfType [DateTime]
         }         

         it "Should convert '15 mai, 12:51' to [Datetime]" {
            $LBCDate = '15 mai, 12:51'
            $convertedDate = ConvertFrom-LBCDate -DateLBC $LBCDate
            $convertedDate | Should BeOfType [DateTime]
         }         

         it "Should convert '15 juin, 12:51' to [Datetime]" {
            $LBCDate = '15 juin, 12:51'
            $convertedDate = ConvertFrom-LBCDate -DateLBC $LBCDate
            $convertedDate | Should BeOfType [DateTime]
         }         

         it "Should convert '15 juillet, 12:51' to [Datetime]" {
            $LBCDate = '15 juillet, 12:51'
            $convertedDate = ConvertFrom-LBCDate -DateLBC $LBCDate
            $convertedDate | Should BeOfType [DateTime]
         }

         it "Should convert '15 août, 12:51' to [Datetime]" {
            $LBCDate = '15 août, 12:51'
            $convertedDate = ConvertFrom-LBCDate -DateLBC $LBCDate
            $convertedDate | Should BeOfType [DateTime]
         }

         it "Should convert '15 sept, 12:51' to [Datetime]" {
            $LBCDate = '15 sept, 12:51'
            $convertedDate = ConvertFrom-LBCDate -DateLBC $LBCDate
            $convertedDate | Should BeOfType [DateTime]
         }

         it "Should convert '15 oct, 12:51' to [Datetime]" {
            $LBCDate = '15 oct, 12:51'
            $convertedDate = ConvertFrom-LBCDate -DateLBC $LBCDate
            $convertedDate | Should BeOfType [DateTime]
         }

         it "Should convert '15 nov, 12:51' to [Datetime]" {
            $LBCDate = '15 nov, 12:51'
            $convertedDate = ConvertFrom-LBCDate -DateLBC $LBCDate
            $convertedDate | Should BeOfType [DateTime]
         }

         it "Should convert '15 déc, 12:51' to [Datetime]" {
            $LBCDate = '15 déc, 12:51'
            $convertedDate = ConvertFrom-LBCDate -DateLBC $LBCDate
            $convertedDate | Should BeOfType [DateTime]
         }                           
     }
   }
}

Describe 'Testing module LBC with Locations Andernos' -Tag 'LBC_location' {
   InModuleScope LBC {

      Mock Load-LBCRawAnnonce -ModuleName LBC -Verifiable {
         # Generated with :
         #    $r = Invoke-WebRequest -Uri $URI -UseBasicParsing
         #    $r.Content | Out-File .\LBC_iphone_aquitaine.raw2

         $file = "C:\Users\Arnaud\Documents\GitRepo\MesPetitesAlertes\Tests\LBC_locations_andernos.raw"
         $htmlWeb = New-Object HtmlAgilityPack.HtmlWeb
         $htmlWeb.OverrideEncoding = [System.text.encoding]::Default
         $htmlWeb.UserAgent = 'Mozilla/5.0 (Windows; U; Windows NT 6.1; fr; rv:1.9.2) Gecko/20100115 Firefox/3.6'
         $htmlWeb.Load($file)      
      } 

      $criteres = @{
         MotsCles           = $null
         Categorie          = 'Locations'
         Region             = 'Aquitaine'
         ParticuliersOuPros = 'Tous'
         PrixMin            = 0
         PrixMax            = [int]::MaxValue
      }


      Context 'Get-LBCAnnonce - ParameterSet 1' {
        # $here = Split-Path -Parent $MyInvocation.MyCommand.Path
         It 'Should return more than one ad' {
            (Get-LBCAnnonce @criteres).count | Should BeGreaterThan 0
         }
         It 'Should call Mock Load-LBCRawAnnonce' {
               Assert-VerifiableMocks 
         }
      }

      Context 'ConvertTo-Obj' {

         BeforeAll {
             $web = Load-LBCRawAnnonce
             $annonces  = $web.DocumentNode.SelectNodes('//section[@class="tabsContent block-white dontSwitch"]/ul/li')
         }

         It 'Should return a PSCustomObject' {
            (ConvertTo-Obj -annonce $annonces[0]) | Should BeOfType [PSCustomObject]
            $host.EnterNestedPrompt()
         }
         It 'Should have a "Date" property that is a [DateTime]' {
            (ConvertTo-Obj -annonce $annonces[0]).Date | Should BeofType [DateTime]
         }
         It 'Should have a "Titre" property that is a [String]' {
            (ConvertTo-Obj -annonce $annonces[0]).Titre | Should BeofType [String]
         }
         It 'Should have a "Prix" property that is a [Int]' {
            (ConvertTo-Obj -annonce $annonces[0]).Prix | Should BeofType [Int]
         }
         It 'Should have a "Image" property that is a [String]' {
            (ConvertTo-Obj -annonce $annonces[0]).Image | Should BeofType [String]
         }
         It 'Should have a "Emplacement" property that is a [String]' {
            (ConvertTo-Obj -annonce $annonces[0]).Emplacement | Should BeofType [String]
         }
         It 'Should not have more than 1 slash in the "Emplacement" property' {
            ((ConvertTo-Obj -annonce $annonces[0]).Emplacement.ToCharArray() -like '/').count | Should BeLessThan 2
         }         
         It 'Should have a "Category" property that is Null' {
            (ConvertTo-Obj -annonce $annonces[0]).Category | Should Be $Null
         }
         It 'Should have a "Lien" property that is a [String]' {
            (ConvertTo-Obj -annonce $annonces[0]).Lien | Should BeofType [String]
         }
         It 'Should have a "Lien" that starts with "http://www.leboncoin.fr/"' {
            (ConvertTo-Obj -annonce $annonces[0]).Lien | Should BeLike "http://www.leboncoin.fr/*"
         }         
         It 'Should have a "ProOuPart" property that is a [String]' {
            (ConvertTo-Obj -annonce $annonces[0]).ProOuPart | Should BeofType [String]
         }
         It 'Should have a "isUrgent" property that is a [Boolean]' {
            (ConvertTo-Obj -annonce $annonces[0]).isUrgent | Should BeofType [Boolean]
         }         
         It 'Should have a "Site" property that is a [String]' {
            (ConvertTo-Obj -annonce $annonces[0]).Site | Should BeofType [String]
         }         
      }

   }
}