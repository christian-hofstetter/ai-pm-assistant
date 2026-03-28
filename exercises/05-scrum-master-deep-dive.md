# Block 5: Scrum Master Deep Dive

**Time:** 30 minutes
**Skill:** [borghei/Claude-Skills — Scrum Master](https://agentskills.so/skills/borghei-claude-skills-scrum-masterquestions)
**What it does:** Data-driven sprint analytics, Monte Carlo velocity forecasting, retrospective pattern analysis, capacity planning, and team coaching frameworks.

## Goal

Get hands-on with a dedicated Scrum Master AI skill that goes beyond the PM skills you've used so far. This skill brings sprint health scoring, velocity forecasting, and retro analysis — the kind of data-driven tooling that makes sprint planning and coaching conversations sharper.

> **This block is designed for Scrum Masters**, but POs who want to understand their team's delivery dynamics are welcome too.

---

## Step 0: Install the Scrum Master Skill (2 min)

Paste into Kiro chat:

```
Clone the repo https://github.com/borghei/Claude-Skills.git into the parent folder
(one level up from this project), then copy the folder
project-management/scrum-master/ into .kiro/skills/scrum-master/
```

Verify it's loaded:

```
What do you know about sprint health scoring and velocity forecasting?
```

If Kiro references the 6-dimension health model or Monte Carlo simulation, you're good.

---

## Exercise 5A: Sprint Health Check (10 min)

Use your real sprint data or let the AI generate a realistic sample based on your team context.

```
Using my team context, simulate 6 sprints of realistic data for my team
(team size, sprint length, and velocity range should match what I described).

Then run a sprint health check across these 6 dimensions:
1. Commitment Reliability — are we hitting sprint goals?
2. Scope Stability — how much scope changes mid-sprint?
3. Blocker Resolution — how fast do we clear impediments?
4. Ceremony Engagement — are ceremonies effective?
5. Story Completion Distribution — full stories vs. partial?
6. Velocity Predictability — how consistent is delivery?

Give me an overall health score (0-100) with a grade,
and flag the top 2 dimensions I should focus on improving.

Save to deliverables/sprint-health-check.md
```

### What to look for

- Does the health score feel right for your team? If not, adjust the simulated data and re-run
- Which dimension scored lowest? Does that match your gut feeling?
- Try: "What would it take to move our health score from [X] to 80?"

---

## Exercise 5B: Velocity Forecast & Sprint Planning (10 min)

```
Based on the sprint data from the health check, run a velocity forecast:

1. Show rolling averages (3-sprint and 6-sprint windows)
2. Classify our velocity volatility (low / medium / high)
3. Run a Monte Carlo forecast for the next sprint with confidence intervals
   (50%, 70%, 85%, 95%)
4. Cross-reference with our team's capacity (account for any known PTO or
   part-time allocations from my team context)
5. Recommend a sustainable commitment level for next sprint

Save to deliverables/velocity-forecast.md
```

### Follow-up prompts to try

- "What if [team member] is on PTO next sprint? Recalculate capacity."
- "Our stakeholders want us to commit to 30 points. What's the risk?"
- "How many sprints until we can reliably predict our velocity within ±10%?"

---

## Exercise 5C: Retrospective Pattern Analysis (8 min)

Paste notes from a real retro, or let the AI work with your team context:

```
Here are themes from our last 3 retrospectives:

[Paste your retro notes, OR say: "Generate realistic retro themes based on
my team context and the sprint health analysis above"]

Analyze and give me:
1. Recurring themes — what keeps coming up sprint after sprint?
2. Action item completion rate — are we actually following through?
3. Sentiment trend — is morale improving or declining?
4. Team maturity stage (Forming / Storming / Norming / Performing)
5. Top 2-3 action items for next retro (capped at what we can realistically complete)

Save to deliverables/retro-analysis.md
```

### Bonus: Coaching recommendation

```
Based on the team maturity stage you identified, what specific coaching
interventions should I focus on for the next 4 weeks?
Include concrete actions, not just theory.
```

---

## Reflect (2 min)

- Did the health score or velocity forecast reveal something you hadn't quantified before?
- Would you bring the sprint health dimensions into your next retro as a discussion starter?
- What's one metric from this exercise you'll start tracking on Monday?

---

## Next

→ Head back to the group for Block 6: Show & Tell.

Bring your sprint health check or velocity forecast — you'll have 2 minutes to share what you created and one insight you're taking back to your team.
