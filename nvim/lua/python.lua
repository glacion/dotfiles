local lspconfig = require 'lspconfig'
local configs = require 'lspconfig/configs'
local completion = require 'completion'

configs.yapls = {
  default_config = {
    cmd = {'yapls'};
    filetypes = {'python'};
    root_dir = lspconfig.util.root_pattern(
      '.venv',
      'pyproject.toml',
      'requirements.txt',
      'setup.py',
      'setup.cfg',
      '.git'
      );
    on_attach=completion.on_attach;
  };
}

lspconfig.yapls.setup{}

