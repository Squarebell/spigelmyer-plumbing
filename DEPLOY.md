# Deploy to Cloudflare Pages

## Option A: Wrangler CLI (manual deploy)

1. Create a Cloudflare API token at [dash.cloudflare.com/profile/api-tokens](https://dash.cloudflare.com/profile/api-tokens)
   - Use the **Edit Cloudflare Workers** template (includes Pages deploy permissions)

2. Set the token in your environment:
   ```powershell
   $env:CLOUDFLARE_API_TOKEN = "your-token-here"
   ```

3. Deploy:
   ```powershell
   npm run deploy
   ```

4. Your preview URL will be shown in the output, e.g. `https://spigelmyer-plumbing.pages.dev`

## Option B: Git-connected deploy (recommended for ongoing updates)

1. Push this repo to GitHub
2. In Cloudflare Dashboard → **Workers & Pages** → **Create** → **Pages** → **Connect to Git**
3. Select the repo and configure:
   - **Build command:** `npm run build`
   - **Build output directory:** `dist`
   - **Node.js version:** 22

4. Add environment variable:
   - `PUBLIC_WEB3FORMS_ACCESS_KEY` = your Web3Forms key

## After deploy

- Set `PUBLIC_WEB3FORMS_ACCESS_KEY` in Pages → Settings → Environment variables
- Follow [DOMAIN-TRANSFER.md](./DOMAIN-TRANSFER.md) to move the domain from IONOS
