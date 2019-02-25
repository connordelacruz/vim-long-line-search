# long-line-search.vim

Search for lines greater than a certain length in a file.


## Installation

Using [pathogen](https://github.com/tpope/vim-pathogen):

```
cd ~/.vim/bundle/
git clone https://github.com/connordelacruz/vim-long-line-search
```


## Usage

To search for lines greater than `[length]` and jump to the first match:

```
:LongLineSearch [length]
```

Use `n`/`N` to jump to next/previous match. Defaults to the value of
`g:LongLineSeachDefaultLength` if `[length]` is not provided. See `:help
long-line-search` for more details.

