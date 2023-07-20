local function GitBranchIcon()
	return vim.fn.system("echo -e '\\uE0A0' 2>/dev/null | tr -d '\\n'")
end

local function GitBranch()
	return vim.fn.system("git rev-parse --abbrev-ref HEAD 2>/dev/null | tr -d '\\n'")
end

local function IsGitRepo()
	local branchname = GitBranch()
	return string.len(branchname) > 0
end

function StatusLineGitBranch()
	local giticon = GitBranchIcon()
	local branchname = GitBranch()
	return IsGitRepo() and giticon.." "..branchname or ""
end

local modes = {
  ['n']  = 'NORMAL',
  ['v']  = 'VISUAL',
  ['V']  = 'V·LINE',
  [''] = 'V·BLOCK',
  ['s']  = 'SELECT',
  ['S']  = 'S·LINE',
  [''] = 'S·BLOCK',
  ['i']  = 'INSERT',
  ['R']  = 'REPLACE',
  ['Rv'] = 'V·REPLACE',
  ['c']  = 'COMMAND'
}

local function mode()
  local current_mode = vim.api.nvim_get_mode().mode
  return modes[current_mode]
end

function GetStatusLine(branchName)
  local statusline = ''

  if vim.bo.buftype == 'terminal' then
    statusline = '%#Pmenu# terminal'
  else
    statusline = '%#PmenuSel# '..mode()..(branchName ~= '' and ' %#Pmenu# '..branchName or '')..' %#LineNr# %t %m %=%y %#Pmenu# %p%% %#PmenuSel# %l:%c '
  end

  return statusline
end

vim.cmd("autocmd VimEnter * silent! lcd %:p:h")
vim.cmd("autocmd BufEnter * let gitBranch = v:lua.StatusLineGitBranch()")
vim.cmd("autocmd BufEnter,TermOpen * setlocal statusline=%!v:lua.GetStatusLine(gitBranch)")
