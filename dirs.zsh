function changeCodeContext() {
  cd $1 &&
    code $1 -n
}

# Add aliases for different code contexts.
alias codedot="changeCodeContext ~/Dev/dotfiles/"
alias coderlcompl="changeCodeContext ~/Dev/UoE/RL/rl-complete-system"
alias coderl="changeCodeContext ~/Dev/UoE/RL/reinforcement-learning"
alias codeiqps="changeCodeContext ~/Dev/UoE/IQPS/introduction-to-quantum-programming-and-semantics"
alias codeagta="changeCodeContext ~/Dev/UoE/AGTA/algorithmic-game-theory-and-applications"
alias codemlp="changeCodeContext ~/Dev/UoE/MLP/rlcard-mlp"
alias codelibrechat="changeCodeContext ~/Dev/LibreChat"