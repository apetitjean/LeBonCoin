function Invoke-HTMLStringCleanUp
{
    param ([String]$string)
    
    $string = $string -replace '&nbsp;',   ' '
    $string = $string -replace '&amp;',    '&'
    $string = $string -replace '&egrave;', 'è'
    $string = $string -replace '&eacute;', 'é'
    $string = $string -replace '&agrave;', 'à'
    $string = $string -replace '&euro;',   '€'
    $string = $string -replace '&#45;',    '-' 
    $string = $string -replace '&sup2;',   '²' 
    $string = $string -replace '&quot;',   '"' 
	$string = $string -replace '&ocirc;',  'ô' 
	$string = $string -replace '&acirc;',  'â' 
	$string = $string -replace '&icirc;',  'î'
    $string = $string -replace '&ucirc;',  'û' 
    $string = $string -replace '&#x27;',   "'"

    $string.Trim()
}