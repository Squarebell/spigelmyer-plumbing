# Downloads all site images from the old IONOS site into public/images/.
# Run once before taking the old site down:  .\scripts\download-images.ps1
# After download, the new site uses only local files — no live URLs needed.

$ErrorActionPreference = 'Continue'
$base = Join-Path (Split-Path $PSScriptRoot -Parent) 'public\images'

$downloads = @(
  # Logo
  @('http://www.spigelmyerplumbing.com/s/img/emotionheader.png?1538668179.940px.210px', 'logos\logo-header.png'),
  # Partner badges
  @('http://www.spigelmyerplumbing.com/s/cc_images/cache_4226576310.png?t=1538667542', 'partners\crown.png'),
  @('http://www.spigelmyerplumbing.com/s/cc_images/cache_4226576311.png?t=1538667542', 'partners\grohe.png'),
  @('http://www.spigelmyerplumbing.com/s/cc_images/cache_4226576312.png?t=1538667542', 'partners\navien.png'),
  @('http://www.spigelmyerplumbing.com/s/cc_images/cache_4226576313.png?t=1538667542', 'partners\rinnai.png'),
  @('http://www.spigelmyerplumbing.com/s/cc_images/cache_2745574604.png?t=1333039011', 'partners\water-commander.png'),
  # Extra home-page photos (saved to hero/, not shown in gallery)
  @('http://www.spigelmyerplumbing.com/s/cc_images/cache_3775743404.jpg?t=1357818575', 'hero\home-feature-01.jpg'),
  @('http://www.spigelmyerplumbing.com/s/cc_images/cache_3775743504.jpg?t=1357818575', 'hero\home-feature-02.jpg'),
  @('http://www.spigelmyerplumbing.com/s/cc_images/cache_3775743604.jpg?t=1357818575', 'hero\home-feature-03.jpg'),
  @('http://www.spigelmyerplumbing.com/s/cc_images/cache_3775743704.png?t=1357818575', 'hero\home-feature-04.png'),
  @('http://www.spigelmyerplumbing.com/s/cc_images/cache_3775743804.png?t=1357818575', 'hero\home-feature-05.png'),
  @('http://www.spigelmyerplumbing.com/s/cc_images/cache_3775743904.jpg?t=1357818575', 'hero\home-feature-06.jpg')
)

