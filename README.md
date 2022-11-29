# BlogExamples

Repository has been created to create examples for blogposts on https://swiftyfriday.com

## Installation

1. Install [Mint](https://github.com/yonaskolb/Mint) using installation guide
2. Install project dependencies using command (run in main project directory):
```
mint bootstrap
```
3. Open project and install SPM dependencies.

## Auto generation of code and formatting

To run all below scripts use `sh generate_mocks.sh` script.

### Sourcery Code generation

Sourcery has been configured to generate repetitive code.

You can find sourcery configuration in file `.sourcery.yml` and sourcery Templates in `BlogExamplesTests/Sourcery/Templates/` directory.

### Formatting Code with SwiftFormat

SwiftFormat is being used to ensure code consistency in the project. 
It will automatically format all project code after running the script.

Configuration of the SwiftFormat can be found in `.swiftformat` file.

