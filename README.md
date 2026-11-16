# Spigelmyer Plumbing & Heating
Astro website with Tailwind CSS. Business content lives in src/data/content.ts, sections in src/components, and shared styles in src/styles/global.css.

## Development
Use Node.js 22.12 or newer. Install with npm ci.
Start with npm run dev -- --background.
Manage with npm run astro -- dev status, npm run astro -- dev logs, and npm run astro -- dev stop.

## Production
Run npm run build. Generated pages are in dist.
Copy .env.example to .env and set PUBLIC_WEB3FORMS_ACCESS_KEY to enable forms. Verify receipt of both contact and quote emails before launch.

## GitHub
Commit source, configuration, public assets, and package-lock.json. Environment files, dependencies, and generated output are ignored.
See DEPLOY.md and DOMAIN-TRANSFER.md for hosting and migration instructions.
