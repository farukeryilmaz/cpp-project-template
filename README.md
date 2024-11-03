# C++ Project Template

[![License: Unlicense](https://img.shields.io/badge/license-Unlicense-blue.svg)](https://github.com/farukeryilmaz/cpp-project-template/blob/main/LICENSE)
[![Windows build-test status](https://github.com/farukeryilmaz/cpp-project-template/actions/workflows/ci_windows.yml/badge.svg)](https://github.com/farukeryilmaz/cpp-project-template/actions/workflows/ci_windows.yml)
[![GNU/Linux build-test status](https://github.com/farukeryilmaz/cpp-project-template/actions/workflows/ci_gnu_linux.yml/badge.svg)](https://github.com/farukeryilmaz/cpp-project-template/actions/workflows/ci_gnu_linux.yml)
[![macOS build-test status](https://github.com/farukeryilmaz/cpp-project-template/actions/workflows/ci_macos.yml/badge.svg)](https://github.com/farukeryilmaz/cpp-project-template/actions/workflows/ci_macos.yml)

Welcome to the C++ Project Template! This project template provides an easy way to kick-start a cross-platform C++ project using modern tooling and libraries like Premake5, GoogleTest, spdlog, and Standalone Asio. No additional configuration or installation is needed, and it builds on major platforms (Windows, Linux, macOS) out of the box.

## Key Features
- **Premake5** for project generation and build configuration.
- **Supports C++20** by default, with the option to use **C++11/14/17**.
- **Cross-platform:** Tested on `Windows`, `GNU/Linux` and `macOS`.
- **GoogleTest** for unit testing.
- **spdlog** for fast and header-only logging.
- **Standalone Asio** for asynchronous networking.
- **No configuration or installation needed:** All dependencies are included as submodules.

## Getting Started
### Prerequisites
- **C++ Compiler** with support for your desired C++ standard (e.g., GCC, Clang, MSVC).
- **Git** for cloning the repository and managing submodules.

### Clone the Repository
To get started, clone the repository along with its submodules:  
```bash
git clone --recursive https://github.com/farukeryilmaz/cpp-project-template.git
```

If you have already cloned the repository without submodules, you can initialize them with:
```bash
git submodule update --init --recursive
```

### Build the Project
Premake5 is used to generate project files for various platforms and toolchains. The project already includes premake binaries for Windows, Linux, and macOS in the `vendor/premake/bin` directory, so no additional installation is required. However, if you prefer to use your own installation of Premake5, you can download it from [here](https://premake.github.io/download).
> For more details on how to use Premake5, check the official [Premake documentation](https://premake.github.io/docs/).

1. **Generate Project Files**: Run the following command for your desired platform
   - **Windows** (Visual Studio)
     - For Visual Studio 2022, use:
       ```bash
       vendor/premake/bin/premake5.exe vs2022
       ```
     - For earlier versions, replace vs2022 with vs2019, vs2017, etc., depending on your installed version:
       ```bash
       vendor/premake/bin/premake5.exe vs2019
       ```
   - **GNU/Linux** (GNU Make)
     ```bash
     vendor/premake/bin/premake5_linux gmake2
     ```
   - **macOS** (Xcode) 
     ```bash
     vendor/premake/bin/premake5_macos xcode4
     ```
   - **VSCode/CLion** (for all platforms):
     - Use `gmake2` argument.  

   For more project generation commands, see the full list in the [Using Premake documentation](https://premake.github.io/docs/Using-Premake/).  
2. **Build the Project:**
   - Generated project files are under `MyProject` folder.
   - For Visual Studio, open the generated `.sln` file and build from the IDE.
   - For GNU Make:
     ```bash
     make -C MyProject config=release
     ```
   - For Xcode, open the generated project and build from Xcode.

### Configuring the C++ Standard
By default, the project is configured to use C++20. If you wish to change the C++ standard, you can modify the cppdialect field in `premake5.lua`.
For more details on the available C++ standards, check the official [Premake cppdialect documentation](https://premake.github.io/docs/cppdialect/).

## Code Formatting and Linting
- **clang-format:** This project includes a `.clang-format` file to ensure consistent code style. Many modern IDEs, such as **Visual Studio** and **CLion**, have built-in support for **clang-format**, automatically applying formatting according to the specified rules when you save or edit files. You can also explicitly run `clang-format` on your source files to automatically format your code.
- **clang-tidy:** The project also includes a `.clang-tidy` configuration file for static code analysis and linting. Many IDEs can run clang-tidy automatically as you write code, helping you catch issues early. However, you can also explicitly run `clang-tidy` from the command line to analyze your code.

These tools help maintain code quality and consistency throughout your project.

## Continuous Integration (CI)
This project comes with preconfigured GitHub Actions workflows that automatically build the project on:
- **Windows** using Visual Studio
- **GNU/Linux** using GCC
- **macOS** using Xcode

## Upcoming Features
- `GitLab CI/CD` and `Jenkins` integration are planned and will be added.
- `Cppcheck` static code analysis will be added to the CI process.
- `SonarCloud` static code analysis will be integrated.

## Contributing
Contributions are welcome! If you find a bug or have a suggestion for improvement, feel free to open an issue or submit a pull request.

## License
This project is licensed under the `Unlicense`, which means you are free to use, modify, and distribute this project however you wish. See the [LICENSE](https://github.com/farukeryilmaz/cpp-project-template/blob/main/LICENSE) file for more details.
