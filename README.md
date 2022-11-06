# neovim-config

## Requirements

* neovim
* vim-plug
* nodejs (required by Coc)
* universal-ctags (required by Tagbar)
* ripgrep (required by Telescope live\_grep)
* fd (_optional_: required by Telescope finder)
* lazygit (_optional_: required by toggleterm)

## Installation (Linux)

1. **neovim**  [Github](https://github.com/neovim/neovim/wiki/Installing-Neovim)  
[_Build Neovim from source_](https://github.com/neovim/neovim/wiki/Building-Neovim)  

2. **vim-plug**  [Github](https://github.com/junegunn/vim-plug)  

3. **nodejs**  [Official cite](https://nodejs.org/en/)  
[_Install Node.js on Windows Subsystem for Linux (WSL2)_](https://learn.microsoft.com/en-us/windows/dev-environment/javascript/nodejs-on-wsl)  

4. **universal-ctags**  [Github](https://github.com/universal-ctags/ctags)  

5. **ripgrep** [Github](https://github.com/BurntSushi/ripgrep)  

6. **fd** _optional_ [Github](https://github.com/sharkdp/fd)  

7. **lazygit** _optional_ [Github](https://github.com/jesseduffield/lazygit)  

## Coc extensions

* C/C++/OC: [coc-clangd](https://github.com/clangd/coc-clangd)  
  prerequisite: clangd  
  formatting issue: See https://github.com/clangd/coc-clangd/issues/345, https://github.com/clangd/coc-clangd/issues/39  
  ```yaml
  # .clang-format: 
  IndentWidth: 4
  ```  
  
* Python: [coc-pyright](https://github.com/fannheyward/coc-pyright)  
  code formatter: [black](https://github.com/psf/black)  
  
* Ruby: [coc-solargraph](https://github.com/neoclide/coc-solargraph)  

* [coc-spell-checker](https://github.com/iamcco/coc-spell-checker)  
