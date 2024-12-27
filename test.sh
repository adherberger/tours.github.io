# Function to check if there are any uncommitted changes in the Git repository
function _outerSpace_writeGitDirtyStatusModule() {
  # Run 'git diff' to check for uncommitted changes.
  # The --quiet option suppresses the output and only returns a status code.
  # Redirect stderr (2) to /dev/null to suppress any error messages.
  git diff --quiet 2>/dev/null
  
  # Check the exit status of the previous command.
  # $? is the exit status of the last command executed.
  # If the exit status is 1, it means there are uncommitted changes.
  [ $? -eq 1 ] && echo "✗"  # If there are uncommitted changes, output a cross symbol (✗).
}
