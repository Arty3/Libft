<h1 align="center">✨ Libft ✨</h1>

<h6 align="center"><em>My own 42 Libft library I used while studying there</em></h6>

## 📝 Overview

This repository contains my Libft files which I used during my stay at 42.

The reason for the overly complex implementation is my frustration with functions being forbidden for certain projects. Because of this I decided to implement these myself. Please keep in mind that the library is highly highly limited due to norminette (their godawful coding standard, no like really, its incredibly bad), therefore some things are implemented in a really weird way such as to avoid norminette issues but still maintain the original foolproof functionality of the function. Note that the library is based off of norminette "bypasses" I found myself, such as making it think assembly is a variable and what not. Therefore I cannot guarantee that the mechanisms behind it will still work months from now. You can always check this by running norminette on the library with the most recent version.

Note that I will not be maintaining this any further as I don't need it anymore and I've grown to despise norminette with all my being. Feel free to make any changes or modification and adapting it to your needs.

I personally used this library in most of my C projects there, providing me with a full suite in each project, avoiding weird project restrictions while not cheating since all of these functions I wrote myself, for myself, as per what the subject says.

## ✨ Features

- Fast and foolproof implementations
- All memory functions
- All string functions
- All environment functions
- All dirent functions
- Some misc functions like realpath and atexit
- Full syscall implementation
- Full unistd implementation
- Custom values header for different use cases
- Vector library for graphical projects
- Patching memory leaks from being visible in valgrind
- Highly modular, scalable and adaptable
- Norminette proof at the time of writing this

## 🛠 Requirements

- GNU or clang
- Make

## 🚀 Installation

1. Clone the repository:

```sh
git clone https://github.com/Arty3/Libft.git
cd Libft
```

2. Run the `make` command:

```sh
make all
```

3. Link `bin/Libft.a` to your project:

```make
@make -C ./Libft
$(CC) $(OBJS) ./Libft/bin/Libft.a -o $(TARGET)
```

4. Include the header in your source files:

```cpp
#include "../Libft/include/libft.h"
```

5. Check norminette

```sh
norminette Libft
```

### ⭐ Best Practices

- Don't optimize beyond `-O3`
- Check norminette occasionally
- Include the entire `libft.h` header, not subheaders.
- If the original function is allowed, use that one.
- Using ft_atexit using free and a heap buffer to bypass leak detection

## ⚠ Limitations

- Norminette shenanigans
- Only for x86_64 gnu linux (that's the architecture we used)
- Only basic useful functions that were forbidden are included

## 📃 License
This project uses the `GNU GENERAL PUBLIC LICENSE v3.0` license
<br>
For more info, please find the `LICENSE` file here: [License](LICENSE)
