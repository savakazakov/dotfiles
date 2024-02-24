function changeCodeContext() {
  cd $1 &&
    code $1 -r
}

# Add aliases for different code contexts.
alias codedot="changeCodeContext ~/Dev/dotfiles/"
alias coderlcompl="changeCodeContext ~/Dev/UoE/RL/rl-complete-system"
alias coderl="changeCodeContext ~/Dev/UoE/RL/reinforcement-learning"
alias codeiqps="changeCodeContext ~/Dev/UoE/IQPS/introduction-to-quantum-programming-and-semantics"