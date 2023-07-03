count=0
for file in *_test_result.txt; do
  if grep -q "Successes: [1-100]" "$file"; then
    count=$((count + 1))
  fi
done
echo "Files with Successes > 0: $count"
