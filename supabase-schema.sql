-- NEET 2027 Top-Rank OS — Supabase persistent storage
-- Run this once in Supabase SQL Editor.
-- IMPORTANT: never put a service_role key in the browser. The app uses only the publishable/anon key.

create table if not exists public.planner_state (
  user_id uuid primary key references auth.users(id) on delete cascade,
  state jsonb not null default '{}'::jsonb,
  updated_at timestamptz not null default now()
);

alter table public.planner_state enable row level security;

revoke all on table public.planner_state from anon;
grant select, insert, update, delete on table public.planner_state to authenticated;

drop policy if exists "Users can read their own planner state" on public.planner_state;
drop policy if exists "Users can insert their own planner state" on public.planner_state;
drop policy if exists "Users can update their own planner state" on public.planner_state;
drop policy if exists "Users can delete their own planner state" on public.planner_state;

create policy "Users can read their own planner state"
  on public.planner_state for select
  to authenticated
  using ((select auth.uid()) = user_id);

create policy "Users can insert their own planner state"
  on public.planner_state for insert
  to authenticated
  with check ((select auth.uid()) = user_id);

create policy "Users can update their own planner state"
  on public.planner_state for update
  to authenticated
  using ((select auth.uid()) = user_id)
  with check ((select auth.uid()) = user_id);

create policy "Users can delete their own planner state"
  on public.planner_state for delete
  to authenticated
  using ((select auth.uid()) = user_id);

create index if not exists planner_state_user_id_idx on public.planner_state(user_id);
