---
# =============================================================================
# L172 Worksheet 1 — dialogue submission template
# =============================================================================
# Rename this file to:  L172_<CRSid>_worksheet1_dialogue.md
#   (CRSid appears in the Moodle *filename* only.)
#
# Do NOT put your name or CRSid anywhere below. Marking is anonymous.
# Fill every field. Delete the explanatory comments if you like; keep the keys.
# =============================================================================

# Leave as W1 (this worksheet).
worksheet: W1

# Short title; you may leave this as-is.
title: "Worksheet 1: Socratic dialogue"

# If available your candidate number only (Moodle blind-grading / course-office number).
# Example: candidate_number: "1234A"
# Never put your CRSid or real name here.
candidate_number: "REPLACE_WITH_CANDIDATE_NUMBER"

# Who makes the model you used for the *submitted* conversation.
# Examples: OpenAI / Anthropic / Google / Mistral / local
llm_provider: "REPLACE_WITH_PROVIDER"

# Exact model name and version (or model id) for that same conversation.
# Examples: "gpt-5-2025-08-07" / "claude-sonnet-4-20250514" / "gemini-2.5-pro"
# Must match the single model used for all ten turns below.
llm_model: "REPLACE_WITH_MODEL_NAME_AND_VERSION"

# How you talked to it (web UI, API, notebook, etc.).
# Examples: "ChatGPT web" / "Claude.ai" / "API" / "Cursor chat"
llm_interface: "REPLACE_WITH_INTERFACE"

# Date of the submitted conversation (ISO), e.g. 2026-10-15
# (Named conversation_date — not date — so site builds ignore this placeholder.)
conversation_date: "REPLACE_WITH_YYYY-MM-DD"

# Must be 10. Do not add or remove exchanges.
n_exchanges: 10
---

# Worksheet 1: dialogue

## How to fill this file

You are **Skepticus** (the skeptical questioner). The LLM is the interlocutor — it answers; it does not set the agenda.

Submit **exactly ten** exchanges from **one continuous conversation** with **one** model. Do not stitch turns from different chats or switch models mid-file. Planning may use any tools; this file is only the final exchange.

### Body format (use this for every exchange)

Each exchange has two labelled blocks:

1. **`### User`** — your question or probe (the prompt you typed).
2. **`### LLM`** — the model's reply, pasted in full (or a faithful cut if the UI truncates; do not paraphrase).

Keep the exchange headings (`## Exchange 1` … `## Exchange 10`). Put the text under `### User` / `### LLM` as ordinary markdown paragraphs (or a fenced code block if you prefer a literal paste). Do not nest other `##` headings inside an exchange.

Suggested opening (see the worksheet brief for detail):

- **Exchange 1 (curiosity):** why Shannon called his measure *entropy*.
- **Exchange 2 (skepticism):** press anecdote against Shannon's Tolman footnote and the Wiener–Gibbs trail.
- **Exchanges 3–10:** your thread.

---

## Exchange 1

### User

<!-- Paste your first prompt here (curiosity: why Shannon used "entropy"). -->



### LLM

<!-- Paste the model's reply here in full. -->



## Exchange 2

### User

<!-- Paste your second prompt here (skepticism: Tolman / Wiener / Gibbs). -->



### LLM

<!-- Paste the model's reply here in full. -->



## Exchange 3

### User



### LLM



## Exchange 4

### User



### LLM



## Exchange 5

### User



### LLM



## Exchange 6

### User



### LLM



## Exchange 7

### User



### LLM



## Exchange 8

### User



### LLM



## Exchange 9

### User



### LLM



## Exchange 10

### User



### LLM

