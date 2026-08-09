" Desired linters
let b:ale_linters = ['analyzer', 'cargo']
let b:ale_fixers = ['rustfmt']

" Use Rust clippy if it is installed; otherwise, use cargo check
" Set this only once per instance of vim.
if !exists("g:ale_rust_cargo_use_clippy")
  let g:ale_rust_cargo_use_clippy = executable('cargo-clippy')
  if !g:ale_rust_cargo_use_clippy
    let g:ale_rust_cargo_use_check = 1
  endif
endif

"Use --test when running cargo check
let b:ale_rust_cargo_check_tests = 1
