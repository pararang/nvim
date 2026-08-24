local function get_license()
  local path = os.getenv("HOME") .. "/intelephense/license.txt"
  local f = io.open(path, "rb")
  if not f then
    return nil
  end
  local content = f:read("*a")
  f:close()
  return content and string.gsub(content, "%s+", "") or nil
end

return {
  cmd = { "intelephense", "--stdio" },
  filetypes = { "php", "blade" },
  root_markers = { "composer.json", ".git" },
  init_options = get_license() and { licenceKey = get_license() } or {},
}
