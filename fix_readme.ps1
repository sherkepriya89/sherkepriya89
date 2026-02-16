$content = Get-Content 'c:\Users\PSherke\sherkepriya89\README.md' -Raw
$content = $content -replace '^\s*```markdown\s*', '' -replace '\s*```\s*$', ''
$content | Out-File 'c:\Users\PSherke\sherkepriya89\README_fixed.md' -Encoding UTF8 -NoNewline
Move-Item 'c:\Users\PSherke\sherkepriya89\README_fixed.md' 'c:\Users\PSherke\sherkepriya89\README.md' -Force
