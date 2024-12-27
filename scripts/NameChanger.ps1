
Param(
    [Parameter(Mandatory=$True,Position=0)]
    [string]$Path,
    [Parameter(Mandatory=$True,Position=1)]
    [string]$NewName,
    [Parameter(Mandatory=$True,Position=2)]
    [ValidateRange(2, 4)]
    [int]$numDigits,
    [Parameter(Mandatory=$True,Position=3)]
    [int]$Start,
    [Parameter(Mandatory=$True,Position=4)]
    [string]$Extension
    )

if(Test-Path $Path)
{
   Switch($numDigits)
   {
     2 {$format = "{0:00}"; break}
     3 {$format = "{0:000}"; break}
     4 {$format = "{0:0000}"; break}
   }

   Get-ChildItem $Path | % {
    $valor = $format -f $Start
    Rename-Item -LiteralPath $_.FullName -NewName "$NewName - $valor.$Extension"
    $Start = $Start + 1
    }

   Write-Host "Path: $Path"
   Pause
   exit 0
}
exit 1
