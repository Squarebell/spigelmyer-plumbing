// @ts-check
import { defineConfig } from 'astro/config';

import tailwindcss from '@tailwindcss/vite';

// https://astro.build/config
const githubPages = process.env.GITHUB_PAGES === 'true';

export default defineConfig({
  site: githubPages ? 'https://squarebell.github.io' : 'https://www.spigelmyerplumbing.com',
  base: githubPages ? '/spigelmyer-plumbing' : '/',
  vite: {
    plugins: [tailwindcss()]
  }
});