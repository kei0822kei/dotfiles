" please copy to ~/.mydot/nvim/bookmark.vim

let s:menus = {}
let s:menus.projects = { 'description': 'switch projects' }
let s:menus.projects.command_candidates = [
      \   ['mydot', 'Defx ~/.mydot/nvim'],
      \   ['twinpy', 'Defx ~/src/github.com/kei0822kei/twinpy'],
      \ ]
call denite#custom#var('menu', 'menus', s:menus)
