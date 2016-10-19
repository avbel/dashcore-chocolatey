$ErrorActionPreference = 'Stop';

$version    = '0.12.0.58'
$packageName= 'dashcore'
$toolsDir   = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url        = "https://github.com/dashpay/dash/releases/download/v$($version)/dash-$($version)-win32-setup.exe"
$url64      = "https://github.com/dashpay/dash/releases/download/v$($version)/dash-$($version)-win64-setup.exe"
$checksum   = '8d5985275b78e09d527a306fcecca86390b7e1c9777ab57e8f89adfbce528464'
$checksum64 = '30571c0e8bb7e9a700e1ed42542f7521253d9131519dca3cdc4252b7273be0f3'

$packageArgs = @{
  packageName   = $packageName
  unzipLocation = $toolsDir
  fileType      = 'exe'
  url           = $url
  url64bit      = $url64

  softwareName  = 'Dash Core*'

  checksum      = $checksum
  checksumType  = 'sha256'
  checksum64    = $checksum64
  checksumType64= 'sha256'

  silentArgs   = '/S'
  validExitCodes= @(0)
}

Install-ChocolateyPackage @packageArgs
