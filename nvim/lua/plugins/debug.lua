return {
    {
        "theHamsta/nvim-dap-virtual-text",
        event = "VeryLazy",
        opts = {},
    },

    -- Debug Adapter Protocol (DAP) configuration
    {
        "jay-babu/mason-nvim-dap.nvim",
        event = "VeryLazy",
        dependencies = {
            "mason.nvim",
            "mfussenegger/nvim-dap",
        },
        opts = {
            handlers = {
                function(config)
                    require("mason-nvim-dap").default_setup(config)
                end,
            },
        },
        config = function(_, opts)
            require("mason-nvim-dap").setup(opts)

            local dap = require("dap")
            dap.configurations = {
                go = {
                    {
                        type = "delve",
                        name = "Debug Workspace (go.mod)",
                        request = "launch",
                        program = "${workspaceFolder}"
                    },
                    {
                        type = "delve",
                        name = "Debug File",
                        request = "launch",
                        program = "${file}"
                    },
                    -- {
                    --     type = "delve",
                    --     name = "Debug File - Test", -- configuration for debugging test files
                    --     request = "launch",
                    --     mode = "test",
                    --     program = "${file}"
                    -- },

                }
            }
        end,
    },

    -- Dap UI
    {
        "rcarriga/nvim-dap-ui",
        event = "VeryLazy",
        dependencies = {
            "mfussenegger/nvim-dap",
            "nvim-neotest/nvim-nio",
            "theHamsta/nvim-dap-virtual-text",
        },
        config = function()
            local dap = require("dap")
            local ui = require("dapui")

            ui.setup()

            vim.fn.sign_define("DapBreakpoint", { text = "🐞" })

            dap.listeners.before.attach.dapui_config = function()
                ui.open()
            end
            dap.listeners.before.launch.dapui_config = function()
                ui.open()
            end
            dap.listeners.before.event_terminated.dapui_config = function()
                ui.close()
            end
            dap.listeners.before.event_exited.dapui_config = function()
                ui.close()
            end
        end,
    },
}
