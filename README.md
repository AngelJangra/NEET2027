# NEET 2027 Top-Rank OS

## Current planner dates
- Day 0: **14 September 2026**
- Day 1: **15 September 2026**
- Planned final/exam date: **8 May 2027**
- 236 numbered study/exam days after Day 0
- **Every Sunday before the planned exam date = full mock**
- The planned exam date is treated as the real exam day, not a mock.

> **Important:** NEET UG 2027's official date/syllabus should be replaced in the planner as soon as NTA/NMC publishes the 2027 documents. The current syllabus baseline is NEET UG 2026.

## 650+ execution architecture
1. **Master micro-schedule:** fixed subject/topic progression — it is the source of truth.
2. **Wake-Up Coach:** gradually shifts wake time from 09:30 toward 05:30.
3. **Live Clock:** shows NOW/NEXT without changing the master plan.
4. **Alarm Engine:** reminders for timetable starts; uploaded `loud.mp3` can loop until stopped.
5. **Auto-Backlog:** overlays 45-minute repair blocks only in genuine free gaps; it does not rewrite the master schedule.
6. **Revision Queue:** current-date 2-3-5-7 retrieval passes, protected from Sunday mocks.
7. **Error Bank / NCERT / Formula / Reaction Vaults:** repair weak areas instead of endlessly rereading.

## Important browser alarm limitation
Browser/PWA timers are not equivalent to an OS-native alarm clock. They are reliable only while the browser/PWA is allowed to run; the OS may suspend or terminate a web page. Test alarms before relying on them.

## Syllabus warning
The included chapter list is a planning baseline and must be checked against the official NEET UG 2027 syllabus when published. Do not spend major study time on any chapter that the official 2027 syllabus removes.

## Backup
Use Backup / Restore regularly and keep copies outside the browser's local storage.


## 650+ Performance Engine
- Phase-based workload: foundation, consolidation, final 60-day exam mode, and final 14-day taper.
- Progressive score gates toward 650+: Biology 330+, Physics 160+, Chemistry 160+.
- Daily question/PYQ quota logging.
- Mock performance gates using score, subject scores, accuracy, careless errors and unfinished work.
- Weak-subject prioritization from latest mock section scores.
- Mock backlog feeds the automatic repair scheduler.
- Final taper reduces the emphasis on new learning and protects accuracy, recall and sleep.

## Supabase permanent storage

This build supports optional permanent cloud sync through Supabase. LocalStorage remains the offline cache; when a user signs in, the planner syncs completed tasks and other progress to a private `planner_state` row.

### Setup
1. Create a Supabase project.
2. In Supabase SQL Editor, run `supabase-schema.sql` from this ZIP.
3. In Supabase Auth, enable Email/Password sign-in.
4. Open the app → **Settings → Permanent Cloud Storage — Supabase**.
5. Enter the project's URL and **publishable/anon key** (never a `service_role` key).
6. Save the configuration, then create/sign in to your account.

Synced data includes completed task checkboxes, mock/day scorecards, mistakes, NCERT tracker, formula/reaction vaults, alarms, study logs, backlog plan and Wake Coach settings. The app uses Supabase Auth plus Postgres Row Level Security so each signed-in account can access only its own planner state.

The app is still usable offline; cloud sync is optional. If Supabase is unavailable, local progress continues to work and can still be exported from Backup / Restore.
"# NEET2027" 
