# learning-vim
My Vim journey.

## Config paths
- [ ] Mac = `/Users/gregorio.costa/.config/nvim`
- [ ] Ubuntu = `/home/greg/.config/nvim`
## How to resources

- [ ] [How to rename a variable](https://vi.stackexchange.com/questions/18004/renaming-variables)

## To try out

- [ ] https://github.com/folke/which-key.nvim
- [ ] https://www.amazon.co.uk/Practical-Vim-Second-Speed-Thought/dp/1680501275
- [ ] https://www.amazon.co.uk/Modern-Vim-Drew-Neil/dp/168050262X/ref=pd_bxgy_2/258-9807863[…]7a-aee0-f3dd4841f208&pd_rd_wg=6lP69&pd_rd_i=168050262X&psc=1

## Commands

- [ ] :WhichKey <Leader>
- [ ] :Maps - shows current mapps visually
- [ ] :PlugInstall - install newvim plugin

## ShortCuts

### Manipulation
- [ ] `Capital J` bring next line to current line
- [ ] **Intent multiple lines**: `V`, select the lines, `>`. Use `.` to repeat. 
- [ ] Delete till a `"`: `ft"`
- [ ] Rename by COC - `Leader + rn`
- [ ] Fix by COC - `Loader + do`

 
### Navigation
- [ ] `Shift + H/M/L` to jumb top, middle, bottom of the screen
- [ ] `Ctrl + J/H` to select elements from pop up (e.g. autocomplete)
- [ ] After you search `f"`, you can go to the next `"` with `;`
- [ ] Go next error by COC `[g` or previus `]g`
- [ ] Go to n split: ``n ctrl-w ctrl-w``
 
### NerdTree
- [ ] `m` create/edit/manage a node
- [ ] `o` open a folder

### Rearange splits
- [ ] `CTRL-W K` (i.e., Ctrl+W Shift+K), with H = left, J = bottom, K = top, L = right Move split to different position

### Registers
- [ ] `:reg` see register states
- [ ] `"0p` paster from register 0 (visual mode)
- [ ] `ctrl+r 0` paste from register 0(insert mode)
