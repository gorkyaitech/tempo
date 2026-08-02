# Tempo — Market Research Report
### Freemium time tracking, work reconstruction, timesheets & billing
**Research date:** August 2026 · **Status:** Complete — all 18 sections

**Evidence tiers used throughout:**
- **[F]** Confirmed fact (source linked)
- **[R]** Pattern supported by multiple reviews/community posts
- **[I]** Reasonable inference from evidence
- **[H]** Product hypothesis still needing validation

## Methodology

Desk research only (no user outreach at this stage), across: official pricing pages, Apple App Store / Google Play listings and review aggregators (justuseapp, Capterra, G2, GetApp), Reddit (r/freelance, r/smallbusiness, r/productivity), comparison blogs, SEO case studies, and Apple/Google developer documentation.

**Deep sample** (full profiles): Clockify, Toggl Track, Harvest, Timely, Memtime, My Hours, HoursTracker, ATracker, QuickBooks Time, Hubstaff, Timeero, ClockShark, MileIQ, Everlance, FreshBooks, Bonsai.
**Light sample** (category coverage): TimeCamp, Everhour, TrackingTime, Rize, RescueTime, Jibble, Connecteam, When I Work, Buddy Punch, Deputy, TripLog, Driversnote, Zoho Invoice, Indy.

This is a systematic sample of the five relevant categories (general tracking, freelancer/invoicing, team timesheets, field/GPS, mileage), not a census of every app. Conclusions are bounded accordingly.

---

## 1. Executive decision

**Is this commercially credible? Yes — narrowed.** Not as "another timer" (saturated, free-dominated), but as the **mobile-first work-recovery + clean-billing app for individual freelancers**, positioned on trust/pricing stability at the exact moment the incumbents are burning theirs.

**Is $10k MRR achievable?** Yes, with a base case of **18–30 months** (§12): ~1,500 payers at $7.99 → ~74k MAU at 2% conversion, driven by the recovery-keyword SEO cluster + free tools + switcher comparison pages. Not achievable on product quality alone; the content engine is half the company.

**What must be true:** (1) the forgotten-time pain converts at ≥2% when the product demonstrably recovers hours; (2) recovery suggestions earn trust (proposals, never facts — the correction rate must be low enough to feel magical, not naggy); (3) the free tier stays genuinely useful so word-of-mouth compounds; (4) execution reliability beats the category's chronic sync/data-loss failures (Tempo's local-first design is the head start).

**Strongest version of the concept:** TRACK → RECOVER → CLEAN → BILL for one person, on a phone, private by default, hours never lost or held hostage, free tracking forever, one Pro tier for the billing half. Field intelligence (location/mileage) is a *later native tier*, de-risked by fake-door testing first.

**Weakest assumption:** that users will grant Always-location for reconstruction. Feasible technically (§15), but permission-grant and retention rates are unproven for this category — hence phased: calendar+manual recovery first (no location permission needed), location later as opt-in.

**Verdict: BUILD — narrowed to individuals, recovery-wedge first, teams and location deferred.** Timing is unusually favorable (Harvest/MileIQ/Clockify trust erosion), and the concept survives its two honesty checks: Timely half-occupies the space but is desktop-first, team-priced, mobile-neglected; and the impossible part (mid-visit work-end detection) was never load-bearing.

## 2. Market map

Five categories, all active, differently vulnerable [F/I]:

| Category | Leaders | Crowding | Vulnerability |
|---|---|---|---|
| General time tracking | Clockify, Toggl, Harvest | Very high | Pricing/trust chaos post-acquisitions; weak mobile reconstruction everywhere |
| Auto-tracking / memory | Timely, Memtime, Rize, RescueTime | Low-competitor, premium | All desktop-centric; none mobile-first; none free |
| Freelancer suites | FreshBooks, Bonsai, Zoho Invoice, Indy | Medium | $23–25/mo entry; manual timers; weak/absent mileage; Bonsai payment-hold trust issues |
| Team/field punch clocks | QB Time, Hubstaff, Timeero, ClockShark, Jibble | High | Employer-first by construction; surveillance stigma; base fees exclude solo users |
| Mileage | MileIQ, Everlance, TripLog, Driversnote | Medium | Drives only; MileIQ price-hike churn pool; nobody joins miles→time→invoice |

**The open position:** individual-first, mobile-first, privacy-first recovery + billing. Every adjacent category touches it; none occupies it (§3, §7).

## 3. Competitor matrix

### 3.1 Deep sample

