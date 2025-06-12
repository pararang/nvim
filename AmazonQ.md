# Neovim Configuration Merge Conflict Resolution

This document summarizes the merge conflict resolution performed by Amazon Q on the Neovim configuration.

## Conflicts Resolved

1. **lazy-lock.json**
   - Resolved by keeping the newer version from the main branch
   - This file contains plugin version information

2. **lua/config/keymaps.lua**
   - Removed ToggleTerm keymaps that were in the HEAD version but not in main
   - These keymaps were for floating terminal functionality

3. **lua/config/options.lua**
   - Kept the newer formatting and options from main branch
   - Notable changes:
     - Changed signcolumn from "yes" to "yes:1"
     - Changed ruler from false to true
     - Added winborder = "single" option
     - Commented out scrolloff and sidescrolloff options

4. **Deleted Files**
   - Removed lua/plugins/copilot.lua.disabled
   - Removed lua/plugins/lsp.lua
   - Removed lua/plugins/lsp/servers.lua

## Summary of Changes

The merge primarily updated the configuration to use newer plugin versions and modified some UI settings. The main branch appears to have a more streamlined configuration with some features like ToggleTerm removed and others like winborder added.

The configuration now uses a centralized LSP setup in lua/core/lsp.lua instead of the previous approach with separate files in lua/plugins/lsp/.
