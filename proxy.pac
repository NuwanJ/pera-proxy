// Add this file to script addreess URL, example: file://D:\proxy.pac

function FindProxyForURL(url, host)
{
	return "PROXY cachex.pdn.ac.lk:3128; DIRECT";
	//return "PROXY 35.196.26.166:3128; DIRECT";
}