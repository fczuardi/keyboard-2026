set shell := ["bash", "-cu"]

# Pretty-print a .vil JSON file to a readable .pretty.json sibling.
pretty file:
    out="{{file}}.pretty.json"; jq . "{{file}}" > "$out"

# Pretty-print all .vil files in the current directory.
pretty-all:
    for f in *.vil; do [ -e "$f" ] || continue; out="$f.pretty.json"; jq . "$f" > "$out"; done