#### Memtime — the reconstruction incumbent (desktop-only) [F]
Automatic "Memory Aid" records every app/window all day; users drag activities onto projects to reconstruct billable time. **Desktop-only by their own FAQ** (Windows/macOS/Linux; no mobile app) — [how it works](https://www.memtime.com/how-it-works), corroborated by [Zapier](https://zapier.com/blog/best-time-tracking-apps/). Privacy-first is central to its marketing: local-only storage, "cannot be used for employee monitoring" ([why private](https://www.memtime.com/blog/why-private-time-tracking-matters)). **No free plan** — €10/€15/€20 per user/mo ([pricing](https://www.memtime.com/pricing)); G2 4.7 (172), Capterra 4.5 (121). No native invoicing (exports/integrations, gated to €15 tier). Complaints: price, **no mobile/no sync across devices**, renewal-billing practices, data lost after subscription ends ([Capterra reviews](https://www.capterra.com/p/199674/memtime/reviews/)).

#### My Hours (Spica) [F]
Freelancer/small-team tracker with invoicing at Pro ($9/user/mo; free ≤5 users; [pricing](https://myhours.com/pricing)). **Web-first; mobile is weak** — iOS 2.8★ (10 ratings), Play 3.63★ (~79) vs Capterra web 4.8 (986) ([App Store](https://apps.apple.com/us/app/spica-my-hours/id1532035406), [AppBrain](https://www.appbrain.com/app/spica-my-hours/com.myhours.Spica_MyHours)). No automatic tracking of any kind. Complaints: cumbersome manual entry, server outages blocking time logging (weak offline).

#### HoursTracker (Cribasoft) — the mobile geofencing incumbent [F]
Individual hourly-worker punch clock. **The only app found with geofenced auto clock-in/out for individuals** — location-triggered entries, arrival/departure reminders, location-verified CSV flags ([App Store](https://apps.apple.com/us/app/hourstracker-hours-and-pay/id336456412)). iOS 4.8★ with **~55,000 ratings** (real demand signal); Android trails badly (3.6★). Free tier: 3 jobs, **21-day history**, full-screen ads (heavily complained about — [Slashdot](https://slashdot.org/software/p/HoursTracker/)); Premium $4.99/mo / $29.99/yr; Unlimited $6.99/mo. **No invoicing at all.** Offline-first, Today widget, Apple Watch. Last verified update May 2025; 2026 activity UNVERIFIED — signs of a stagnating solo-dev product.

#### ATracker (WonderApps) [F]
Personal habits/routines tracker (not billing). One-tap simplicity praised; iOS 4.7★ (~3.2k). Pricing: $4.99 one-time Pro + optional $2.99/mo sync. No location features, no invoicing. Complaints: sync bugs/data-loss, watch sync, dated widgets ([Jibble teardown](https://www.jibble.io/reviews/atracker/5-ways-atracker-sucks), [justuseapp](https://justuseapp.com/en/app/522008611/atracker-time-tracker/reviews)).

#### MileIQ — mileage incumbent under new ownership [F]
Auto drive detection, swipe classify; free = 40 drives/mo; **$13.99/mo** after two 2026 hikes (from $5.99 — ~+133%) following the July 2025 **Bending Spoons acquisition** (~$233M) ([pricing](https://mileiq.com/pricing), [Wikipedia](https://en.wikipedia.org/wiki/MileIQ), [BeBeez](https://bebeez.eu/2025/07/14/bending-spoons-acquires-californias-mileiq-inc/), hike detail via [competitor analysis](https://magica-app.com/best-mileiq-alternatives-2026/) — old prices UNVERIFIED primary). Play ~4.56★/70k, iOS ~4.6★. **Drives only — no time tracking, no invoicing, no workday reconstruction.** Complaints: missed drives, battery, price-hike churn ([G2](https://www.g2.com/products/mileiq/reviews?qs=pros-and-cons), [Trustpilot](https://www.trustpilot.com/review/mileiq.com)). *Price-hike refugees are an acquisition pool [I].*

#### Everlance [F]
Mileage + expenses + tax filing; iOS **4.8★/~51k**; free 30 auto trips/mo; Starter $8.99/mo ([pricing](https://www.everlance.com/pricing)). Work-hours *classification* of trips, but **no time capture, no invoicing** (it's FreshBooks' recommended mileage partner — underlining the split). Complaints: missed trip starts, battery, upsells ([Capterra](https://www.capterra.com/p/174335/Everlance/reviews/)).

#### FreshBooks — the only native time+mileage+invoice combo [F]
All three on every tier from Lite (**$23/mo list, 5 billable clients, no free plan**; [pricing](https://www.freshbooks.com/pricing)). iOS 4.7★. Time tracking is manual-only. **Mileage is the weak leg** — battery drain, missed trips; FreshBooks itself promotes an Everlance integration for serious mileage ([business.org review](https://www.business.org/finance/accounting/freshbooks-review/), [their own hub](https://www.freshbooks.com/hub/expenses/everlance-mileage-deductions)). Complaints: support, cost creep (client limits, $11/user seats).

#### Bonsai [F]
Freelance admin suite pivoting to agencies (per-user pricing 2025–26): Basic $15 (no invoicing!), Essentials $25 w/ invoicing ([pricing](https://www.hellobonsai.com/pricing)). Mobile app is a thin companion (iOS 4.3★/309 ratings). No mileage, manual timer only, clunky. Serious trust complaints: **payment holds/frozen payouts**, slow support ([Trustpilot](https://www.trustpilot.com/review/hellobonsai.com)).

#### Clockify [F]
Freemium volume leader (CAKE.com). Free tier now shows a **5-user cap and 1-month report range** on the pricing page — the historic "unlimited free" is eroding (see §4 Apr-2026 cuts). Paid $3.99–$11.99/user; invoicing at Standard ($5.49+) ([pricing](https://clockify.me/pricing)). Auto Tracker is **desktop-only**, local, manual-convert ([docs](https://clockify.me/help/track-time-and-expenses/auto-tracker)); **no mobile reconstruction**. iOS 4.6★/4k; **Android ~3.1★** (weak). Complaints: sync (58% of connectivity-mention reviews negative), laggy mobile.

#### Toggl Track [F]
The UX benchmark (iOS 4.8★/9.5k, Play 4.6★/25k — best mobile of the four). Free ≤5 users; Starter $9, Premium renews **$18/user/mo** ([pricing](https://toggl.com/track/pricing/)). Desktop-only rule-based autotracker; **refuses location tracking on principle** — official [anti-surveillance statement](https://toggl.com/track/anti-surveillance-statement/). Invoicing lightweight, Starter+. Complaints: price, "Toggl 2.0" redesign instability. Owned by Bending Spoons since 2025.

#### Harvest — the cautionary tale [F]
Invoicing-first for freelancers (on **every tier incl. free** — but free = 1 seat / 2 projects). **Post-Bending-Spoons (July 2025) pricing implosion:** per-seat + *usage fees* on invoices/projects/clients; documented renewal shocks — $12/mo → $2,040/mo auto-migration, 600% team increases, solo $129.60/yr → $1,100+/yr (consistently reported across 4+ independent 2026 articles: [onesuite](https://onesuite.io/blog/harvest-price-increase/), [productive.io](https://productive.io/blog/harvest-price-increase/); individual figures UNVERIFIED at source level). **No automatic tracking at all.** The single biggest churn-driver event in the category right now — its freelancer base is in motion [R].

#### Timely — the closest incumbent to the reconstruction thesis [F]
AI "Memory" drafts timesheets from multi-source memories — **including GPS location memories from the mobile apps** (arrival/departure at places, opt-in) ([Memory 101](https://www.timely.com/help/handbook/autosheet/memory-101/)). So a version of location-aware reconstruction EXISTS — important honesty check on the thesis. BUT: capture agent desktop-only; **mobile app 3.0★ with 32 ratings**, crash complaints, and a help page stating mobile apps are "no longer actively developed" (ambiguous, UNVERIFIED scope — [source](https://www.timely.com/help/handbook/classic/gps-tracking-android/)); **no free plan**; invoicing only at Premium $16–20/user/mo; Tasks a paid add-on ([pricing](https://www.timely.com/pricing)). Anti-bossware positioning ("no screenshots, no bossware"). G2 4.8/482 for the desktop experience; priced for teams, not individuals.

#### Cross-cut of the big four [F/I]

| | Clockify | Toggl | Harvest | Timely |
|---|---|---|---|---|
| Free plan | tightening | 5 users | 1 seat/2 projects | **none** |
| Auto tracking | desktop log | desktop rules | **none** | desktop Memory + mobile GPS memories |
| Mobile reconstruction | no | refused | no | partial, neglected (3.0★) |
| Invoicing | $5.49+ | $9+ | all tiers (+usage fees!) | $16+ |
| Pricing drama | free-plan cuts | +renewal creep | **600%+ shocks** | stable, premium |

**Bottom line:** the *mobile-first, individual-priced, free-tier* reconstruction seat is empty. Timely proves the concept sells (G2 4.8) but serves it desktop-first at team prices with a dying mobile app. Harvest's implosion has put exactly the target user — invoicing freelancers — in motion.

#### Field/GPS category (QB Time, Hubstaff, Timeero, ClockShark) [F]
All four are **employer-managed GPS punch clocks** — admin-configured, tracking only while clocked in, output to manager dashboards. **None offers solo day-reconstruction → proposed billables.** Closest analog: Timeero's Segmented Tracking (Premium, $10/user/mo) auto-splits a clocked-in shift into drives/stops — but requires clock-in, is admin-facing, proposes nothing ([segmented tracking](https://timeero.com/segmented-tracking)). Highlights: QB Time — 4.6★/193k iOS, geofences only *remind* (Elite), mileage Elite-only, +25%/user price hike July 2026 ([source](https://www.ontheclock.com/blog/quickbooks-time-price-increase-2026)); Hubstaff — GPS is a paid add-on ($3.33/user), surveillance backlash (Trustpilot ~2.3); Timeero — best mileage, battery complaints; ClockShark — **2.9★ iOS**, $40 base fee, battery complaints "almost 100% of users" ([SelectHub](https://www.selecthub.com/p/time-tracking-software/clockshark/)). Employer-first pricing (base fees, seat minimums) structurally excludes solo users [I].

**Deep-sample cross-cut so far [I]:**
- Reconstruction exists only on desktop (Memtime; also Timely/Rize per §3.2) — the **mobile** reconstruction seat is empty.
- Individual geofenced time capture exists in exactly one aging app (HoursTracker) — 55k ratings prove demand; it has no invoicing, punishing free limits, and no visible momentum.
- Nobody combines: mobile-first + reconstruction/recovery + invoicing + privacy-first. Each exists separately; the combination is the open position.

### 3.2 Light sample — category coverage [F]

| App | Category | Target user | Free plan | Entry paid price | Positioning | Active 2026 |
|---|---|---|---|---|---|---|
| TimeCamp | time tracking | SMB teams, agencies | Y — free forever, unlimited users/projects, basic | $3.99/user/mo | Automatic tracking + billable reporting for teams | Y |
| Everhour | time tracking | PM-tool-centric teams | Y — ≤5 users, no integrations | $8.50/user/mo (5-seat min) | Time tracking inside Asana/Jira/etc. | Y |
| TrackingTime | time tracking | small teams, freelancers | Y — unlimited users, basic | $3.75/user/mo | Collaborative timesheets | Y |
| Rize | productivity analytics | individual knowledge workers | N — 7-day trial only | $9.99/mo | AI automatic tracker that "recovers billable hours", no timers (desktop-centric) | Y |
| RescueTime | productivity analytics | individuals | Y — Lite free forever | ~$6.50/mo annual | Privacy-first personal auto-analytics | Y |
| Jibble | punch clock | deskless/hourly teams | Y — free unlimited users incl. GPS | $3.49/user/mo | "100% free" time clock w/ GPS + face recognition | Y |
| Connecteam | punch clock / workforce | deskless SMB | Y — full features ≤10 users | $29/mo per hub | All-in-one deskless workforce ops | Y |
| When I Work | scheduling | shift SMBs | N — trial only | $2.50/user/mo | Shift scheduling + messaging | Y |
| Buddy Punch | punch clock | small hourly teams | N — 14-day trial | $19/mo + $4.49/user | Simple online punch clock w/ GPS | Y |
| Deputy | scheduling | shift/multi-location | N — 31-day trial | ~$4.50–5/user/mo | Enterprise rostering & compliance | Y |
| TripLog | mileage | gig drivers, fleets | Y — 1 driver, unlimited auto miles | $5.99/mo | Automatic mileage/expense (MagicTrip) | Y |
| Driversnote | mileage | individual drivers | Y — 15 trips/mo | ~$11/mo | IRS-compliant auto logbook (iBeacon) | Y |
| Zoho Invoice | invoicing | freelancers/micro-biz | Y — entirely free | $0 (upsell → Zoho Books) | Free professional invoicing | Y |
| Indy | freelancer suite | solo freelancers | Y — 3 docs/mo | $25/mo ($18.75 annual) | All-in-one freelance admin | Y, but shaky (2026 "rebuilding", Trustpilot complaints) |

Sources: official pricing/support pages and current reviews — [TimeCamp](https://www.timecamp.com/faq/subscription-and-payments/what-are-the-available-pricing-plans-for-timecamp-and-which-one-should-i-consider-for-my-team/), [Everhour](https://everhour.com/pricing), [TrackingTime](https://support.trackingtime.co/en/articles/1134688-subscription), [Rize](https://rize.io/pricing), [RescueTime](https://www.capterra.com/p/103317/RescueTime/pricing/), [Jibble](https://www.actitime.com/software-collections/jibble-pricing), [Connecteam](https://costbench.com/software/employee-scheduling/connecteam/), [When I Work](https://checkthat.ai/brands/when-i-work/pricing), [Buddy Punch](https://softwarefinder.com/hr/buddy-punch/pricing), [Deputy](https://www.deputy.com/pricing), [TripLog](https://www.triplog.net/pricing), [Driversnote](https://frontdeskreview.com/software/mileage-tracking/driversnote/), [Zoho Invoice](https://costbench.com/software/invoicing/zoho-invoice/free-plan/), [Indy](https://help.weareindy.com/en/articles/4833822-how-much-does-indy-cost) · ([Trustpilot](https://www.trustpilot.com/review/weareindy.com)).

**Category finding [F/I]:** across all 14 light-sample apps, automatic location-based capture exists only as (a) employer-driven GPS clock-in verification (Jibble, Connecteam, Buddy Punch, Deputy) or (b) drive-only mileage detection (TripLog MagicTrip, Driversnote iBeacon). **None offers individual, location-triggered work-time capture ("propose a time entry when I arrive at/leave a client site").** Privacy-first positioning exists in personal analytics (RescueTime, Rize) but neither does location/field work, and Rize has no free plan.

## 4. Review-mining report

*Method note: findings from Capterra, G2, JustUseApp, Trustpilot, ComplaintsBoard, App Store listings and comparison content; competitor-authored reviews are marked `[competitor]` and weighted accordingly; Reddit evidence arrived mostly via compilations (moderate weight).*

### 4.1 Top complaint patterns [R]
| Pattern | Who gets it | Notes |
|---|---|---|
| **Sync failures / data loss** | Clockify, Toggl, QB Time, HoursTracker | The single most recurring technical complaint; Toggl users report losing time data to mobile↔desktop sync ([actitime](https://www.actitime.com/software-collections/clockify-review), [buddypunch](https://buddypunch.com/blog/clockify-review/)`[competitor]`) |
| **Timer reliability** | Clockify, Timeero, FreshBooks | Timers stop randomly or run all night (+10–14h phantom time) |
| **Battery / GPS misses** | MileIQ, Everlance, QB Time, Timeero | Auto-detection is both the top praise *and* top complaint — missed trips break trust ([MileageWise](https://www.mileagewise.com/mileiq-alternative/mileiq-review/)`[competitor]`, [TechRepublic](https://www.techrepublic.com/article/everlance-review/)) |
| **Paywall changes / price hikes** | Harvest, Toggl, MileIQ, **Clockify** | **The dominant 2025–26 theme.** Bending Spoons acquired Harvest & Toggl (2025) and MileIQ (+133% price); **Clockify cut its free plan April 2026** — 5-user cap, CSV export & billable rates paywalled ([CAKE.com official](https://cake.com/blog/news/clockify-announces-free-plan-changes/), [Timentrack](https://timentrack.com/blog/clockify-free-plan-changes-2026), [ComplaintsBoard MileIQ](https://www.complaintsboard.com/mileiq-b158142)) |
| **Surveillance discomfort** | Hubstaff (dominant), QB Time, Timeero | "Surveillance disguised as productivity" (2025 xAI episode; Trustpilot 2.6 — [Hackceleration](https://hackceleration.com/labs/review/hubstaff), [Wikipedia](https://en.wikipedia.org/wiki/Hubstaff)) |
| **Widget/watch gaps** | Clockify (no Live Activities), Toggl (watch breakage) | A *third-party paid* "Toggl Lockscreen Widget" app exists — the gap is monetizable ([App Store](https://apps.apple.com/ca/app/toggl-lockscreen-widget/id6756894639)) |
| **Export/data-ownership regressions** | Clockify (CSV now paid), HoursTracker | Exports treated as a monetization lever, not a right |

### 4.2 What earns 5 stars [R]
One-tap frictionless start (Toggl is the benchmark), simplicity, "set-and-forget" capture (MileIQ 80k five-stars; Everlance 4.8), **recovered billable time** ("~5 extra billable hours every week" — [Memtime test](https://www.fahimai.com/memtime)), clean invoicing (Harvest, FreshBooks), report quality, free-plan generosity (Clockify — now eroding).

### 4.3 Forgotten-time evidence
**Verdict: real and well-corroborated in aggregate [R]; individual-anecdote density moderate.** ~10 independent sources: legal-industry reconstruction decay "25–30%… wait longer and you're writing fiction" ([ALA](https://www.alanet.org/legal-management/2022/april/features/how-to-ease-time-tracking-struggles)); Upwork 2024 survey — freelancers lose 10–20% of billable income to poor tracking (via [InvoiceG](https://invoiceg.com/blog/freelancer-tips/freelancer-time-tracking)); r/freelance coping-ritual compilations (dual timers, end-of-day cleanup — [PainOnSocial](https://painonsocial.com/blog/freelance-time-tracking-reddit)); "calendar archaeology" documented for attorneys ([LawPay](https://www.lawpay.com/about/blog/lawyer-time-tracking-tips-templates/)); vendors ship idle-detection features *because* the failure mode is common ([Clockify help](https://clockify.me/help/track-time-and-expenses/idle-detection-reminders)). Caution: the 10–30% loss stats circulate mostly on vendor blogs; Upwork survey + legal-industry figures are the credible anchors.

### 4.4 Switching evidence [R]
Harvest→Clockify/TimeCamp (usage-fee surprises); Toggl→cheaper tools (price); MileIQ→TripLog/Everlance (hike + missed drives — an entire "MileIQ alternatives" SEO cottage industry exists); Clockify-free→anywhere (Apr 2026 cuts); Hubstaff→less-invasive tools. **Meta-pattern: the two most-loved incumbents (Harvest, Toggl) were destabilized simultaneously by one acquirer, and the "generous free" leader is retreating — an unusually good moment for a trust-positioned entrant [I].**

### 4.5 Unmet-needs shortlist (evidence-ranked)
1. **Forgotten-time recovery without surveillance** — STRONG; only Timely/Memtime serve it, premium-priced and desktop-centric
2. **Trustworthy cross-device sync** — STRONG; done badly everywhere
3. **Forgot-to-stop protection that actually works** — MODERATE-STRONG
4. **Price stability / trust** — STRONG; "surprise at renewal" is the recurring wound
5. **Reliable mileage auto-detection** — STRONG (field segment)
6. **True offline-first** — MODERATE
7. **First-class lock-screen/watch surfaces** — MODERATE
8. **Accountability without surveillance (teams)** — MODERATE-STRONG
9. **Data-ownership guarantees** — MODERATE
10. **Calendar/location fusion reconstruction on mobile** — behavior evidence MODERATE; supply evidence: nobody ships it

## 5. User segments and jobs to be done

- **Primary (beachhead): solo billing freelancers in professional services** — consultants, designers, developers, architects, inspectors — who invoice clients and feel forgotten time as lost money. JTBD: *"Get every worked hour into a clean, defensible invoice without tracking becoming a job."* Why beachhead: highest willingness to pay (lost hours = dollars), strongest wedge fit, actively in motion from Harvest/Bonsai (§4.4), reachable via recovery + comparison SEO.
- **Secondary: timesheet-only individuals** (contract/hourly workers submitting hours). JTBD: *"Prove my hours without ceremony."* Served by the same free core with money-language hidden (onboarding: "I submit timesheets / I bill clients / both / personal record"). HoursTracker's 55k ratings prove this segment's size; its decay leaves it open.
- **Tertiary (later, native): field-based professionals** — site visits, travel, mileage. JTBD: *"Turn a day of driving and site visits into billable time and miles without touching my phone."* Highest differentiation, highest technical/permission risk → fake-door test before building (§16).
- **Team mode: explicitly deferred.** Employer features would poison the anti-surveillance position that the individual product depends on [I]. Revisit only after individual PMF, as "share/approve timesheet" — never monitoring.

## 6. Problem prioritization (frequency × pain × willingness-to-pay × competitive coverage × feasibility)

1. **Forgotten/unrecorded time → lost billables** — frequent, high pain, direct dollar value, weakly covered on mobile, feasible now (calendar+gap first). **The wedge.**
2. **Trustworthy reliability (never lose an hour)** — universal, table stakes done badly everywhere (§4.1), fully feasible offline-first. **The retention floor.**
3. **Unbilled-work detection → invoice** — high pain, monetizable, covered only in $23+/mo suites. **The conversion trigger.**
4. **Runaway-timer repair** — frequent, moderate pain, weakly executed everywhere. Cheap to win.
5. **Fair, stable pricing / data ownership** — newly acute (§4.4). Positioning more than feature.
6. **Site-visit → time+miles+invoice** — intense for field niche, unserved for individuals, but permission/battery risk. Later.
7. **Client-safe descriptions** — real but unproven willingness to pay; template-first, AI later. Later.

## 7. Gap analysis

- **Completely missing in market:** individual mobile location→proposed-billables flow (verified across all five categories, §3); recovery-first mobile UX at consumer prices.
- **Exists but poorly executed:** cross-device sync (everyone); forgot-to-stop handling (idle detection exists, retroactive repair is weak); offline-first (promised, unreliable); mileage auto-detection accuracy.
- **Exists but paywalled/expensive:** reconstruction (Timely $16–20 + no free plan; Memtime €10–20, desktop); time+mileage+invoice combo (FreshBooks $23/mo list, weak mileage leg); invoicing (Bonsai $25).
- **Exists but employer-oriented:** all field GPS (QB Time/Timeero/ClockShark/Hubstaff); approval workflows.
- **Not commercially meaningful:** yet-another pretty manual timer; deep analytics dashboards; full accounting/payroll (anti-features confirmed, brief §33 list stands [I]).

## 8. Final positioning

- **Primary:** *"The time tracker that finds the hours you forgot."* (understandable, differentiated, searchable, zero surveillance connotation)
- **Secondary:** *"Track, recover, and get paid — everything stays on your device."*
- **App Store subtitle:** `Recover forgotten work hours`
- **Homepage headline:** *"Stop losing billable hours. Tempo tracks your day, finds the gaps, and turns them into clean timesheets and invoices."*
- **Alternative angles:** (1) trust/pricing: "Free tracking forever. No surprise renewals. Your data is never hostage." (2) anti-reconstruction-pain: "From messy workday to clean timesheet in 30 seconds." (3) field (later): "Site visits become invoices."
- **Avoid:** "your phone remembers everything" / "searchable memory of your life" (surveillance-adjacent); "AI watches you work"; any employer-monitoring language; "never miss a minute" (over-promise — reconstruction is ±minutes, §15).

## 9. Final product architecture

- **Free forever:** timer, manual entry/edit/undo, day ledger + gap awareness, week view, basic recovery prompts (time+calendar-based), clients/projects, CSV/PDF export, offline-first, full data export. *(Never paywall: recording, correcting, exporting one's own hours.)*
- **Pro (single tier, ~$7.99/mo / $59.99/yr):** Recovery Inbox (full), calendar-fused reconstruction, unbilled-work detection, invoicing suite (numbering/tax/terms/status/reminders), client billing rules (rounding/minimums/travel), description templates→AI assist, unlimited history + search, advanced exports.
- **Field add-on (later, native only):** saved worksites, arrival/departure proposals, travel+mileage, per-client travel rules.
- **Later:** watch apps, Live Activities (native), team share/approve.
- **Never:** screenshots, keylogging, hidden tracking, employer dashboards, payroll, full accounting.

## 10. End-to-end UX (target journey)

Download → 3-choice onboarding (timesheets / billing / both / personal) sets language → first timer in one tap (no forced setup; "Uncategorized" fallback always available) → forgot to stop: on next open, *"Running 6h 12m — still working?"* with smart stops (calendar end · last activity · custom · split) → **Recovery Inbox**: calm card *"We found a likely 2h 15m gap Thursday afternoon — calendar shows 'ACME review'"* → Confirm / Edit / Ignore / Don't suggest this again → **Daily closure (~30s)**: confirmed · missing · unassigned · (billing mode) recovered value → weekly timesheet → export/submit or invoice (unbilled detector suggests) → history search.

**The brief-§9 forgotten-timer scenario, honestly designed (per §15 feasibility):** started 10:00, left site 13:30 unnoticed. App proposes: *"You started at 10:00 and left this location at 1:30."* Options: end at 1:30 (departure — the trustworthy signal) · end at calendar end · custom time · split work/break · keep all. Then: *"Save this location as a client site?"* (save / one-time / never). **No pretense of detecting the 12:30 "stopped actually working" moment — technically impossible (§15 Q2); the UI's split/trim affordance covers it in two taps.**

---

## 11. Freemium & pricing model

### What the free plan must do
The free plan is the acquisition engine. Evidence from the category leader: Clockify's freemium launch grew users ~350% in year one **[F]** ([Digiutm case study](https://digiutm.com/saas-case-study-clockify/)), and its free-forever core is the most cited reason it displaced paid rivals in comparison content **[R]**.

Free (never paywalled — these create the habit and the trust):
- One-tap timer, manual entry, editing, undo
- Day ledger + gap awareness (basic)
- Weekly timesheet view + CSV/PDF export (basic)
- Clients/projects (reasonable count, not artificially crippled)
- Offline-first recording — hours are never lost or held hostage
- Data export at any time, on any plan

Paid Pro (the "getting paid" and "memory" halves):
- Full Recovery Inbox / reconstruction suggestions
- Invoicing (numbering, tax, terms, status, unbilled detection)
- Client billing rules (rounding, minimums, travel rules)
- Client-safe description assistance
- Long history + search (free keeps a generous rolling window)
- Advanced exports/reports

Field tier (only if/when native): location visits, travel time, mileage.

### Pricing recommendation (initial hypothesis to validate) [H]
Single paid tier at launch: **Pro $7.99/mo or $59.99/yr** (≈37% annual discount). One tier converts better than three at this scale; a Field add-on can come later with native location. $19–29/mo is individual-hostile; $4.99 underprices invoicing value.

---

## 12. The $10,000 MRR model

### Subscribers needed (gross → net of store fees)
Assumes Apple/Google Small Business Program 15% commission **[F]** (both programs active for <$1M/yr developers). Web checkout (Stripe ~2.9%+30¢) improves net where allowed.

| Price | Subs for $10k gross | Subs for $10k **net** (15% fee) | Subs for $10k net (web ~3%) |
|---|---|---|---|
| $4.99 | 2,004 | 2,358 | 2,066 |
| $7.99 | 1,252 | 1,473 | 1,291 |
| $8.99 | 1,113 | 1,309 | 1,147 |
| $9.99 | 1,001 | 1,178 | 1,032 |
| $12.99 | 770 | 906 | 794 |

### Free-user base required (steady state)
Paying stock ≈ conversion% × monthly active users (category norm for freemium utility apps is 1–5%; assume payers ≈ conv × MAU):

| Conversion | MAU needed for 1,473 payers ($7.99 net) |
|---|---|
| 1% | ~147,000 |
| 2% | ~74,000 |
| 3% | ~49,000 |
| 5% | ~29,500 |

### Churn dynamics
Steady state: payers = new payers/month ÷ monthly churn.
At 1,473 payers and 5%/mo churn → **74 new payers every month** just to stand still; at 3% churn → 44/mo. At 2% signup→paid conversion that is 2,200–3,700 new free signups per month, sustained. Annual plans (lower effective churn, ~2–3%) materially reduce this treadmill — push annual hard.

### Scenarios (at $7.99, 15% fee)
| Case | Conversion | Monthly churn | MAU needed | Realistic timeline to $10k MRR |
|---|---|---|---|---|
| Best | 4% | 2.5% | ~37k | 12–18 months |
| Base | 2% | 4% | ~74k | 18–30 months |
| Poor | 1% | 6% | ~147k | 3+ years / likely never without paid acquisition |

Costs not modeled in gross: refunds, failed payments (~2–5%), support, infrastructure. **Tempo's architecture advantage: free users cost ≈$0 to serve** (static hosting + on-device data today; even with sync, per-user infra is cents). This is unusual — competitors carry real server cost per free user — and it makes the poor case survivable instead of fatal **[I]**.

**Verdict on achievability:** $10k MRR requires becoming a top-3 organic result for a meaningful keyword cluster or an App Store category presence with tens of thousands of MAU. Clockify demonstrates the ceiling of the SEO route (1.2M organic visits/mo, ~$1.0M/mo US traffic value **[F]** — [Concurate teardown](https://concurate.com/company/clockify-marketing-strategy/), [RankMasters audit](https://www.therankmasters.com/blog/clockify-content-audit)) but that took years and a content team. $10k MRR is *credible but slow by default*: 18–30 months base case, and the niche wedge (reconstruction/recovery) is what could compress it. It will not happen on product quality alone.

---

## 13. SEO plan

### Why SEO is the primary channel
Clockify's growth is the category proof: 1.2M+ organic visits/mo, ~65k informational keywords, ~86–90% non-branded top-of-funnel content **[F]** ([Concurate](https://concurate.com/company/clockify-marketing-strategy/), [RankMasters](https://www.therankmasters.com/blog/clockify-content-audit)). Their free tools alone pull real traffic (military-time converter ≈31,200 US visits/mo; decimal-hours converter ≈2,400 **[F]** — [Ahrefs free-tools strategy](https://ahrefs.com/blog/the-free-tools-seo-strategy/)).

**Implication:** head terms ("time tracker", "timesheet app") are owned by incumbents with massive authority. The entry is (a) long-tail recovery cluster no one owns, (b) free tools, (c) profession niches.

### Cluster priority — REVISED after the Appendix B demand check
1. **Free tools + templates (lead acquisition):** time-card calculator, billable-hours calculator, decimal↔hh:mm converters, invoice generator, timesheet templates. Proven category volume (Clockify's converters alone pull 30k+/mo); "timesheet app" shows steady year-round Trends interest while recovery phrases flatline (Appendix B).
2. **Comparison/alternatives pages (lead conversion of switchers):** "Harvest alternative", "Clockify free plan alternative", "MileIQ alternative" — demand proven by the existing cottage industry of such pages (§4.4) and by the 2025–26 pricing shocks.
3. **Recovery cluster (differentiation + long-tail support, NOT the traffic bet):** exact phrases ("forgot to stop timer", "recover billable hours") are individually sub-threshold (Appendix B), but the intent expresses as many question-form long tails ("employee forgot to clock in", "how to reconstruct hours", "does Toggl report idle time") that competitors capture only via help docs. Write the definitive guides; expect modest traffic with high message-match, and use recovery as the *conversion message* on pages acquired via #1/#2.
4. **Profession niches:** "time tracker for architects / inspectors / consultants" — low volume, high intent, compounding.

### 12-month cadence
Months 1–3: 6 free tools + 8 recovery-cluster guides + 3 comparison pages. Months 4–6: profession pages ×8, templates library. Months 7–12: expand clusters that show impressions; refresh; internal linking. Measure: impressions → clicks → signups per cluster.

---

## 14. ASO plan

Current ASO practice favors long-tail, specific phrasing over head terms ([AppTweak 2026 guide](https://www.apptweak.com/en/aso-blog/app-store-keyword-research-aso), [SplitMetrics](https://splitmetrics.com/blog/app-store-keyword-optimization/)) **[F]**.

- **Title:** `Tempo — Time Tracker & Timesheet` (head coverage lives in title)
- **Subtitle (iOS) / short description (Play), test in order:**
  1. `Recover forgotten work hours` (differentiator-first)
  2. `Timesheets, invoices & recovery`
  3. `Simple hours tracker for freelancers`
- **Keyword field:** billable,hours,timesheet,invoice,freelance,work log,clock in,forgot,recover,mileage
- **Screenshot story (first 3 sell):** 1) Start work in one tap · 2) "We found 2h 27m you forgot" (Recovery) · 3) Review your day in 30 seconds · 4) Clean weekly timesheet · 5) Turn hours into an invoice · 6) Search your work history
- **Ratings prompt:** after a *recovered* session is confirmed or a week is submitted (peak-value moments), never on launch.
- **Localization:** EN first; ES/DE/FR/PT once English metadata stabilizes.

*(Note: as long as Tempo ships as a PWA it has no store presence — ASO applies when a native/wrapped build ships. See §15.)*

## 15. Technical feasibility (iOS/Android, August 2026)

### Per-signal verdicts [F]

| Signal | Verdict | Battery | Phase |
|---|---|---|---|
| iOS significant-location-change | Yes, background, relaunches app; ~500m granularity | Very low | **MVP** |
| iOS geofencing (**20-region limit** — [Apple docs](https://developer.apple.com/library/archive/documentation/UserExperience/Conceptual/LocationAwarenessPG/RegionMonitoring/RegionMonitoring.html), [Radar](https://radar.com/blog/limitations-of-ios-geofencing)) | Yes; entry/exit within 1–5 min at 100–150m radius; dynamically re-register 20 nearest sites | Very low | **MVP** — core signal |
| iOS visit monitoring (CLVisit) | Supported, most power-efficient; timestamps lag minutes, often delivered at departure ([docs](https://developer.apple.com/documentation/corelocation/clvisit)) | Lowest | **MVP** (unknown-site discovery) |
| Android geofencing (**100 limit** — [docs](https://developers.google.com/android/reference/com/google/android/gms/location/GeofencingClient.html)) | Yes via PendingIntent; 2–6 min latency ([Radar](https://radar.com/blog/how-accurate-is-geofencing)) | Low | **MVP** |
| Continuous GPS | Only for explicit user-started drive tracking | **5–15%/hr** | Opt-in only |
| Motion (iOS Core Motion retrospective queries; Android Activity Recognition) | Yes — classify travel legs after a location wake | Negligible | **MVP** |
| Calendar read (both) | Easy, high-value, low-risk | None | **MVP** |
| Photos ("shots taken during visit") | **Needs full/limited library permission; auto-scan won't pass review** — manual picker attach only ([Play photo policy](https://support.google.com/googleplay/android-developer/answer/15800983)) | — | Later, manual |
| Call log / email activity | **Impossible** (iOS no API; Android restricted to default-dialer; no OS email API) | — | **Never** |
| Bluetooth car-connect (iOS) / CarPlay / Android Auto UI | Closed to this category ([CarPlay guide](https://developer.apple.com/download/files/CarPlay-Developer-Guide.pdf)) | — | Never (Android BT connect events: later) |
| Widgets, lock-screen, **Live Activities** (timer is a sanctioned use; **8-hour cap**, restart for longer days — [ref](https://documentation.onesignal.com/docs/en/live-activities)); Android chronometer notification | Yes | Low | **MVP** |
| watchOS/Wear apps | Yes | — | Post-MVP |
| On-device AI rewrite (Apple Foundation Models iOS 26+; ML Kit GenAI **Rewriting API** — [ref](https://developers.google.com/ml-kit/genai)) | Yes on recent flagships; cloud fallback needed | — | Later |

### The four blunt answers [F/I]
1. **The arrival→proposal flow is feasible on iOS** (geofences + SLC + CLVisit + retrospective motion — the proven Arc Timeline/Moves pattern) at **±2–5 minute accuracy, 1–4% battery/day**. "9:35" really means "9:32–9:39" — the product must present *editable proposals*, never facts.
2. **Mid-visit work-end detection ("stopped working at 12:30 but left at 1:30") is NOT technically possible.** Motion says "phone stationary" all visit; screen-usage signals are unavailable to third parties. **Departure is the only trustworthy automatic end signal** — design the edge case (brief §9) as departure-anchored proposals with fast split/trim, exactly as the brief's option list implies, minus any pretense of detecting intellectual-work end.
3. **Store review:** Apple demands specific purpose strings + optional/degradable feature; Google Play requires the background-location declaration, prominent disclosure *before* the runtime prompt, and a demo video; 2026 policy pushes minimum-scope defaults ([Play policy](https://support.google.com/googleplay/android-developer/answer/9799150), [Apr 2026 update](https://support.google.com/googleplay/android-developer/answer/16926792)). Ship manual-first; auto-detection as contextual opt-in. Budget 1–2 rejection cycles.
4. **Battery story:** passive stack ≈ built-in Significant Locations cost; never run continuous GPS to "sharpen timestamps."

### Architecture consequences [I]
- Local-first event journal (append-only signals → derived proposals recomputed locally), offline-first writes, idempotent sync, checkpoint on every background wake (iOS gives seconds, not minutes); Android needs FGS-location type only for explicit drive tracking + an OEM battery-killer "reliability check" screen (dontkillmyapp evidence).
- **PWA implication: every signal above requires a native app.** The current Tempo PWA can carry Phases 1–3 (manual + calendar-free recovery + billing) but location, widgets, Live Activities, and watch surfaces demand native (or a Capacitor wrap with native modules). This cleanly maps the build phases: PWA validates the wedge now; native unlocks the field tier later.

## 16. Validation roadmap (before heavy build)

1. **Search-demand check — DONE Aug 1 2026, verdict AMBER (see Appendix B).** Exact recovery phrases are sub-threshold on Google Trends (each likely <100 US searches/mo; combined exact-phrase cluster probably under the 1k kill line), while "timesheet app" shows steady interest. However, the intent is real and expresses as long-tail question queries and vendor-acknowledged pain ("#1 complaint: forgot to start; #2: forgot to stop" — Clockify's own community). **Consequence applied: recovery stays the product wedge and conversion message; acquisition leads with free tools + alternatives pages (§13 revised). Not a kill — a channel reprioritization.** Re-verify with Google Keyword Planner (free with an Ads account) before spending on content at scale.
2. **Landing-page test** (weeks 1–3): two variants — recovery-first vs simple-tracker-first headline; measure email opt-in. The live PWA doubles as the demo.
3. **Fake-door the Field tier** (in-app): "Track site visits & mileage automatically — coming to Pro. Notify me." Click-rate decides whether native location work is ever justified.
4. **Concierge reconstruction test** (weeks 2–6, n≈10): freelancers send calendar + rough notes weekly; manually produce their timesheet; measure hours recovered + would-they-pay. Direct test of assumption #1.
5. **Pricing test:** paywall screen A/B $5.99 vs $7.99 vs $9.99 (intent clicks, pre-payments).
6. **App-store concept test (later):** two icon/subtitle sets via small paid-install runs when a store build exists.

## 17. 90-day execution plan

- **Weeks 1–2:** keyword-volume study; landing page + wait-list live; fake-door Field card in PWA; recruit concierge cohort. *Gate: search demand + opt-in rate.*
- **Weeks 3–4:** ship Recovery Inbox v1 in the PWA (time+calendar-file import based, no location); first 4 free tools + 4 recovery guides published.
- **Month 2:** concierge synthesis → tune suggestion logic; comparison pages (Harvest/Clockify/Toggl alternatives); daily-closure flow; instrument activation/retention metrics (§35 of brief).
- **Month 3:** decision gate — **if** wedge engagement (recovery confirm rate >40%, D7 retention >20%) **then** start native/Capacitor build with LemonSqueezy payments; **else** iterate wedge or pivot messaging to timesheet-simplicity.
- **Kill criteria:** recovery suggestions ignored by >80% of actives after 4 weeks; landing conversion <1%; recovery-cluster search demand near zero AND paid CAC > 3× first-year ARPU.

## 18. Final recommendation

- **Build:** the individual-first recovery + billing app (current Tempo direction), single Pro tier, PWA-first validation → native for Field later.
- **First user:** the invoicing solo consultant/designer/developer who suspects they're losing hours (and the Harvest-priced-out switcher).
- **Own this problem:** *forgotten and messy work time → clean, paid time.*
- **Free value:** complete tracking + day ledger + basic recovery + exports, forever, offline, data never hostage.
- **Paid reason:** the money half — full Recovery Inbox, unbilled detection, invoicing, rules, history.
- **First marketing message:** "The time tracker that finds the hours you forgot."
- **Postpone:** teams, location/mileage (until fake-door proves it), AI descriptions (templates first), watch apps, integrations.
- **Evidence that would make this a bad investment:** near-zero recovery-cluster search volume + <1% landing conversion + concierge users shrugging at recovered hours — together they'd mean the pain is real but not *purchase-driving*, and the product should fall back to being a beautiful simple tracker competing on trust/price alone (a much weaker business).

---

## Appendix B — Recovery-cluster keyword demand check (run August 1, 2026)

**Method:** Free no-login tools only. Volume-checker tools requiring accounts (PikaSEO → 401, SE Ranking → gated) were not used. Primary instrument: Google Trends (US, 12 months, web search) relative comparisons; secondary: SERP supply probes via web search; anchor volumes from published SEO teardowns (§13).

**Findings:**
1. **Trends, recovery terms vs anchor:** "forgot to stop timer", "billable hours calculator", "unbilled hours" all flatline near zero against "timesheet app", which shows steady year-round interest **[F — observed directly]**.
2. **Trends, recovery terms head-to-head:** "forgot to stop timer" vs "forgot to track hours" vs "recover billable hours" vs "missing hours timesheet" → **"not enough data to show"** — all four are below Trends' display threshold, implying roughly <100 US searches/mo each for the exact phrases **[I]**.
3. **The intent is real but expressed long-tail:** Clockify's own community states "the number one complaint is 'I forgot to start the timer', number two is 'I forgot to stop'" ([forum](https://forum.clockify.me/t/forgetting-to-start-stop-timer/33)); dedicated supply exists for question-form variants — "employee forgot to clock in" ([Shiftbase](https://www.shiftbase.com/blog/forgot-to-clock-in)), reconstruction guides ([Chronoid](https://www.chronoid.app/blog/how-to-track-billable-hours), [TimeBee](https://blog.timebee.app/how-to-track-hours-as-a-freelancer/)), and competitor-comparison long tails ("does Toggl Track report idle time" — [Clockk](https://clockk.com/alt/does-toggl-track-report-idle-time), an auto-tracking startup actively mining exactly this cluster) **[F]**.
4. **Anchors for scale:** Clockify's free tools pull 30k+ visits/mo each at the top end (§13) — an order of magnitude above anything the exact recovery phrases can deliver **[F]**.

**Verdict: AMBER — not the kill signal, but a channel correction.** Recovery is weak as a *head-term acquisition channel* and strong as a *differentiation/conversion message*. The revised §13 ordering (free tools + alternatives pages lead; recovery guides support) reflects this. The wedge itself is unaffected: users don't search "recover my hours" — they experience the pain in-product, which is where the Recovery Inbox and fake-door tests measure it.

**Caveats:** Trends measures relative interest, not absolute volume; sub-threshold ≠ zero; long-tail aggregate volume is unmeasurable without Keyword Planner/Ahrefs. Re-run in Keyword Planner (free with a Google Ads account, no spend required) before committing to a content calendar.

---
*Report compiled August 1, 2026. Evidence tiers: [F] confirmed fact · [R] review-supported pattern · [I] inference · [H] hypothesis. Sources inline throughout.*

---

## Appendix A — What the existing Tempo PWA already proves
The deployed product (gorkyaitech.github.io/tempo) already implements: 1-tap timer, gap-aware day ledger, "Reconstruct your day" prompt (time-based evidence only), week view, reports, CSV/print exports, local invoicing behind a Pro flag, offline PWA, zero marginal cost per free user. This is a working Phase-1/partial-Phase-2 prototype of the brief's build plan — the open questions this report answers are about the *market* (§1–§8) and the *native-only capabilities* (§15), not about whether the core product can be built.
