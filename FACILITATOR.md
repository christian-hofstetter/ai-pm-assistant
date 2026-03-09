# Facilitator Guide

Notes for running the workshop. Not included in participant instructions.

## Agenda (3h total)

| Time | Block | What to do |
|------|-------|------------|
| 0:00 | Welcome | Intro, check everyone has Kiro + skills working |
| 0:10 | Block 1 | Participants fill in product & team context |
| 0:40 | Block 2 | Discovery cycle + strategy canvas |
| 1:20 | Break | 15 minutes |
| 1:35 | Block 3 | Backlog + Jira exercises |
| 2:15 | Block 4 | Pick your adventure (free exploration) |
| 2:50 | Block 5 | Show & tell, takeaways |
| 3:05 | End | |

## Before the workshop

- Send SETUP.md instructions at least 3 days in advance
- Remind participants the day before: install Kiro, clone the repo, run the skills setup
- Have the Jira URL and PAT creation link ready to share on screen
- Create a fresh PAT yourself and test the full flow end-to-end
- Prepare a filled-in example product context (your own product or a fictional one) to demo

## Opening (10 min)

- Quick round: name, product, role
- Show the project structure in Kiro — explain what steering files do (auto-loaded context)
- Demo: fill in 2-3 fields in `my-product.md`, then ask the AI the icebreaker prompt
- Show that the AI actually reads the context (not generic output)

## Block 1: Common issues

- **Context too vague:** Walk around, check screens. If someone wrote "we do software", nudge them to be specific
- **Skills not loaded:** Have them re-run the setup script or check `.kiro/skills/` isn't empty
- **Icebreaker falls flat:** Their context is too thin. Tell them to add more detail and try again

## Block 2: Tips

- Let people choose between Strategy Canvas (POs) and Value Proposition (SMs)
- Encourage iteration: "Don't accept the first draft. Push back on the AI."
- Walk around and highlight interesting outputs to the group

## Break (15 min)

Good time to help anyone with Jira connection issues.

## Block 3: Jira troubleshooting

- Most common issue: VPN not connected, or uvx path not set on Windows
- Have TROUBLESHOOTING.md ready to share
- For participants without Jira: make sure they pasted backlog items into `my-product.md`
- The backlog health check exercise works well even with manually pasted items

## Block 4: Choice paralysis

- If people freeze at the menu, recommend:
  - POs → start with C (OKRs) or B (PRD)
  - SMs → start with F (Stakeholder Map) or H (Pre-Mortem)
- Encourage pairs from the same team to do complementary exercises

## Block 5: Show & Tell

- Ask 3-4 volunteers (or pick them)
- 2 minutes each: what did you create, one insight you're taking back
- Close with: "What will you use on Monday?"

## After the workshop

- Remind participants: the skills stay in their `.kiro/skills/` folder — they can keep using them
- Share the pm-skills repo link for updates
- Collect feedback: what worked, what didn't, what exercises were most valuable
