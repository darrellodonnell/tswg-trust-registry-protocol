#!/bin/bash

# Define the base directories
SOURCE_BASE="./specification"
DEST_BASE="./dist"

# Find all 'images' directories under the source base
IMAGES_DIRS=$(find "$SOURCE_BASE" -type d -name "images")

for DIR in $IMAGES_DIRS; do
    # Compute the destination path by replacing the source base with the destination base
    DEST_PATH="${DIR/$SOURCE_BASE/$DEST_BASE}"

    # Ensure the destination directory exists
    mkdir -p "$DEST_PATH"

    # Move all files within the images directory to the destination
    cp -r "$DIR"/* "$DEST_PATH"
done

# Approved version (output: dist/)
mkdir -p dist/v2-approved/bindings/restful/
mkdir -p dist/schema
mkdir -p dist/images

cp -r specification/v2-approved/images dist/
cp -r specification/v2-approved/core/schema schema/

# Draft version (output: dist/draft/)
# Copy images so they resolve relative to the draft HTML
mkdir -p dist/draft/v2/core/images
mkdir -p dist/draft/v2/images
mkdir -p dist/draft/images

cp -r specification/v2/images/* dist/draft/images/
cp -r specification/v2/images/* dist/draft/v2/images/
cp -r specification/v2/core/images/* dist/draft/v2/core/images/
