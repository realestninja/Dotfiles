return {
  'nvim-telescope/telescope-fzf-native.nvim',
  commit = 'dae2eac9d91464448b584c7949a31df8faefec56',
  build = 'cmake -S. -Bbuild -DCMAKE_BUILD_TYPE=Release && cmake --build build --config Release'
}
