# Domain Transfer Guide: IONOS → Cloudflare

Follow these steps **after** reviewing the new site on its Cloudflare Pages preview URL.

## Prerequisites

- [ ] New site deployed and approved on `*.pages.dev`
- [ ] Cloudflare account created at [dash.cloudflare.com](https://dash.cloudflare.com)
- [ ] Web3Forms access key configured in Cloudflare Pages environment variables

---

## Step 1: Add the domain to Cloudflare

1. Log in to [Cloudflare Dashboard](https://dash.cloudflare.com)
2. Click **Add a site** and enter `spigelmyerplumbing.com`
3. Select the **Free** plan
4. Cloudflare will scan existing DNS records — review and continue

> You can add the site before transfer begins. This prepares DNS without affecting the live site until nameservers change.

---

## Step 2: Unlock domain at IONOS

1. Log in to [IONOS](https://www.ionos.com)
2. Go to **Domains & SSL** → select `spigelmyerplumbing.com`
3. Disable **Domain Guard / Transfer Lock**
4. Click **Request Auth Code** (also called EPP code or transfer key)
5. Copy the auth code — you'll need it in Step 3
6. Verify the admin/registrant email on the domain is accessible (transfer approval email goes there)

---

## Step 3: Initiate transfer in Cloudflare Registrar

1. In Cloudflare Dashboard, go to **Domain Registration** → **Transfer Domains**
2. Enter `spigelmyerplumbing.com` and the auth code from IONOS
3. Complete checkout (~$10–12 for 1 year — transfer adds time to existing expiry)
4. Approve the transfer confirmation email when it arrives
5. Transfer typically completes in **1–7 days** (often 24–48 hours)

---

## Step 4: Attach custom domain to Cloudflare Pages

Once the transfer completes:

1. Go to **Workers & Pages** → **spigelmyer-plumbing** project
2. Click **Custom domains** → **Set up a custom domain**
3. Enter `spigelmyerplumbing.com` and `www.spigelmyerplumbing.com`
4. Cloudflare auto-configures DNS and SSL — wait for **Active** status (usually minutes)

---

## Step 5: Cancel IONOS hosting

**Wait until the domain transfer is complete** before canceling IONOS services:

1. Confirm `spigelmyerplumbing.com` shows in Cloudflare Registrar as **Active**
2. Verify the new site loads at `https://www.spigelmyerplumbing.com`
3. Cancel IONOS **website hosting** (the MyWebsite builder plan)
4. Do **not** renew IONOS domain registration — Cloudflare now handles renewal

---

## Environment variables (Cloudflare Pages)

Set these in **Workers & Pages → spigelmyer-plumbing → Settings → Environment variables**:

| Variable | Value |
|----------|-------|
| `PUBLIC_WEB3FORMS_ACCESS_KEY` | Your key from [web3forms.com](https://web3forms.com) (sign up with spigelmyer@gmail.com) |

After adding the variable, trigger a new deployment for forms to work.

---

## Web3Forms setup (one-time)

1. Go to [web3forms.com](https://web3forms.com)
2. Enter `spigelmyer@gmail.com` and create an access key
3. Copy the access key into the Cloudflare environment variable above
4. Test both the Contact and Quote forms on the live site

---

## Troubleshooting

| Issue | Fix |
|-------|-----|
| Site shows old IONOS page | DNS still pointing to IONOS — wait for transfer or check nameservers |
| Forms don't send email | Verify `PUBLIC_WEB3FORMS_ACCESS_KEY` is set and redeploy |
| `www` vs non-`www` | Add both domains in Pages custom domains settings |
| Transfer rejected | Re-check auth code, ensure domain is unlocked, confirm admin email |

---

## Order of operations (summary)

```
1. Deploy new site to Pages preview URL  ✓
2. Review site on phone + desktop
3. Set up Web3Forms key
4. Add domain to Cloudflare
5. Unlock domain at IONOS + get auth code
6. Initiate Cloudflare Registrar transfer
7. Approve transfer email
8. Attach custom domain to Pages project
9. Test live site (forms, phone links, redirects)
10. Cancel IONOS hosting
```
