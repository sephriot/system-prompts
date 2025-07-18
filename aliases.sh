#!/bin/zsh

PROMPTS_DIR=~/system-prompts

alias claude_pr='(){ claude "$(cat $PROMPTS_DIR/PullRequest.md Commit intstuctions: $PROMPTS_DIR/Commit.md Review instructions: $PROMPTS_DIR/ReviewPR.md | sed "s/<REASON>/$1/")"; }'
alias claude_commit='(){ claude "$(cat $PROMPTS_DIR/Commit.md)" }'
alias claude_review='(){ claude "Use Github CLI to retrieve $1 PR details then conduct a review of the PR using the following prompt: $(cat $PROMPTS_DIR/ReviewPR.md)" }'
