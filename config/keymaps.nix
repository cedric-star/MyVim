{
  globals.mapleader = " ";

  keymaps = [
    # ==========================================
    # NAVIGATION (Colemak/Custom Layout)
    # ==========================================
    { key = "j"; mode = ["n" "v" "o"]; action = "h"; options.noremap = true; }
    { key = "ö"; mode = ["n" "v" "o"]; action = "l"; options.noremap = true; }
    { key = "k"; mode = ["n" "v" "o"]; action = "j"; options.noremap = true; }
    { key = "l"; mode = ["n" "v" "o"]; action = "k"; options.noremap = true; }

    # ==========================================
    # MODUS-WECHSEL
    # ==========================================
    { key = "nn"; mode = "i"; action = "<Esc>"; options.noremap = true; }
    { key = "ii"; mode = "n"; action = "i"; options.noremap = true; }
    { key = "m"; mode = "n"; action = "v"; options.noremap = true; }

    # ==========================================
    # CLIPBOARD-OPERATIONEN
    # ==========================================
    { key = "c"; mode = ["n" "v"]; action = "y"; options.noremap = true; }
    { key = "x"; mode = ["n" "v"]; action = "d"; options.noremap = true; }
    { key = "v"; mode = ["n" "v"]; action = "p"; options.noremap = true; }
    { key = "V"; mode = ["n" "v"]; action = "P"; options.noremap = true; }

    # ==========================================
    # UNDO/REDO
    # ==========================================
    { key = "<C-z>"; mode = "n"; action = "u"; options.noremap = true; }
    { key = "<C-z>"; mode = "i"; action = "<C-o>u"; options.noremap = true; }
    { key = "<C-y>"; mode = "n"; action = "<C-r>"; options.noremap = true; }
    { key = "<C-y>"; mode = "i"; action = "<C-o><C-r>"; options.noremap = true; }

    # ==========================================
    # NORMAL MODE - DEAKTIVIERTE TASTEN
    # ==========================================
    { key = "h"; mode = "n"; action = "<Nop>"; options.noremap = true; }
    { key = ";"; mode = "n"; action = "<Nop>"; options.noremap = true; }
    { key = ","; mode = "n"; action = "<Nop>"; options.noremap = true; }
    { key = "w"; mode = "n"; action = "<Nop>"; options.noremap = true; }
    { key = "b"; mode = "n"; action = "<Nop>"; options.noremap = true; }
    { key = "e"; mode = "n"; action = "<Nop>"; options.noremap = true; }
    { key = "$"; mode = "n"; action = "<Nop>"; options.noremap = true; }
    { key = "0"; mode = "n"; action = "<Nop>"; options.noremap = true; }
    { key = "^"; mode = "n"; action = "<Nop>"; options.noremap = true; }
    { key = "OOO"; mode = ["n" "v" "o"]; action = "G"; options.noremap = true; }
    { key = "UUU"; mode = ["n" "v" "o"]; action = "gg"; options.noremap = true; }
    { key = "s"; mode = "n"; action = "<Nop>"; options.noremap = true; }
    { key = "/"; mode = "n"; action = "<Nop>"; options.noremap = true; }
    { key = "?"; mode = "n"; action = "<Nop>"; options.noremap = true; }
    { key = "n"; mode = "n"; action = "<Nop>"; options.noremap = true; }
    { key = "N"; mode = "n"; action = "<Nop>"; options.noremap = true; }
    { key = "*"; mode = "n"; action = "<Nop>"; options.noremap = true; }
    { key = "#"; mode = "n"; action = "<Nop>"; options.noremap = true; }
    { key = "y"; mode = "n"; action = "<Nop>"; options.noremap = true; }
    { key = "d"; mode = "n"; action = "<Nop>"; options.noremap = true; }
    { key = "p"; mode = "n"; action = "<Nop>"; options.noremap = true; }
    { key = "P"; mode = "n"; action = "<Nop>"; options.noremap = true; }
    { key = "a"; mode = "n"; action = "<Nop>"; options.noremap = true; }
    { key = "A"; mode = "n"; action = "<Nop>"; options.noremap = true; }
    { key = "i"; mode = "n"; action = "<Nop>"; options.noremap = true; }  # Achtung: "ii" ist oben definiert!
    { key = "I"; mode = "n"; action = "<Nop>"; options.noremap = true; }
    { key = "o"; mode = "n"; action = "<Nop>"; options.noremap = true; }
    { key = "O"; mode = "n"; action = "<Nop>"; options.noremap = true; }
    { key = "u"; mode = "n"; action = "<Nop>"; options.noremap = true; }  # Achtung: <C-z> ist oben definiert!
    { key = "<C-r>"; mode = "n"; action = "<Nop>"; options.noremap = true; }
    { key = "r"; mode = "n"; action = "<Nop>"; options.noremap = true; }
    { key = "R"; mode = "n"; action = "<Nop>"; options.noremap = true; }
    { key = "<C-d>"; mode = "n"; action = "<Nop>"; options.noremap = true; }
    { key = "<C-u>"; mode = "n"; action = "<Nop>"; options.noremap = true; }
    { key = "<C-f>"; mode = "n"; action = "<Nop>"; options.noremap = true; }
    { key = "<C-b>"; mode = "n"; action = "<Nop>"; options.noremap = true; }
    { key = "<C-o>"; mode = "n"; action = "<Nop>"; options.noremap = true; }
    { key = "<C-i>"; mode = "n"; action = "<Nop>"; options.noremap = true; }
    { key = "<F1>"; mode = "n"; action = "<Nop>"; options.noremap = true; }
    { key = "<F2>"; mode = "n"; action = "<Nop>"; options.noremap = true; }
    { key = "<F3>"; mode = "n"; action = "<Nop>"; options.noremap = true; }
    { key = "<F4>"; mode = "n"; action = "<Nop>"; options.noremap = true; }
    { key = "<F5>"; mode = "n"; action = "<Nop>"; options.noremap = true; }
    { key = "<F6>"; mode = "n"; action = "<Nop>"; options.noremap = true; }
    { key = "<F7>"; mode = "n"; action = "<Nop>"; options.noremap = true; }
    { key = "<F8>"; mode = "n"; action = "<Nop>"; options.noremap = true; }
    { key = "<F9>"; mode = "n"; action = "<Nop>"; options.noremap = true; }
    { key = "<F10>"; mode = "n"; action = "<Nop>"; options.noremap = true; }
    { key = "<F11>"; mode = "n"; action = "<Nop>"; options.noremap = true; }
    { key = "<F12>"; mode = "n"; action = "<Nop>"; options.noremap = true; }

    # ==========================================
    # VISUAL MODE - DEAKTIVIERTE TASTEN
    # ==========================================
    { key = "y"; mode = "v"; action = "<Nop>"; options.noremap = true; }
    { key = "d"; mode = "v"; action = "<Nop>"; options.noremap = true; }
    { key = "p"; mode = "v"; action = "<Nop>"; options.noremap = true; }
    { key = "P"; mode = "v"; action = "<Nop>"; options.noremap = true; }
    { key = "<"; mode = "v"; action = "<Nop>"; options.noremap = true; }
    { key = ">"; mode = "v"; action = "<Nop>"; options.noremap = true; }

    # ==========================================
    # INSERT MODE - DEAKTIVIERTE TASTEN
    # ==========================================
    { key = "<C-c>"; mode = "i"; action = "<Nop>"; options.noremap = true; }
    { key = "<C-[>"; mode = "i"; action = "<Nop>"; options.noremap = true; }
    { key = "<Home>"; mode = "i"; action = "<Nop>"; options.noremap = true; }
    { key = "<End>"; mode = "i"; action = "<Nop>"; options.noremap = true; }

    # ==========================================
    # OPERATOR-PENDING MODE - DEAKTIVIERTE TASTEN
    # ==========================================
    { key = "aw"; mode = "o"; action = "<Nop>"; options.noremap = true; }
    { key = "iw"; mode = "o"; action = "<Nop>"; options.noremap = true; }
    { key = "a\""; mode = "o"; action = "<Nop>"; options.noremap = true; }
    { key = "i\""; mode = "o"; action = "<Nop>"; options.noremap = true; }
    { key = "a'"; mode = "o"; action = "<Nop>"; options.noremap = true; }
    { key = "i'"; mode = "o"; action = "<Nop>"; options.noremap = true; }

    # ==========================================
    # COMMAND MODE - DEAKTIVIERTE TASTEN
    # ==========================================
    { key = "<C-a>"; mode = "c"; action = "<Nop>"; options.noremap = true; }
    { key = "<C-e>"; mode = "c"; action = "<Nop>"; options.noremap = true; }
    { key = "<C-f>"; mode = "c"; action = "<Nop>"; options.noremap = true; }
    { key = "<C-b>"; mode = "c"; action = "<Nop>"; options.noremap = true; }

    # ==========================================
    # WINDOWS
    # ==========================================
    {
      mode = "n";
      key = "<C-Up>";
      action = "<C-w>k";
      options.desc = "Move To Window Up";
    }
    {
      mode = "n";
      key = "<C-Down>";
      action = "<C-w>j";
      options.desc = "Move To Window Down";
    }
    {
      mode = "n";
      key = "<C-Left>";
      action = "<C-w>h";
      options.desc = "Move To Window Left";
    }
    {
      mode = "n";
      key = "<C-Right>";
      action = "<C-w>l";
      options.desc = "Move To Window Right";
    }
    {
      mode = "n";
      key = "<leader>wd";
      action = "<C-W>c";
      options = {
        silent = true;
        desc = "Delete window";
      };
    }
    {
      mode = "n";
      key = "<leader>-";
      action = "<C-W>s";
      options = {
        silent = true;
        desc = "Split window below";
      };
    }
    {
      mode = "n";
      key = "<leader>|";
      action = "<C-W>v";
      options = {
        silent = true;
        desc = "Split window right";
      };
    }
    {
      mode = "n";
      key = "<C-s>";
      action = "<cmd>w<cr><esc>";
      options = {
        silent = true;
        desc = "Save file";
      };
    }
    {
      mode = "i";
      key = "<C-s>";
      action = "<cmd>w<cr><esc>";
      options = {
        silent = true;
        desc = "Save file";
      };
    }

    # Quit/Session
    {
      mode = "n";
      key = "<leader>qq";
      action = "<cmd>quitall<cr><esc>";
      options = {
        silent = true;
        desc = "Quit all";
      };
    }

    # Toggle options
    {
      mode = "n";
      key = "<leader>ul";
      action = ":lua ToggleLineNumber()<cr>";
      options = {
        silent = true;
        desc = "Toggle Line Numbers";
      };
    }
    {
      mode = "n";
      key = "<leader>uL";
      action = ":lua ToggleRelativeLineNumber()<cr>";
      options = {
        silent = true;
        desc = "Toggle Relative Line Numbers";
      };
    }
    {
      mode = "n";
      key = "<leader>uw";
      action = ":lua ToggleWrap()<cr>";
      options = {
        silent = true;
        desc = "Toggle Line Wrap";
      };
    }

    # Move Lines
    {
      mode = "n";
      key = "<A-Up>";
      action = "<cmd>m .-2<cr>==";
      options.desc = "Move line up";
    }
    {
      mode = "v";
      key = "<A-Up>";
      action = ":m '<-2<cr>gv=gv";
      options.desc = "Move line up";
    }
    {
      mode = "n";
      key = "<A-Down>";
      action = "<cmd>m .+1<cr>==";
      options.desc = "Move line down";
    }
    {
      mode = "v";
      key = "<A-Down>";
      action = ":m '>+1<cr>gv=gv";
      options.desc = "Move line Down";
    }

    # Better indenting
    # NOTE: <  and > in visual mode are disabled above (Nop) due to custom layout.
    # Remove the Nop entries above if you want these back.
    # { mode = "v"; key = "<"; action = "<gv"; }
    # { mode = "v"; key = ">"; action = ">gv"; }

    {
      mode = "i";
      key = "<C-a>";
      action = "<cmd> norm! ggVG<cr>";
      options.desc = "Select all lines in buffer";
    }
    {
      mode = "n";
      key = "J";
      action = "mzJ`z";
      options.desc = "Allow cursor to stay in the same place after appending to current line";
    }

    # NOTE: n/N in normal mode are disabled above (Nop) due to custom layout.
    # { mode = "n"; key = "n"; action = "nzzzv"; options.desc = "Allow search terms to stay in the middle"; }
    # { mode = "n"; key = "N"; action = "Nzzzv"; options.desc = "Allow search terms to stay in the middle"; }

    # Clear search with ESC
    {
      mode = ["n" "i"];
      key = "<esc>";
      action = "<cmd>noh<cr><esc>";
      options = {
        silent = true;
        desc = "Escape and clear hlsearch";
      };
    }

    # Paste stuff without saving the deleted word into the buffer
    # NOTE: p in x-mode — check conflict with v = p mapping above if used in visual mode
    {
      mode = "x";
      key = "p";
      action = "\"_dP";
      options.desc = "Deletes to void register and paste over";
    }

    # Copy stuff to system clipboard
    {
      mode = ["n" "v"];
      key = "<leader>y";
      action = "\"+y";
      options.desc = "Copy to system clipboard";
    }

    # Delete to void register
    {
      mode = ["n" "v"];
      key = "<leader>D";
      action = "\"_d";
      options.desc = "Delete to void register";
    }
  ];

  extraConfigLua = ''
    function ToggleLineNumber()
      if vim.wo.number then
        vim.wo.number = false
      else
        vim.wo.number = true
        vim.wo.relativenumber = false
      end
    end

    function ToggleRelativeLineNumber()
      if vim.wo.relativenumber then
        vim.wo.relativenumber = false
      else
        vim.wo.relativenumber = true
        vim.wo.number = false
      end
    end

    function ToggleWrap()
      vim.wo.wrap = not vim.wo.wrap
    end

    if vim.lsp.inlay_hint then
      vim.keymap.set('n', '<leader>uh', function()
        vim.lsp.inlay_hint(0, nil)
      end, { desc = 'Toggle Inlay Hints' })
    end
  '';
}
