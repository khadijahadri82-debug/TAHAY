# ==========================================
# T-STYLE BLACK EDITION - SETUP PRO V1.0
# ==========================================

Write-Host ""
Write-Host "Creating T-STYLE Project..."
Write-Host ""

# Root folders
$folders = @(
"css",
"js",
"assets",
"assets/images",
"assets/videos",
"assets/icons",
"assets/fonts",
"pages"
)

foreach ($folder in $folders) {
    New-Item -ItemType Directory -Force -Path $folder | Out-Null
}

# Files
$files = @(
"index.html",

"css/variables.css",
"css/style.css",
"css/header.css",
"css/hero.css",
"css/sections.css",
"css/footer.css",
"css/animations.css",
"css/responsive.css",

"js/app.js",
"js/search.js",
"js/cart.js",
"js/wishlist.js",
"js/darkmode.js",
"js/animation.js",

"pages/homme.html",
"pages/femme.html",
"pages/chaussures.html",
"pages/accessoires.html",
"pages/contact.html",
"pages/login.html",
"pages/cart.html",
"pages/checkout.html",
"pages/dashboard.html",

"README.md"
)

foreach ($file in $files) {
    if (!(Test-Path $file)) {
        New-Item -ItemType File -Path $file | Out-Null
    }
}

Write-Host ""
Write-Host "==========================================="
Write-Host "     T-STYLE BLACK EDITION READY"
Write-Host "==========================================="
Write-Host ""
Write-Host "Folders and files created successfully!"
Write-Host ""