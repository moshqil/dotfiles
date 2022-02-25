-- plugins - Doom nvim custom plugins
--
-- This file contains all the custom plugins that are not in Doom nvim but that
-- the user requires. All the available fields can be found here
-- https://github.com/wbthomason/packer.nvim#specifying-plugins
--
-- By example, for including a plugin with a dependency on telescope:
-- return {
--     {
--         'user/repository',
--         requires = { 'nvim-lua/telescope.nvim' },
--     },
-- }

return {
    {
	    'lervag/vimtex',

	    config = function()
	        vim.g.tex_flavor = 'latex'
            vim.g.vimtex_compiler_method = 'latexmk'
            vim.g.vimtex_view_general_viewer = 'zathura'
            vim.g.vimtex_compiler_latexmk = {
                build_dir = '.latexmk',
                callback = 1,
                continuous = 1,
                executable = 'latexmk',
                hooks = {},
                options = {
                    '-verbose',
                    '-file-line-error',
                    '-synctex=1',
                    '-interaction=nonstopmode',
                },
            }
            vim.o.conceallevel = 1
            vim.g.tex_conceal = 'abdmg'
	    end,
    },
}
