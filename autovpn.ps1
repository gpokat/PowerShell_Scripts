while ($true)
{
    $vpnStatus = if ((rasdial | select-string "VPN NAME").count -eq 0) {"Disconnected"} else {"Online"}
    echo $vpnStatus
    if ($vpnStatus -eq "Disconnected")
    {
        rasdial "VPN NAME";
    }
    start-sleep -seconds 30
}