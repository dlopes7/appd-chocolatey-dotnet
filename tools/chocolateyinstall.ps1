
$ErrorActionPreference = 'Stop';

$url        = 'https://download-files.appdynamics.com/download-file/dotnet/4.5.4.0/dotNetAgentSetup-4.5.4.0.msi'
$url64      = 'https://download-files.appdynamics.com/download-file/dotnet/4.5.4.0/dotNetAgentSetup64-4.5.4.0.msi'

$packageArgs = @{
  packageName   = $env:ChocolateyPackageName
  fileType      = 'msi'
  url           = $url
  url64bit      = $url64

  softwareName  = 'AppDynamics .NET Agent'

  checksum      = '9ba5304dfd3659190dbf08e5196fe522fe0193571e3c6664c9cd496c7ca49862'
  checksumType  = 'sha256'
  checksum64    = '72682c00244d47c641745dcce901823e871ff12da53aee69e1f0afec4ef9098d'
  checksumType64= 'sha256'

  silentArgs    = "/qn /norestart /l*v `"$($env:TEMP)\$($packageName).$($env:chocolateyPackageVersion).MsiInstall.log`"  AD_SetupFile=C:\appd\install-config.xml"
  validExitCodes= @(0, 3010, 1641)
}

Install-ChocolateyPackage @packageArgs










    








