Add-Type -AssemblyName System.Windows.Forms
Add-Type -AssemblyName System.Drawing

$savePath = Join-Path $env:USERPROFILE "Pictures\Screenshots"
if (-not (Test-Path $savePath)) {
    New-Item -ItemType Directory -Path $savePath | Out-Null
}
if ([System.Windows.Forms.Clipboard]::ContainsImage()) {
    $image = [System.Windows.Forms.Clipboard]::GetImage()
    $timestamp = Get-Date -Format "yyyy_MM_dd_HH-mm-ss"
    
    $format = $image.RawFormat
    $extension = if ($format.Equals([System.Drawing.Imaging.ImageFormat]::Jpeg)) { "jpg" }
                 elseif ($format.Equals([System.Drawing.Imaging.ImageFormat]::Png)) { "png" }
                 else { "png" }  
    $filePath = Join-Path $savePath "Snip_$timestamp.$extension"
    $image.Save($filePath, $format)
    Write-Output "Image saved to $filePath"
} else {
    Write-Output "No image"
}