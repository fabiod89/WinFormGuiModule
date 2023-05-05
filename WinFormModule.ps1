Remove-Variable * -ErrorAction SilentlyContinue
Add-Type -AssemblyName System.Windows.Forms

#Functions
function Form{
    #Parameters
    param(
        $title="Title",
        $width=10,
        $height=10
    )
    # Initialize Object
    $Form = New-Object system.Windows.Forms.Form
    $Form.ClientSize = "$width,$height"
    $Form.text = $title

    return $Form
}


function Label{
    param(
        $text,
        $X,
        $Y
    )
    $Label = New-Object system.Windows.Forms.Label
    $Label.Location  = New-Object System.Drawing.Point($X, $Y)
    $Label.text = $text
    return $Label
}

function TextBox{
    param(
        $X,
        $Y,
        $width=100

    )
    $TextBox = New-Object system.Windows.Forms.TextBox
    $TextBox.Location  = New-Object System.Drawing.Point($X, $Y)
    $TextBox.text = $text
    return $TextBox
}

function Button{
    param(
        $text,
        $X,
        $Y,
        $width,
        $height
    )
    $Button = New-Object system.Windows.Forms.Button
    $Button.Location  = New-Object System.Drawing.Point($X, $Y)
    $Button.Width = $width
    $Button.Height = $height
    $Button.text = $text
    return $Button
}

function DisplayForm($window){
    #For loop to add every form object (label, textboxes, buttons, etc. into the window)
    foreach ($var in (Get-Variable | where {$_.Value -like "System.Windows.Forms.*" }  | where {$_.Value -notlike "System.Windows.Forms.Form*" }).value){
        $window.Controls.Add($var)
    }
    #Keep this at the bottom of your script
    $window.ShowDialog()
}