# Gallery page images (all project photos from old site)
$galleryUrls = @(
  'http://www.spigelmyerplumbing.com/s/cc_images/cache_2769487104.jpg?t=1333677982',
  'http://www.spigelmyerplumbing.com/s/cc_images/cache_2769487204.jpg?t=1333677982',
  'http://www.spigelmyerplumbing.com/s/cc_images/cache_2769487304.jpg?t=1333677982',
  'http://www.spigelmyerplumbing.com/s/cc_images/cache_2769487404.jpg?t=1333677982',
  'http://www.spigelmyerplumbing.com/s/cc_images/cache_2769487504.jpg?t=1333677982',
  'http://www.spigelmyerplumbing.com/s/cc_images/cache_2769487604.jpg?t=1333677982',
  'http://www.spigelmyerplumbing.com/s/cc_images/cache_2769487704.jpg?t=1333677982',
  'http://www.spigelmyerplumbing.com/s/cc_images/cache_2769487804.jpg?t=1333677982',
  'http://www.spigelmyerplumbing.com/s/cc_images/cache_2769487904.jpg?t=1333677982',
  'http://www.spigelmyerplumbing.com/s/cc_images/cache_2769488004.jpg?t=1333677982',
  'http://www.spigelmyerplumbing.com/s/cc_images/cache_2769488104.jpg?t=1333677982',
  'http://www.spigelmyerplumbing.com/s/cc_images/cache_2769488204.jpg?t=1333677982',
  'http://www.spigelmyerplumbing.com/s/cc_images/cache_2769488304.jpg?t=1333677982',
  'http://www.spigelmyerplumbing.com/s/cc_images/cache_2769488404.jpg?t=1333677982',
  'http://www.spigelmyerplumbing.com/s/cc_images/cache_2769488504.jpg?t=1333677982',
  'http://www.spigelmyerplumbing.com/s/cc_images/cache_2769336704.jpg?t=1333675873',
  'http://www.spigelmyerplumbing.com/s/cc_images/cache_2769336804.jpg?t=1333675873',
  'http://www.spigelmyerplumbing.com/s/cc_images/cache_2769336904.jpg?t=1333675874',
  'http://www.spigelmyerplumbing.com/s/cc_images/cache_2769337004.jpg?t=1333675874',
  'http://www.spigelmyerplumbing.com/s/cc_images/cache_2769337104.jpg?t=1333675874',
  'http://www.spigelmyerplumbing.com/s/cc_images/cache_2769337204.jpg?t=1333675874',
  'http://www.spigelmyerplumbing.com/s/cc_images/cache_2769337304.jpg?t=1333675874',
  'http://www.spigelmyerplumbing.com/s/cc_images/cache_2769337404.jpg?t=1333675874',
  'http://www.spigelmyerplumbing.com/s/cc_images/cache_2769337504.jpg?t=1333675874',
  'http://www.spigelmyerplumbing.com/s/cc_images/cache_2769337604.jpg?t=1333675874',
  'http://www.spigelmyerplumbing.com/s/cc_images/cache_2769337704.jpg?t=1333675874',
  'http://www.spigelmyerplumbing.com/s/cc_images/cache_2769337804.jpg?t=1333675874',
  'http://www.spigelmyerplumbing.com/s/cc_images/cache_2769337904.jpg?t=1333675874',
  'http://www.spigelmyerplumbing.com/s/cc_images/cache_2769338004.jpg?t=1333675874',
  'http://www.spigelmyerplumbing.com/s/cc_images/cache_2769338104.jpg?t=1333675874',
  'http://www.spigelmyerplumbing.com/s/cc_images/cache_2769338204.jpg?t=1333675874',
  'http://www.spigelmyerplumbing.com/s/cc_images/cache_2769338304.jpg?t=1333675874',
  'http://www.spigelmyerplumbing.com/s/cc_images/cache_2769338404.jpg?t=1333675874',
  'http://www.spigelmyerplumbing.com/s/cc_images/cache_2769338504.jpg?t=1333675874',
  'http://www.spigelmyerplumbing.com/s/cc_images/cache_2769338604.jpg?t=1333675874',
  'http://www.spigelmyerplumbing.com/s/cc_images/cache_2769338704.png?t=1333675874',
  'http://www.spigelmyerplumbing.com/s/cc_images/cache_2769338804.png?t=1333675874',
  'http://www.spigelmyerplumbing.com/s/cc_images/cache_2769338904.png?t=1333675874',
  'http://www.spigelmyerplumbing.com/s/cc_images/cache_2769339004.jpg?t=1333675874',
  'http://www.spigelmyerplumbing.com/s/cc_images/cache_2769339104.png?t=1333675874',
  'http://www.spigelmyerplumbing.com/s/cc_images/cache_2769339204.png?t=1333675874',
  'http://www.spigelmyerplumbing.com/s/cc_images/cache_2769339304.png?t=1333675874'
)

# Map gallery URLs to category folders (matches current site organization)
$galleryMap = @{
  'bathrooms'     = 0..17
  'kitchens'      = 18..23
  'laundry'       = 24..27
  'water-heaters' = 28..33
  'other'         = 34..43
}
$prefix = @{
  'bathrooms'     = 'bathroom'
  'kitchens'      = 'kitchen'
  'laundry'       = 'laundry'
  'water-heaters' = 'water-heater'
  'other'         = 'other'
}

# Ensure folders exist
@('logos', 'partners', 'hero', 'gallery\bathrooms', 'gallery\kitchens', 'gallery\laundry', 'gallery\water-heaters', 'gallery\other') | ForEach-Object {
  New-Item -ItemType Directory -Force -Path (Join-Path $base $_) | Out-Null
}

function Save-Url($url, $outPath) {
  $dir = Split-Path $outPath -Parent
  if (!(Test-Path $dir)) { New-Item -ItemType Directory -Force -Path $dir | Out-Null }
  try {
    Invoke-WebRequest -Uri $url -OutFile $outPath -UseBasicParsing
    Write-Host "OK  $outPath"
    return $true
  } catch {
    Write-Host "FAIL $url"
    return $false
  }
}

foreach ($item in $downloads) {
  Save-Url $item[0] (Join-Path $base $item[1]) | Out-Null
}

foreach ($cat in $galleryMap.Keys) {
  $i = 1
  foreach ($idx in $galleryMap[$cat]) {
    if ($idx -ge $galleryUrls.Count) { continue }
    $url = $galleryUrls[$idx]
    $ext = if ($url -match '\.(jpg|png|gif)') { $matches[1] } else { 'jpg' }
    $out = Join-Path $base "gallery\$cat\$($prefix[$cat])-{0:D2}.$ext" -f $i
    Save-Url $url $out | Out-Null
    $i++
  }
}

Copy-Item (Join-Path $base 'logos\logo-header.png') (Join-Path $base 'logo.png') -Force -ErrorAction SilentlyContinue
Write-Host "`nDone. All images saved under public/images/"
