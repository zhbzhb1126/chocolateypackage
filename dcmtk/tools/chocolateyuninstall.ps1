$packageName = 'dcmtk'

$zipFileName = 'dcmtk-3.6.5-win32-dynamic.zip'
$zipFileName64 = 'dcmtk-3.6.5-win64-dynamic.zip'
$os = Get-WmiObject -Class Win32_OperatingSystem;

# Only necessary if you did not unpack to package directory - see https://chocolatey.org/docs/helpers-uninstall-chocolatey-zip-package
if ($os.OSarchitecture.Contains("64")) {
  Uninstall-ChocolateyZipPackage -PackageName $packageName -ZipFileName $zipFileName64
} else {
  Uninstall-ChocolateyZipPackage -PackageName $packageName -ZipFileName $zipFileName
}
