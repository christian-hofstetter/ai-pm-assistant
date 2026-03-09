# AI-Powered Product Management Workshop

A hands-on half-day workshop (~3 hours including breaks) for Product Owners and Scrum Masters.
Learn to use AI + proven PM frameworks to make better product decisions — faster.

Powered by the [PM Skills Marketplace](https://github.com/phuryn/pm-skills): 65 skills, 36 workflows, 8 plugins covering discovery, strategy, execution, go-to-market, and growth.

## Before the workshop

Follow the setup guide: [SETUP.md](SETUP.md)

Budget 20–30 minutes. You'll need Kiro IDE installed and PM Skills copied into the project.

## Workshop Flow

| Block | What | Time |
|-------|------|------|
| 1 | [Setup & Context](exercises/01-setup-and-context.md) — Describe your product and team | 30 min |
| 2 | [Discovery & Strategy](exercises/02-discovery-and-strategy.md) — Run a discovery cycle, create a strategy | 40 min |
| — | Break ☕ | 15 min |
| 3 | [Your Backlog Meets AI](exercises/03-backlog-meets-ai.md) — Analyze and improve your backlog (with Jira if connected) | 40 min |
| 4 | [Pick Your Adventure](exercises/04-pick-your-adventure.md) — Choose exercises that match your needs | 35 min |
| 5 | Show & Tell — Share what you created, discuss takeaways | 15 min |

## Project Structure

```
ai-pm-assistant/
├── .kiro/
│   ├── settings/mcp.json.example  ← Jira MCP config template (copy to mcp.json)
│   ├── steering/                 ← AI context (auto-loaded)
│   └── skills/                   ← PM skills (installed during setup)
├── context/
│   ├── my-product.md             ← YOU FILL THIS IN
│   └── my-team.md                ← YOU FILL THIS IN
├── exercises/                    ← Step-by-step guided exercises
├── deliverables/                 ← AI-generated output goes here
├── examples/                     ← Sample deliverable to see what "good" looks like
├── .env.example                  ← Copy to .env, add your Jira credentials
├── SETUP.md                      ← Pre-workshop installation guide
├── TROUBLESHOOTING.md            ← Common issues and fixes
└── README.md
```

## Having issues?

See [TROUBLESHOOTING.md](TROUBLESHOOTING.md) for common problems and fixes.

## Credits

- PM Skills by [Paweł Huryn](https://github.com/phuryn/pm-skills) (The Product Compass)
- Frameworks by Teresa Torres, Marty Cagan, Alberto Savoia, Roman Pichler, and others
