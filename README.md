univim
=================

Operate Unity from Vim

## Usage

- Play

```vim
:UnivimPlay
```

- Find

```vim
:UnivimFind
```

- Menu (You can use original menu)

```vim
:UnivimMenu YOUR_ORIGINAL_MENU
```

## Install

```
NeoBundle 'zebult/univim'
```

## Key mappings

```vim
nnoremap Up :<C-u>UnivimPlay<CR>
nnoremap U/ :<C-u>UnivimFind<CR>
nnoremap Um :<C-u>UnivimMenu YOUR_ORIGINAL_MENU<CR>
```

## Reference

[tokorom/xcode-actions.vim](https://github.com/tokorom/xcode-actions.vim)
