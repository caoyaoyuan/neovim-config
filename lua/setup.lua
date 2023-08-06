local wilder = require('wilder')
wilder.setup({
    modes = { ':', '/', '?' },
    next_key = 0,
    previous_key = 0,
    reject_key = 0,
    accept_key = 0
})
vim.api.nvim_command("silent! UpdateRemotePlugins") -- 需要载入一次py依赖 不然模糊过滤等失效
-- 设置source
wilder.set_option('pipeline', {
    wilder.branch(
    -- 当默认无输入时 展示15条历史记录
        {
            wilder.check(function(_, x) return vim.fn.empty(x) end),
            wilder.history(15)
        },
        -- 当输入时 展示所有匹配项(模糊匹配)
        wilder.cmdline_pipeline({
            fuzzy = 1,
            fuzzy_filter = wilder.vim_fuzzy_filter()
        }),
        -- pipeline for search
        wilder.search_pipeline()
    ),
})
-- 设置样式
wilder.set_option('renderer', wilder.popupmenu_renderer(
    wilder.popupmenu_border_theme({
        -- 设置特定高亮
        highlights = {
            -- accent = "WilderAccent",
            -- selected_accent = "WilderSelectedAccent",
            accent = wilder.make_hl('WilderAccent', 'Pmenu', { { a = 1 }, { a = 1 }, { foreground = '#f4468f' } })
            ,
            -- selected_accent = wilder.make_hl('WilderSelectedAccent', 'Pmenu',
            --     { { a = 1 }, { a = 1 }, { foreground = '#f4468f', background = '#44505c' } })
        },
        highlighter = wilder.basic_highlighter(),
        left = { ' ', wilder.popupmenu_devicons() },   -- 左侧加入icon
        right = { ' ', wilder.popupmenu_scrollbar() }, -- 右侧加入滚动条
        border = 'single',
        max_height = 17                                -- 最大高度限制 因为要计算上下 所以17支持最多15个选项
    })
))
-- 设置高亮
-- vim.api.nvim_set_hl(0, 'WilderAccent', { fg = '#5f87ff' })
-- vim.api.nvim_set_hl(0, 'WilderSelectedAccent', { fg = '#5f87ff' })
-- 设置快捷键
vim.api.nvim_set_keymap('c', '<tab>', [[wilder#in_context() ? wilder#next() : '<tab>']], { noremap = true, expr = true })
vim.api.nvim_set_keymap('c', '<Down>', [[wilder#in_context() ? wilder#next() : '<down>']],
    { noremap = true, expr = true })
vim.api.nvim_set_keymap('c', '<up>', [[wilder#in_context() ? wilder#previous() : '<up>']],
    { noremap = true, expr = true })
vim.api.nvim_set_keymap('c', '0', '0', {}) -- 不清楚原因导致0无法使用 强制覆盖


vim.opt.termguicolors = true

-- require 'telescope.builtin'.symbols { sources = { 'emoji', 'kaomoji', 'gitmoji' } }
--require('telescope').setup({
--    defaults = {
--        layout_config = {
--            vertical = { width = 0.5 }
--            -- other layout configuration here
--        },
--        -- other defaults configuration here
--    },
--    -- other configuration values here
--    pickers = {
--        find_files = {
--            theme = "dropdown",
--        },
--        grep_string = {
--            theme = "dropdown",
--        },
--        live_grep = {
--            theme = "dropdown",
--        },
--        buffers = {
--            theme = "dropdown",
--        },
--        help_tags = {
--            theme = "dropdown",
--        },
--        current_buffer_tags = {
--            theme = "dropdown",
--        },
--        current_buffer_fuzzy_find = {
--            theme = "dropdown",
--        }
--    },
--    extensions = {
--        fzf = {
--            fuzzy = true,                   -- false will only do exact matching
--            override_generic_sorter = true, -- override the generic sorter
--            override_file_sorter = true,    -- override the file sorter
--            case_mode = "smart_case",       -- or "ignore_case" or "respect_case"
--            -- the default case_mode is "smart_case"
--        }
--    }
--})
--_G.load_config = function()
--    require("telescope").setup()
--    require("telescope").load_extension "fzf"
--    -- ADD INIT.LUA SETTINGS THAT ARE _NECESSARY_ FOR REPRODUCING THE ISSUE
--    require("nvim-treesitter.configs").setup {
--        ensure_installed = { "lua" },
--        highlight = { enable = true },
--    }
--end
--require('telescope').load_extension('fzf')
require('mini.indentscope').setup(
    {
        draw = {
            -- Delay (in ms) between event and start of drawing scope indicator
            delay = 10,
            -- Animation rule for scope's first drawing. A function which, given
            -- next and total step numbers, returns wait time (in ms). See
            -- |MiniIndentscope.gen_animation| for builtin options. To disable
            -- animation, use `require('mini.indentscope').gen_animation.none()`.
            animation = function()
                return 0
            end, --<function: implements constant 20ms between steps>,
            -- Symbol priority. Increase to display on top of more symbols.
            priority = 2,
        },
    })
require 'tabline'.setup {
    -- Defaults configuration options
    enable = true,
    options = {
        -- If lualine is installed tabline will use separators configured in lualine by default.
        -- These options can be used to override those settings.
        section_separators = { '', '' },
        component_separators = { '', '' },
        max_bufferline_percent = 66, -- set to nil by default, and it uses vim.o.columns * 2/3
        show_tabs_always = false,    -- this shows tabs only when there are more than one tab or if the first tab is named
        show_devicons = true,        -- this shows devicons in buffer section
        show_bufnr = false,          -- this appends [bufnr] to buffer section,
        show_filename_only = false,  -- shows base filename only instead of relative path in filename
        modified_icon = "+ ",        -- change the default modified icon
        modified_italic = false,     -- set to true by default; this determines whether the filename turns italic if modified
        show_tabs_only = false,      -- this shows only tabs instead of tabs + buffers
    } }
require('lualine').setup {
    options = {
        icons_enabled = true,
        theme = 'auto',
        component_separators = { left = '|', right = '|' },
        section_separators = { left = '', right = '' },
        disabled_filetypes = {
            statusline = {},
            winbar = {},
        },
        ignore_focus = {},
        always_divide_middle = true,
        globalstatus = false,
        refresh = {
            statusline = 1000,
            tabline = 1000,
            winbar = 1000,
        }
    },
    sections = {
        lualine_a = { 'mode' },
        lualine_b = {
            'branch',
            'diff',
        },
        lualine_c = {
            'filename',
            {
                'diagnostics',
                sources = { 'nvim_diagnostic', 'coc' },
                -- Displays diagnostics for the defined severity types
                sections = { 'error', 'warn', 'info', 'hint' },
                diagnostics_color = {
                    -- Same values as the general color option can be used here.
                    error = { fg = '#e06c75' }, -- Changes diagnostics' error color.
                    warn  = { fg = '#e5c07b' }, -- Changes diagnostics' warn color.
                    info  = 'DiagnosticInfo',   -- Changes diagnostics' info color.
                    hint  = 'DiagnosticHint',   -- Changes diagnostics' hint color.
                },
                symbols = { error = ' ', warn = '󰔶 ', info = 'I', hint = 'H' },
                colored = true,           -- Displays diagnostics status in color if set to true.
                update_in_insert = false, -- Update diagnostics in insert mode.
                always_visible = false,   -- Show diagnostics even if there are none.
            }
        },
        lualine_x = { 'encoding', 'fileformat', 'filetype' },
        lualine_y = { 'progress' },
        lualine_z = { 'location' }
    },
    tabline = {
        -- lualine_a = {},
        -- lualine_b = {},
        -- lualine_c = { require 'tabline'.tabline_buffers },
    },
    winbar = {
    },
    inactive_winbar = {
    },
    extensions = {}
}
