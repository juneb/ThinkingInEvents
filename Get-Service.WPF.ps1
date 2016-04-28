Add-Type -AssemblyName PresentationFramework
 
[xml]$XAMLWindow = '
<Window 
    xmlns="http://schemas.microsoft.com/winfx/2006/xaml/presentation"
    xmlns:x="http://schemas.microsoft.com/winfx/2006/xaml"
    Height="Auto"
    SizeToContent="WidthAndHeight"
    Title="Get-Service">
    <ScrollViewer Padding="20">
        <StackPanel>
            <StackPanel Orientation="Horizontal">
                <Label>ComputerName</Label>
                <TextBox Name="Input" Width="250px"></TextBox>
            </StackPanel>
            <DockPanel>
                <Button  Name="ButtonGetService" Content="Get-Service" Width="150px" IsEnabled="false"/>
                <Button  Name="ButtonClose" Content="Close" HorizontalAlignment="Right" Width="50px"/>
            </DockPanel>
        </StackPanel> 
    </ScrollViewer >
</Window>
'

# Create the Window Object
$Reader=(New-Object System.Xml.XmlNodeReader $XAMLWindow)
$Window=[Windows.Markup.XamlReader]::Load( $Reader )

# TextChanged Event Handler for Input 
$TextboxInput = $Window.FindName("Input")
$TextboxInput.add_TextChanged.Invoke({
    $ComputerName = $TextboxInput.Text
    $ButtonGetService.IsEnabled = $ComputerName -ne ''
})

# Click Event Handler for ButtonClose
$ButtonClose = $Window.FindName("ButtonClose")
$ButtonClose.add_Click.Invoke({
    $Window.Close();
})

# Click Event Handler for ButtonGetService
$ButtonGetService = $Window.FindName("ButtonGetService")
$ButtonGetService.add_Click.Invoke({
    $ComputerName = $TextboxInput.text.Trim()
    try{
        Get-Service -ComputerName $computerName | Out-GridView -Title "Get-Service on $ComputerName"
    }catch{
        [System.Windows.MessageBox]::Show($_.exception.message,"Error",[System.Windows.MessageBoxButton]::OK,[System.Windows.MessageBoxImage]::Error)
    }
})

# Open the Window
$Window.ShowDialog() | Out-Null


