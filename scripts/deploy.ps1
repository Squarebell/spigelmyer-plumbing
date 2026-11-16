npm run build
if ($LASTEXITCODE -ne 0) { exit $LASTEXITCODE }
npx wrangler pages deploy dist --project-name=spigelmyer-plumbing --branch=main
