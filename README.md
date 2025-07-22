# BOS — Bash Operations Scripts

🎯 **BOS (Bash Operations Scripts)** is a minimal and handy bash-based utility that provides a simple menu to perform common file operations directly from the terminal, designed especially with Termux in mind.

---

## 🚀 Features

✅ Copy files and folders  
✅ Move files and folders  
✅ Delete a folder  
✅ Zip a folder  
✅ Unzip a `.zip` file  
✅ Interactive menu interface  
✅ Lightweight, no dependencies except `zip` and `unzip`

---

## 📦 Installation

1️⃣ Clone this repository:
```bash
git clone https://github.com/your-username/bos.git

2️⃣ Make the script executable:

chmod +x bos/my-ops.sh

3️⃣ (Optional) Add an alias to .bashrc or .zshrc for quick access:

echo 'alias bos="~/bos/my-ops.sh"' >> ~/.bashrc
source ~/.bashrc

Now you can just type:

bos


---

🧰 Usage

Run the script:

~/bos/my-ops.sh

You’ll see a menu like this:

==== 💻 File Operations Menu ====
1) 📄 Copy files and folders
2) 🗂️ Move files and folders
3) 🗑️ Delete folder
4) 📦 Zip a folder
5) 📂 Unzip a file
6) ❌ Exit

Just enter the number and follow the prompts.


---

📄 Dependencies

✅ Bash (default in Linux / Termux)
✅ zip & unzip for compression and extraction:

pkg install zip unzip


---

🙌 Author

Made with ❤️ by ttn2007
