az appservice plan create --name tailspin-space-game-asp --resource-group tailspin-space-game-rg --sku B1 --is-linux

az webapp list-runtimes

$Random = Get-Random
$webappsuffix = $Random.ToString("0000")

az webapp create --name tailspin-space-game-web-dev-$webappsuffix --resource-group tailspin-space-game-rg --plan tailspin-space-game-asp --runtime "DOTNETCORE:6.0"

$Random = Get-Random
$webappsuffix = $Random.ToString("0000")
az webapp create --name tailspin-space-game-web-staging-$webappsuffix  --resource-group tailspin-space-game-rg --plan tailspin-space-game-asp --runtime "DOTNETCORE:6.0"