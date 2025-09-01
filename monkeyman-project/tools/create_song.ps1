param(
    [Parameter(Mandatory=$true)]
    [string]$SongName
)

$base = Join-Path -Path (Get-Location) -ChildPath "monkeyman-project\songs\$SongName"
if (-not (Test-Path $base)) {
    New-Item -ItemType Directory -Path $base -Force | Out-Null
}

# Create chords.md and melody.md if they don't exist
$chords = Join-Path $base "chords.md"
$melody = Join-Path $base "melody.md"

if (-not (Test-Path $chords)) {
    @"
# $SongName — Chords

Add chord progression and analysis here.
"@ | Out-File -FilePath $chords -Encoding utf8
}

if (-not (Test-Path $melody)) {
    @"
# $SongName — Melody

Add melody motifs and licks here.
"@ | Out-File -FilePath $melody -Encoding utf8
}

Write-Host "Created song folder: $base"