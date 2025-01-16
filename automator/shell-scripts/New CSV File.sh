parent_dir=$(dirname "$1")
base_name="untitled"
extension="csv"
count=1
file_name="${base_name}.${extension}"

cd "$parent_dir" || exit

while [ -e "$file_name" ]; do
    file_name="${base_name}-${count}.${extension}"
    count=$((count + 1))
done

touch "$file_name"
