#!/bin/bash

# Check if the directory path is provided as a command line argument
if [ $# -lt 2 ]
then
    echo "Error: Please provide the directory path as a command line argument."
    exit 1
fi

# Get the directory path
directory=$1
dest_dir=$2

# Check if the directories exists
if [ ! -d $directory ]
then
    echo "Error: The directory '$directory' does not exist."
    exit 1
fi

if [ ! -d $dest_dir ]
then
    echo "Error: The directory '$dest_dir' does not exist."
    exit 1
fi


# Loop through all the directories in the provided directory path
for dir in $(find $directory -type d -name .git)
do
    # Get the parent directory of the .git directory
    parent_dir=$(dirname $dir)
    
    # Check if the config file exists
    if [ -f "$dir/config" ]
    then
        # Read the config file
        remote_url=$(grep url "$dir/config" | awk '{print $3}')
        
        # Check if the remote URL contains github.com
        if [[ $remote_url == *"github.com"* ]]
        then
            # Move the parent directory to the ~/Desktop/git_projects/github_repos directory
            echo "Moved $parent_dir to $dest_dir/github_repos"
            mv $parent_dir "$dest_dir/github_repos"
            
            # Check if the remote URL contains gitlab.com
        elif [[ $remote_url == *"gitlab.com"* ]]
        then
            # Move the parent directory to the ~/Desktop/git_projects/gitlab_repos directory
            echo "Moved $parent_dir to $dest_dir/gitlab_repos"
            mv $parent_dir "$dest_dir/gitlab_repos"
        fi
    fi
done
