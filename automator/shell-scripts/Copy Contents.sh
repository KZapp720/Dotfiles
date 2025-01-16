for f in "$@"; do
    if [ -f "$f" ]; then
        cat "$f"
    fi
done | pbcopy
