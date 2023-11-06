# TMUX 👨‍💻
- This tmux configuration uses the Tmux Plugin Manager [TPM](https://github.com/tmux-plugins/tpm).
- My configuration currently features vim navigation, a color theme and some keybind changes among other things.

## Requirements
### 1. Install TPM
- [(Taken from the tpm github README.md)](https://github.com/tmux-plugins/tpm#readme)

Requirements: `tmux` version 1.9 (or higher), `git`, `bash`.

Clone TPM:
```bash
git clone https://github.com/tmux-plugins/tpm ~/.tmux/plugins/tpm
```

## Install this config
(If not done already) create a tmux config folder:
```bash
mkdir ~/.config/tmux
```

Clone this repo:
```bash
git clone https://github.com/Top1055/dotfiles && cd dotfiles
```

move the tmux files into the config:
```bash
mv tmux ~/.config/
```

(optionally) delete the cloned repo.