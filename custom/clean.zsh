function clean.idea {
    find . -name ".idea" -exec rm -rf {} \;
    find . -iname "*.iml" -exec rm -rf {} \;
}
