local neotree = require('neo-tree')

-- https://github.com/nvim-neo-tree/neo-tree.nvim/issues/998
local function disable_icons(config, node, state)
    if node.type == 'file' or node.type == 'directory' then
        return {}
    end

    local components = require('neo-tree.sources.common.components')

    return components.icon(config, node, state)
end

neotree.setup {
    filesystem = {

        follow_current_line = true,
        filtered_items = {
            visible = true,
            show_hidden_count = true,
            hide_dotfiles = false,
            hide_gitignored = false,
        },
        components = {
            icon = disable_icons
        },
        opts = {
            close_if_last_window = true,
            default_component_configs = {
                icon = {
                    folder_closed = '+',
                    folder_open = '-',
                    folder_empty = '%',
                    default = '',
                },
                indent = {
                    expander_collapsed = "+",
                    expander_expanded = "-"
                },
                git_status = {
                    symbols = {
                        added     = '',
                        modified  = '',
                        deleted   = '',
                        renamed   = '',
                        untracked = '',
                        ignored   = '',
                        unstaged  = '',
                        staged    = '',
                        conflict  = '',
                    }
                },
            },
        }
    }
}
