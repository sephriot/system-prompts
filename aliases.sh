#!/bin/zsh

PROMPTS_DIR=~/system-prompts

alias claude_pr='(){
  local reason="$1"
  local prompt="Key goal: create Pull Request

$(cat $PROMPTS_DIR/PullRequest.md)

Commit instructions:
$(cat $PROMPTS_DIR/Commit.md)

Review instructions:
$(cat $PROMPTS_DIR/ReviewPR.md)"
  
  # Replace <REASON> placeholder with the provided reason
  prompt=$(echo "$prompt" | sed "s/<REASON>/$reason/")
  
  claude "$prompt"
}'
alias claude_commit='(){ claude "$(cat $PROMPTS_DIR/Commit.md)" }'
alias claude_review='(){ claude "Use Github CLI to retrieve $1 PR details then conduct a review of the PR using the following prompt: $(cat $PROMPTS_DIR/ReviewPR.md)" }'
