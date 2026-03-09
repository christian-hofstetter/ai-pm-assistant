# Block 3: Your Backlog Meets AI

**Time:** 40 minutes
**PM Skills used:** user-stories, test-scenarios, prioritization-frameworks, retro
**Jira MCP:** used if connected (otherwise manual input works fine)

## Goal

Bring your real backlog into the conversation. Let the AI analyze it, improve your stories, and generate acceptance criteria.

---

## Step 1: Get your backlog into the conversation (10 min)

### If you have Jira connected (MCP)

Ask Kiro to pull your backlog:

```
List the projects I have access to in Jira.
```

> **Not working?** Check that VPN is connected and the MCP server shows as "connected" in the
> Kiro MCP panel (look for the green dot). If it's red, see [TROUBLESHOOTING.md](../TROUBLESHOOTING.md).

Then pick your project:

```
Show me the top 20 issues from project [YOUR-PROJECT-KEY], ordered by priority.
Include: summary, status, type, and priority.
```

Want to go deeper? Try:

```
Show me all issues in the current sprint for project [YOUR-PROJECT-KEY].
```

### If you don't have Jira connected

No problem — this works just as well. Open `context/my-product.md` and make sure you've filled in the "Current Backlog" section with your top 10-20 items. Then tell the AI:

```
Read my product context. I've listed my current backlog items there.
Use those for the exercises below.
```

---

## Step 2: Backlog Health Check (10 min)

```
Analyze my current backlog and give me:

1. **Coverage gaps** — what's missing based on my product strategy?
2. **Balance check** — ratio of new features vs. bugs vs. tech debt vs. discovery
3. **Story quality** — which items are too vague, too large, or missing context?
4. **Priority sanity check** — do the priorities align with the strategy?
5. **Quick wins** — any low-effort, high-impact items buried in the backlog?

Be specific. Reference actual backlog items by name.

Save to deliverables/backlog-health-check.md
```

---

## Step 3: Upgrade Your Stories (15 min)

Pick 3 backlog items that need improvement. Paste them (or reference them from Jira) and ask:

```
Take these 3 backlog items and upgrade them:

[Paste your 3 items here, or say "use items X, Y, Z from the Jira backlog above"]

For each item, create:
1. A proper User Story: "As a [user], I want [action], so that [benefit]"
2. Acceptance Criteria in Given/When/Then format (2-3 per story)
3. A Definition of Ready checklist
4. Suggested test scenarios (happy path + edge cases)

Save to deliverables/upgraded-stories.md
```

---

## Step 4: Sprint Retrospective (5 min, if time allows)

If you have notes from your last retro or sprint review, paste them and try:

```
Here are the notes from our last sprint retrospective:

[Paste your retro notes]

Analyze them and give me:
1. Recurring patterns (things that keep coming up)
2. Root causes behind the top issues
3. 3 concrete experiment proposals to improve next sprint
4. A suggested retro format for next time

Save to deliverables/retro-analysis.md
```

---

## Next

→ Move to [04-pick-your-adventure.md](04-pick-your-adventure.md)
