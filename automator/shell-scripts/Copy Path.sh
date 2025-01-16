for f in "$@"; do
    if [ -d "$f" ]; then
        echo -n "${f/#$HOME/~}/" | pbcopy
    else
        echo -n "${f/#$HOME/~}" | pbcopy
    fi
done
