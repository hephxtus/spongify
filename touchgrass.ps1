Param (
	[Parameter(Mandatory=$True, Position=1)]
	[string]$To_Invert
    )

$isup = $True
$new_string = ""
foreach ($x in $To_Invert.ToCharArray()) {
    if($isup) {
        $new_string = $new_string + "$x".toupper()

    }
    
    else {
        $new_string = $new_string + "$x".tolower()
    }
}

Write-Output $new_string

