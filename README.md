# Installer Files for a new computer
All written in bash. Too complicated? Probably. Easy to get started on a new computer? Yup.

## Some Notes on function
### dotfiles_i
The new dotfiles_i symlink farm is in progress. Notes:
 - The directory structure in the data folder must match the json file must match the directory structure needed in for the config. For example,
if polybar expects '~/.config/polybar/config', the json list mus be 'polybar/config' and the data folder must be 'polybar/config'
 - There are two options currently: home and .config root directories. Directory structures will be copied from there with mkdir -p
 - For home: directory structure inside of data dir will be copied. If a folder in the home directory is required, add correct folder to data and json
