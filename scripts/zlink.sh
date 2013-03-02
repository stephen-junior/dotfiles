zlink () {
  example_of_use="Example of use: \`zlink source/ target Music\`"

  if [ "$1" = "--help" -o "$1" = "-h" ]; then
    echo $example_of_use
  elif [ $# = 3 ]; then
    source=$1
    zipname=$2.zip
    dest=$3

    # Source: http://unix.stackexchange.com/a/8519/21476
    ip="$(/sbin/ifconfig | grep -A 1 'eth0' | tail -1 | cut -d ':' -f 2 | cut -d ' ' -f 1)"
    link="http://$ip:81/$3/$zipname"

    echo "Zipping \`$source\` in \`$zipname\`..."
    zip -r "$HOME/documents/$dest/$zipname" "$source"
    echo "Done. The link to the zip archive:\n$link"
  else
    echo "Incorrect number of arguments."
    echo $example_of_use
  fi
}
