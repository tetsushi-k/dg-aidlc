# AGENTS.md

## Cursor Cloud specific instructions

### What this repository is

DG-AIDLC is a **documentation / rules kit**, not a runnable application. It contains
only Markdown (`.md`) and Cursor rule (`.mdc`) files:

- `cursor/rules/*.mdc` — the AI-DLC workflow and DG (Domain/TDD) guard rules
- `aidlc-rule-details/` — per-phase rule detail docs referenced by the workflow
- `templates/aidlc-docs/` — starter templates copied into a target repo
- `adapters/` — stack-specific placement notes

There is **no application code, no package manager, no build system, no test suite,
and no services to run**. Consequently there is nothing to install; the startup
update script is intentionally a no-op.

### How the kit is "used" (its core functionality)

The kit is consumed by copying it into a *target* product repo, per `README.md`:

- `cursor/rules/*.mdc` → target `.cursor/rules/`
- `aidlc-rule-details/` → target `.aidlc-rule-details/`
- `templates/aidlc-docs/` → target `aidlc-docs/`

`cursor/rules/ai-dlc-workflow.mdc` then loads rule-detail files (e.g.
`common/process-overview.md`, `inception/workspace-detection.md`) relative to the
resolved rule-details directory (`.aidlc-rule-details/` for Cursor).

### Validating changes (there is no lint/test/build)

When editing rules/templates, the meaningful check is **internal-reference integrity**:
every backticked rule-detail path referenced by the `.mdc` workflow must exist in
`aidlc-rule-details/`, and each `extensions/**/<name>.opt-in.md` must have a sibling
`<name>.md`. A simple `grep`-based resolver over `ai-dlc-workflow.mdc` is sufficient.

### Non-obvious gotcha

`aidlc-docs/aidlc-state.md` and `aidlc-docs/audit.md` are **generated at runtime** by
the workflow inside a target repo — they are deliberately *not* shipped in this kit.
Do not treat references to them as broken links.
