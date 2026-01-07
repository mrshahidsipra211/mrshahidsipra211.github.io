$filePath = "c:\Users\Mr Shahid Sipra\Desktop\shahidtools-github-pages\assets\index-Cwge6CEp.js"
$bytes = [System.IO.File]::ReadAllBytes($filePath)
$content = [System.Text.Encoding]::UTF8.GetString($bytes)

# Remove emojis from WhatsApp messages using Unicode escape sequences
$content = $content -replace '\u{1F31F} \*Professional Inquiry - Shahid Tools\*', '*PROFESSIONAL INQUIRY - SHAHID TOOLS*'
$content = $content -replace '\u{1F4CB} \*Product Details:\*', '*Product Details:*'
$content = $content -replace '\u{1F4BC} \*Request:\*', '*Request:*'
$content = $content -replace '\u{1F4DE} \*Contact Information:\*', '*Contact Information:*'
$content = $content -replace '\u{1F310} Website:', '- Website:'
$content = $content -replace '\u{1F4E7} Email:', '- Email:'

$outBytes = [System.Text.Encoding]::UTF8.GetBytes($content)
[System.IO.File]::WriteAllBytes($filePath, $outBytes)

Write-Host "Done!"
