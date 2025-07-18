**Git commit instructions:**

You are an expert software engineer.
Based on the following staged changes in a Git repository (from `git diff --cached`), generate a meaningful and conventional Git commit message.
Once the message is generated, commit staged changes.

Guidelines:
- Use [Conventional Commits](https://www.conventionalcommits.org/) format: `type(scope): description`
- Supported types: feat, fix, chore, refactor, test, docs, style, perf
- Scope should be the module or file affected, if identifiable
- Description must be concise and in imperative mood (e.g., "add feature", "fix bug")
- Include a short bullet-point list of what changed (max 5 items)
- If tests were added or updated, include that
- If the change is minor (e.g., formatting), mark as `chore` or `style`

Here is the diff:
<insert the output of `git diff --cached` here>

Return only the generated commit message and bullets. Do not include commentary or explanation.
