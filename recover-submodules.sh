git config -f .gitmodules --get-regexp '^submodule\..*\.path$' |
  while read path_key path
  do
    url_key=$(echo $path_key | sed 's/\.path/.url/')
    url=$(git config -f .gitmodules --get "$url_key")
    echo $url_key
    echo $url
    git submodule add $url $path
  done
