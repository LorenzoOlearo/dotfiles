#!/bin/bash

# Check if LICENSE file exists and print its content
if [ -f LICENSE ]; then
    cat LICENSE
else
    echo "LICENSE file not found."
    exit 1
fi

# Ask the user if they have reviewed the install script and are okay with executing it
echo ""
read -p "Have you reviewed the install script and are you okay with executing it? (yes/no): " response

if [ "$response" = "yes" ]; then
    # Print available configurations
    echo "Available configurations via the install script:"
    echo "1. nvim"
    echo "2. tmux"
    echo "3. kitty"
    echo "4. zsh"
    echo "5. bash"

    # Ask the user to choose a configuration
    read -p "Please enter the number of the configuration you want to install: " config_choice

    # Define source and target directories based on user choice
    case $config_choice in
        1)
            SOURCE_DIR="$(pwd)/.config/nvim"
            TARGET_DIR="$HOME/.config/nvim"
            ;;
        2)
            SOURCE_FILE="$(pwd)/.config/tmux/tmux.conf"
            TARGET_FILE="$HOME/.config/tmux/tmux.conf"
            ;;
        3)
            SOURCE_FILE="$(pwd)/.config/kitty/kitty.conf"
            TARGET_FILE="$HOME/.config/kitty/kitty.conf"
            ;;
        4)
            SOURCE_FILE="$(pwd)/.zshrc"
            TARGET_FILE="$HOME/.zshrc"
            ;;
        5)
            SOURCE_FILE="$(pwd)/.bashrc"
            TARGET_FILE="$HOME/.bashrc"
            ;;
        *)
            echo "Invalid choice. Exiting."
            exit 1
            ;;
    esac

    # Warn the user about overwriting the current configuration
    if [ "$config_choice" = "4" ]; then
        echo "This will overwrite the current .zshrc file in your home directory."
    else
        echo "This will overwrite the current configuration in $TARGET_DIR."
    fi
    read -p "Are you sure you want to proceed? (yes/no): " overwrite_response

    if [ "$overwrite_response" = "yes" ]; then
        if [ "$config_choice" = "1" ]; then
            # Copy the entire nvim folder
            mkdir -p "$TARGET_DIR"
            cp -r "$SOURCE_DIR/"* "$TARGET_DIR/"
            if [ $? -eq 0 ]; then
                echo "NeoVim configuration installed successfully."
            else
                echo "Failed to install NeoVim configuration."
            fi
        else
            # Create target directory if it doesn't exist
            mkdir -p "$(dirname "$TARGET_FILE")"
            cp "$SOURCE_FILE" "$TARGET_FILE"
            if [ $? -eq 0 ]; then
                echo "$(basename $TARGET_FILE) file installed successfully."
            else
                echo "Failed to install $(basename $TARGET_FILE) file."
            fi
        fi
    else
        echo "Operation cancelled."
    fi
else
    echo "Please review the install script before executing it."
fi
