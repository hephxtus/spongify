Param (
	[Parameter(Mandatory=$True, Position=1)]
	[string]$To_Invert,
    
    [switch]$Switch = $false
)
$isup = $True
$new_string = $To_Invert.ToCharArray()
foreach ($x in $new_string) {
    $i = $To_Invert.IndexOf($x)
    if($x -notlike " ") {
        if($isup){
            $new_string[$i] = "$x".toupper()

        }
        else{
            $new_string[$i] = "$x".tolower()
        }
        $isup = !$isup
    }
    
}
$new_string = -join $new_string
Write-Output $new_string

