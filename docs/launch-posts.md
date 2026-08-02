# Tempo — community launch posts (draft, August 2026)

Post from your own account, in your own words — feel free to edit anything.
General rules that apply everywhere:
- **Reply to every comment for the first 24h.** The algorithm and the goodwill both live in the comments.
- Never argue with criticism — say "fair point, adding it to the list" and actually add it (send it to me).
- If a mod removes a post, don't repost; message them politely and ask what's allowed.
- Space the posts out — one community per day, not all in one hour (cross-post spam gets noticed).
- Read each subreddit's rules page the day you post; some require a specific weekday or flair for self-promo.

---

## 1. r/SideProject  (most welcoming — post here first)

**Title:**
I built a free time tracker that finds the hours you forgot to track — no account, no server, works offline

**Body:**
I kept losing billable hours the same way every freelancer does: forgot to start the timer, forgot to stop it, spent Friday reconstructing the week from memory.

So I built Tempo. The idea isn't the timer (every app has a timer) — it's the recovery:

- Your day is a ledger. Untracked stretches show up as visible gaps: "43-min gap — tap to fill."
- If you've been off the clock for a while, it offers to reconstruct the stretch, prefilled with the exact window.
- An end-of-day "Finish today" review takes ~30 seconds: confirm the gaps, name the unnamed entries, close the day.

Deliberate choices, because I got burned by the alternatives this year (Harvest's usage fees, Clockify paywalling CSV export):

- Free tracking forever — the paid tier will only ever be invoicing/billing extras
- No account, no signup — it's a PWA, your data lives in your browser/phone, never on a server
- Exporting your own hours will never cost money
- Works fully offline; installable on iOS/Android from the browser
- CSV import from Toggl / Clockify / Harvest if you're switching

Try it (sample week included so you can poke around without entering anything):
https://gorkyaitech.github.io/tempo/

Would genuinely love feedback — especially: does the "gap ledger" idea click for you, or is it confusing on first open?

---

## 2. r/freelance  (STRICT anti-promo rules — frame as a question, tool second)

⚠️ Check current rules first; many months they only allow tools in a weekly thread. If so, post this in that thread instead.

**Title:**
How do you deal with the hours you forget to track? (built a small free tool, but curious what your system is)

**Body:**
Every method I tried leaked hours: I forget to start timers when a client calls, I forget to stop them at lunch, and reconstructing Friday from memory always shortchanges me. From what I've read, most of us lose 10–20% of billables this way.

Curious what actually works for you all: end-of-day review ritual? calendar archaeology? just eating the loss?

For my part I ended up building a small free web app around the problem — the day shows as a ledger with the untracked gaps visible, and you repair them with a tap. No account, data stays on your device. Link if useful: https://gorkyaitech.github.io/tempo/ — but honestly I'm more interested in how you handle the forgetting problem, because software only half-solves it.

---

## 3. Indie Hackers  (product + numbers story angle)

**Title:**
Tempo: a $0-infrastructure freemium bet — free users literally cost me nothing

**Body:**
I'm building Tempo, a time tracker for freelancers with a twist: it finds the hours you forgot to track (gap ledger + day reconstruction + a 30-second daily close).

The business experiment I want to share is the architecture-as-strategy part:

- It's a PWA on GitHub Pages. All data is on-device. No accounts, no backend, no database.
- That means my marginal cost per free user is $0.00. Clockify/Toggl pay real server money for every free user; I don't. The freemium math changes completely when the free tier can't bleed you.
- The trust story writes itself: I *can't* hold your data hostage or leak it — there's no server to leak from. After a year of Harvest/MileIQ price-hike backlash, "structurally unable to betray you" is a real differentiator.
- Monetization (later): one flat Pro tier for invoicing features, probably via license keys — still no backend.

Live now, free: https://gorkyaitech.github.io/tempo/

Happy to share anything — the market research, the PWA trade-offs (no widgets/Live Activities until I wrap it native), or the SEO plan (calculators + honest comparison pages, the Clockify playbook aimed at a niche).

---

## 4. Hacker News — Show HN  (technical honesty, no marketing voice)

⚠️ HN hates hype. Short, factual, self-critical. Post morning US time, weekday.

**Title:**
Show HN: Tempo – offline-first time tracker that finds untracked gaps (no backend)

**Body (first comment, posted by you immediately after submitting):**
I built this after losing too many billable hours to forgotten timers.

The core idea: instead of only a timer, the day renders as a ledger where untracked time shows up as explicit gaps you can fill in one tap. There's a "reconstruct your day" prompt when a long untracked stretch ends at now, a weekly recovery inbox (gaps, unnamed entries, overlaps, unbilled work), and a 30-second end-of-day close.

Technical shape: single-page PWA, no backend at all — localStorage for data, service worker for offline, GitHub Pages for hosting. Free users cost me $0. Invoices render client-side to print/PDF. CSV import parses Toggl/Clockify/Harvest exports in the browser.

Known limitations I'm upfront about: no sync between devices (on-device is the point, but it's still a limitation), no widgets/Watch until I wrap it natively, and automatic location-based tracking is deliberately absent for now (researched it: geofencing + significant-location-change is feasible at ±2–5 min accuracy, but it needs a native app and careful privacy design).

https://gorkyaitech.github.io/tempo/

---

## 5. r/productivity  (problem-first, tool mentioned once)

**Title:**
The "forgot to track" problem is worse than the tracking problem

**Body:**
Realization after years of time-tracking attempts: the apps all assume you'll remember to press the button. The actual failure mode is forgetting — and then either losing the record or fabricating it later from memory (badly).

What's been working for me is flipping the model: track what you can in the moment, then do a 30-second end-of-day repair pass over a visual ledger of the day, where every untracked stretch is a visible gap. Repairing 2 gaps a day beats pretending I'll have perfect discipline.

I built a free little app around this workflow (no account, on-device, works offline) if anyone wants to try the approach: https://gorkyaitech.github.io/tempo/ — but the ritual matters more than the tool: same-day repair, because tomorrow you're writing fiction.

---

## Posting order & cadence

| Day | Where | Why this order |
|---|---|---|
| Day 1 | r/SideProject | Friendliest, tests the pitch, collects first feedback |
| Day 2 | Indie Hackers | Slow burn, evergreen |
| Day 3–4 | r/productivity | Broad audience, problem-first framing |
| Day 5+ | Show HN | Post AFTER the first-round feedback is fixed — HN finds every bug |
| When rules allow | r/freelance | Highest-intent audience, strictest rules — worth the wait |

After each post: send me the comment feedback and I'll turn the legitimate asks into fixes the same day — nothing converts skeptics like "fixed, refresh the page."
