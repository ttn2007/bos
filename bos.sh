#!/data/data/com.termux/files/usr/bin/bash

while true; do
  echo -e "\e[36m==== 💻 File Operations Menu ====\e[0m"
  echo "1) 📄 Copy files and folders"
  echo "2) 🗂️ Move files and folders"
  echo "3) 🗑️ Delete folder"
  echo "4) 📦 Zip a folder"
  echo "5) 📂 Unzip a file"
  echo "6) ❌ Exit"
  echo -n -e "\n👉 Your choice? [1-6]: "
  read choice

  case $choice in
    1)
      echo -e "\n📁 Enter source path:"
      read src
      echo -e "📁 Enter destination path:"
      read dest
      mkdir -p "$dest"
      cp -r "$src"/* "$dest/"
      echo -e "\e[32m✅ Files copied to: $dest\e[0m"
      read -p "⏳ Press Enter to continue..."
      ;;
    2)
      echo -e "\n📁 Enter source path:"
      read src
      echo -e "📁 Enter destination path:"
      read dest
      mkdir -p "$dest"
      mv "$src"/* "$dest/"
      echo -e "\e[32m✅ Files moved to: $dest\e[0m"
      read -p "⏳ Press Enter to continue..."
      ;;
    3)
      echo -e "\n📁 Enter folder path to delete:"
      read target
      echo -e "\e[31m⚠️ Are you sure? (yes/no):\e[0m"
      read confirm
      if [ "$confirm" == "yes" ]; then
        rm -rf "$target"
        echo -e "\e[32m✅ Folder deleted: $target\e[0m"
      else
        echo -e "\e[33m⏳ Operation canceled\e[0m"
      fi
      read -p "⏳ Press Enter to continue..."
      ;;
    4)
      echo -e "\n📁 Enter folder path to zip:"
      read folder
      echo -e "📄 Enter output zip filename (without .zip):"
      read zipname
      zip -r "${zipname}.zip" "$folder"
      echo -e "\e[32m✅ Folder $folder zipped as: ${zipname}.zip\e[0m"
      read -p "⏳ Press Enter to continue..."
      ;;
    5)
      echo -e "\n📄 Enter zip file path:"
      read zipfile
      echo -e "📁 Enter destination folder:"
      read unzipdest
      mkdir -p "$unzipdest"
      unzip "$zipfile" -d "$unzipdest"
      echo -e "\e[32m✅ $zipfile extracted to: $unzipdest\e[0m"
      read -p "⏳ Press Enter to continue..."
      ;;
    6)
      echo -e "\n👋 Goodbye!"
      exit 0
      ;;
    *)
      echo -e "\n🚫 Invalid choice!"
      read -p "⏳ Press Enter to continue..."
      ;;
  esac
done
