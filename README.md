
# PowerShell Form Generator

This is a simple PowerShell script that allows you to create Windows Forms with labels, textboxes and buttons.

## Installation

To run this script, you need to have PowerShell installed on your system. You can download it from [here](https://docs.microsoft.com/en-us/powershell/scripting/install/installing-powershell).

To use this script, you need to clone this repository or download the script file.

```bash
git clone https://github.com/your-username/your-repo-name.git
```

## Usage

To run the script, open PowerShell and navigate to the folder where the script is located. Then, import the module using the following command.

```bash
Import-Module -Name ".\WinFormsModule.ps1"
```

The script will prompt you to enter some parameters for your form, such as the title, width and height. You can also use the default values by pressing Enter.

The script will then create a form object with the specified parameters and add some controls to it. You can modify the script to add more controls or change their properties.

The script will also display the form on your screen. You can interact with the form and close it when you are done.

## Example

Here is an example of a main script that uses the form generator module:

```powershell
Import-Module -Name ".\WinFormsModule.ps1"

#Main
$window1 = Form -title "First WinForm" -width 500 -height 500

$firstNameLabel = Label -text "Firstname" -X 100 -Y 80
$LastNameLabel = Label -text "Lastname" -X 100 -Y 180

$firstNameTextBox = TextBox -X 100 -Y 120
$lastNameTextbox = TextBox -X 100 -Y 220

$ClickMeButton = Button -text "Click Me!" -X 100 -Y 280 -width 100 -height 80

$ClickMeButton.add_click({
    [System.Windows.Forms.MessageBox]::Show("Hello World. " + ($firstNameTextBox.Text) + " " + ($lastNameTextbox.Text) , "My Dialog Box")
})


DisplayForm($window1)
```

Here is an example of a form created by the main script with the default parameters:
https://github.com/fabiod89/WinFormGuiModule/blob/main/example.PNG 


