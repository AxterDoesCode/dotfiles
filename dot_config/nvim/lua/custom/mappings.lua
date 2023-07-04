local M = {}
-- Bad things happen when you use Q
M.disabled = {
  n = {
      ["Q"] = ""
  }
}

M.general = {
  n = {
    ["<C-h>"] = {"<cmd> TmuxNavigateLeft<CR>", "window left"},
    ["<C-l>"] = {"<cmd> TmuxNavigateRight<CR>", "window right"},
    ["<C-j>"] = {"<cmd> TmuxNavigateDown<CR>", "window down"},
    ["<C-k>"] = {"<cmd> TmuxNavigateUp<CR>", "window up"},
    ["<C-d>"] = {"<C-d>zz"},
    ["<C-u>"] = {"<C-u>zz"},
    ["n"] = {"nzzzv"},
    ["N"] = {"Nzzzv"},
    ["J"] = {"mzJ`z"},
    ["<leader>y"] = {"\"+y", "Yank to system clipboard`"},
    ["<leader>Y"] = {"\"+Y", "Yank line to system clipboard"},
    ["<leader>d"] = {"\"_d", "Delete to void register"},
    ["<C-c>"] = {"<Esc>", "Overwriting NVChad Ctrl+c to copy whole file"},
  },

  x = {
    ["<leader>p"] = {"\"_dP", "Paste without removing buffer"}
  },

  v = {
    ["J"] = {":m '>+1<CR>gv=gv", "Move highlighted text down"},
    ["<leader>y"] = {"\"+y", "Yank to system clipboard"},
    ["K"] = {":m '<-2<CR>gv=gv", "Move highlighted text up"},
    ["<leader>d"] = {"\"_d", "Delete to void register"}
  },

  i = {
    ["<C-c>"] = {"<Esc>"}
  }
}

M.dap = {
  plugin = true,
  n = {
    ["<leader>db"] = {
      "<cmd> DapToggleBreakpoint <CR>",
      "Add breakpoint at line"
    },
    ["<leader>dus"] = {
      function ()
        local widgets = require('dap.ui.widgets');
        local sidebar = widgets.sidebar(widgets.scopes);
        sidebar.open();
      end,
      "Open debugging sidebar"
    }
  }
}

M.dap_go = {
  plugin = true,
  n = {
    ["<leader>dgt"] = {
      function()
        require('dap-go').debug_test()
      end,
      "Debug go test"
    },
    ["<leader>dgl"] = {
      function()
        require('dap-go').debug_last()
      end,
      "Debug last go test"
    }
  }
}

M.gopher = {
  plugin = true,
  n = {
    ["<leader>gsj"] = {
      "<cmd> GoTagAdd json <CR>",
      "Add json struct tags"
    },
    ["<leader>gsy"] = {
      "<cmd> GoTagAdd yaml <CR>",
      "Add yaml struct tags"
    }
  }
}
return M
