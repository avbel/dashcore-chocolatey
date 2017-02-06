$ErrorActionPreference = 'Stop';

$version    = '0.12.1.0'
$packageName= 'dashcore'
$toolsDir   = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url        = "https://github.com/dashpay/dash/releases/download/v$($version)/dash-$($version)-win32-setup.exe"
$url64      = "https://github.com/dashpay/dash/releases/download/v$($version)/dash-$($version)-win64-setup.exe"
$checksum   = '2980b0ec4dfef414ef58dc0d8d6eb0bd01c182bfef88692d1dff83d6926c183f'
$checksum64 = 'f8988703f55a0a5e9f6286b0f25fdf51b792a7f08d6aaafe64e26ec0c4747dbe'

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
