$file = 'C:\Users\U11231\Desktop\Web.config'
$doc = [xml] (Get-Content $file)

# Print the value of one of the elements in the web.conf
# Write-Output $doc.configuration.log4net.logger.level

$newNode = $doc.CreateElement("startup")
$newNode.SetAttribute("useLegacyV2RuntimeActivationPolicy", "true")
$newNode.InnerText = ""

$doc.configuration.InsertAfter($newNode, $doc.configuration.log4net)

#CrystalDecisions.CrystalReports.Engine
$AssemblyNode = $doc.CreateElement("dependentAssembly", $doc.configuration.runtime.assemblyBinding.NamespaceURI)

$IdentityNode = $doc.CreateElement("assemblyIdentity", $doc.configuration.runtime.assemblyBinding.NamespaceURI)
$IdentityNode.SetAttribute("name", "CrystalDecisions.CrystalReports.Engine")
$IdentityNode.SetAttribute("publicKeyToken", "692fbea5521e1304")
$IdentityNode.SetAttribute("culture", "neutral")

$BindyNode = $doc.CreateElement("bindingRedirect", $doc.configuration.runtime.assemblyBinding.NamespaceURI)
$BindyNode.SetAttribute("oldVersion", "13.0.2000.0")
$BindyNode.SetAttribute("newVersion", "13.0.3500.0")

$AssemblyNode.AppendChild($IdentityNode)
$AssemblyNode.AppendChild($BindyNode)

$doc.configuration.runtime.assemblyBinding.AppendChild($AssemblyNode)

#CrystalDecisions.ReportSource
$AssemblyNode = $doc.CreateElement("dependentAssembly", $doc.configuration.runtime.assemblyBinding.NamespaceURI)

$IdentityNode = $doc.CreateElement("assemblyIdentity", $doc.configuration.runtime.assemblyBinding.NamespaceURI)
$IdentityNode.SetAttribute("name", "CrystalDecisions.ReportSource")
$IdentityNode.SetAttribute("publicKeyToken", "692fbea5521e1304")
$IdentityNode.SetAttribute("culture", "neutral")

$BindyNode = $doc.CreateElement("bindingRedirect", $doc.configuration.runtime.assemblyBinding.NamespaceURI)
$BindyNode.SetAttribute("oldVersion", "13.0.2000.0")
$BindyNode.SetAttribute("newVersion", "13.0.3500.0")

$AssemblyNode.AppendChild($IdentityNode)
$AssemblyNode.AppendChild($BindyNode)

$doc.configuration.runtime.assemblyBinding.AppendChild($AssemblyNode)

#CrystalDecisions.Shared
$AssemblyNode = $doc.CreateElement("dependentAssembly", $doc.configuration.runtime.assemblyBinding.NamespaceURI)

$IdentityNode = $doc.CreateElement("assemblyIdentity", $doc.configuration.runtime.assemblyBinding.NamespaceURI)
$IdentityNode.SetAttribute("name", "CrystalDecisions.Shared")
$IdentityNode.SetAttribute("publicKeyToken", "692fbea5521e1304")
$IdentityNode.SetAttribute("culture", "neutral")

$BindyNode = $doc.CreateElement("bindingRedirect", $doc.configuration.runtime.assemblyBinding.NamespaceURI)
$BindyNode.SetAttribute("oldVersion", "13.0.2000.0")
$BindyNode.SetAttribute("newVersion", "13.0.3500.0")

$AssemblyNode.AppendChild($IdentityNode)
$AssemblyNode.AppendChild($BindyNode)

$doc.configuration.runtime.assemblyBinding.AppendChild($AssemblyNode)


#CrystalDecisions.Web
$AssemblyNode = $doc.CreateElement("dependentAssembly", $doc.configuration.runtime.assemblyBinding.NamespaceURI)

$IdentityNode = $doc.CreateElement("assemblyIdentity", $doc.configuration.runtime.assemblyBinding.NamespaceURI)
$IdentityNode.SetAttribute("name", "CrystalDecisions.Web")
$IdentityNode.SetAttribute("publicKeyToken", "692fbea5521e1304")
$IdentityNode.SetAttribute("culture", "neutral")

$BindyNode = $doc.CreateElement("bindingRedirect", $doc.configuration.runtime.assemblyBinding.NamespaceURI)
$BindyNode.SetAttribute("oldVersion", "13.0.2000.0")
$BindyNode.SetAttribute("newVersion", "13.0.3500.0")

$AssemblyNode.AppendChild($IdentityNode)
$AssemblyNode.AppendChild($BindyNode)

$doc.configuration.runtime.assemblyBinding.AppendChild($AssemblyNode)

#CrystalDecisions.Windows.Forms
$AssemblyNode = $doc.CreateElement("dependentAssembly", $doc.configuration.runtime.assemblyBinding.NamespaceURI)

$IdentityNode = $doc.CreateElement("assemblyIdentity", $doc.configuration.runtime.assemblyBinding.NamespaceURI)
$IdentityNode.SetAttribute("name", "CrystalDecisions.Windows.Forms")
$IdentityNode.SetAttribute("publicKeyToken", "692fbea5521e1304")
$IdentityNode.SetAttribute("culture", "neutral")

$BindyNode = $doc.CreateElement("bindingRedirect", $doc.configuration.runtime.assemblyBinding.NamespaceURI)
$BindyNode.SetAttribute("oldVersion", "13.0.2000.0")
$BindyNode.SetAttribute("newVersion", "13.0.3500.0")

$AssemblyNode.AppendChild($IdentityNode)
$AssemblyNode.AppendChild($BindyNode)

$doc.configuration.runtime.assemblyBinding.AppendChild($AssemblyNode)

#CrystalDecisions.ReportAppServer.ClientDoc
$AssemblyNode = $doc.CreateElement("dependentAssembly", $doc.configuration.runtime.assemblyBinding.NamespaceURI)

$IdentityNode = $doc.CreateElement("assemblyIdentity", $doc.configuration.runtime.assemblyBinding.NamespaceURI)
$IdentityNode.SetAttribute("name", "CrystalDecisions.ReportAppServer.ClientDoc")
$IdentityNode.SetAttribute("publicKeyToken", "692fbea5521e1304")
$IdentityNode.SetAttribute("culture", "neutral")

$BindyNode = $doc.CreateElement("bindingRedirect", $doc.configuration.runtime.assemblyBinding.NamespaceURI)
$BindyNode.SetAttribute("oldVersion", "13.0.2000.0")
$BindyNode.SetAttribute("newVersion", "13.0.3500.0")

$AssemblyNode.AppendChild($IdentityNode)
$AssemblyNode.AppendChild($BindyNode)

$doc.configuration.runtime.assemblyBinding.AppendChild($AssemblyNode)

#CrystalDecisions.ReportAppServer.CommonControls
$AssemblyNode = $doc.CreateElement("dependentAssembly", $doc.configuration.runtime.assemblyBinding.NamespaceURI)

$IdentityNode = $doc.CreateElement("assemblyIdentity", $doc.configuration.runtime.assemblyBinding.NamespaceURI)
$IdentityNode.SetAttribute("name", "CrystalDecisions.ReportAppServer.CommonControls")
$IdentityNode.SetAttribute("publicKeyToken", "692fbea5521e1304")
$IdentityNode.SetAttribute("culture", "neutral")

$BindyNode = $doc.CreateElement("bindingRedirect", $doc.configuration.runtime.assemblyBinding.NamespaceURI)
$BindyNode.SetAttribute("oldVersion", "13.0.2000.0")
$BindyNode.SetAttribute("newVersion", "13.0.3500.0")

$AssemblyNode.AppendChild($IdentityNode)
$AssemblyNode.AppendChild($BindyNode)

$doc.configuration.runtime.assemblyBinding.AppendChild($AssemblyNode)

#CrystalDecisions.ReportAppServer.CommonObjectModel
$AssemblyNode = $doc.CreateElement("dependentAssembly", $doc.configuration.runtime.assemblyBinding.NamespaceURI)

$IdentityNode = $doc.CreateElement("assemblyIdentity", $doc.configuration.runtime.assemblyBinding.NamespaceURI)
$IdentityNode.SetAttribute("name", "CrystalDecisions.ReportAppServer.CommonObjectModel")
$IdentityNode.SetAttribute("publicKeyToken", "692fbea5521e1304")
$IdentityNode.SetAttribute("culture", "neutral")

$BindyNode = $doc.CreateElement("bindingRedirect", $doc.configuration.runtime.assemblyBinding.NamespaceURI)
$BindyNode.SetAttribute("oldVersion", "13.0.2000.0")
$BindyNode.SetAttribute("newVersion", "13.0.3500.0")

$AssemblyNode.AppendChild($IdentityNode)
$AssemblyNode.AppendChild($BindyNode)

$doc.configuration.runtime.assemblyBinding.AppendChild($AssemblyNode)

#CrystalDecisions.ReportAppServer.Controllers
$AssemblyNode = $doc.CreateElement("dependentAssembly", $doc.configuration.runtime.assemblyBinding.NamespaceURI)

$IdentityNode = $doc.CreateElement("assemblyIdentity", $doc.configuration.runtime.assemblyBinding.NamespaceURI)
$IdentityNode.SetAttribute("name", "CrystalDecisions.ReportAppServer.Controllers")
$IdentityNode.SetAttribute("publicKeyToken", "692fbea5521e1304")
$IdentityNode.SetAttribute("culture", "neutral")

$BindyNode = $doc.CreateElement("bindingRedirect", $doc.configuration.runtime.assemblyBinding.NamespaceURI)
$BindyNode.SetAttribute("oldVersion", "13.0.2000.0")
$BindyNode.SetAttribute("newVersion", "13.0.3500.0")

$AssemblyNode.AppendChild($IdentityNode)
$AssemblyNode.AppendChild($BindyNode)

$doc.configuration.runtime.assemblyBinding.AppendChild($AssemblyNode)

#CrystalDecisions.ReportAppServer.CubeDefModel
$AssemblyNode = $doc.CreateElement("dependentAssembly", $doc.configuration.runtime.assemblyBinding.NamespaceURI)

$IdentityNode = $doc.CreateElement("assemblyIdentity", $doc.configuration.runtime.assemblyBinding.NamespaceURI)
$IdentityNode.SetAttribute("name", "CrystalDecisions.ReportAppServer.CubeDefModel")
$IdentityNode.SetAttribute("publicKeyToken", "692fbea5521e1304")
$IdentityNode.SetAttribute("culture", "neutral")

$BindyNode = $doc.CreateElement("bindingRedirect", $doc.configuration.runtime.assemblyBinding.NamespaceURI)
$BindyNode.SetAttribute("oldVersion", "13.0.2000.0")
$BindyNode.SetAttribute("newVersion", "13.0.3500.0")

$AssemblyNode.AppendChild($IdentityNode)
$AssemblyNode.AppendChild($BindyNode)

$doc.configuration.runtime.assemblyBinding.AppendChild($AssemblyNode)

#CrystalDecisions.ReportAppServer.DataDefModel
$AssemblyNode = $doc.CreateElement("dependentAssembly", $doc.configuration.runtime.assemblyBinding.NamespaceURI)

$IdentityNode = $doc.CreateElement("assemblyIdentity", $doc.configuration.runtime.assemblyBinding.NamespaceURI)
$IdentityNode.SetAttribute("name", "CrystalDecisions.ReportAppServer.DataDefModel")
$IdentityNode.SetAttribute("publicKeyToken", "692fbea5521e1304")
$IdentityNode.SetAttribute("culture", "neutral")

$BindyNode = $doc.CreateElement("bindingRedirect", $doc.configuration.runtime.assemblyBinding.NamespaceURI)
$BindyNode.SetAttribute("oldVersion", "13.0.2000.0")
$BindyNode.SetAttribute("newVersion", "13.0.3500.0")

$AssemblyNode.AppendChild($IdentityNode)
$AssemblyNode.AppendChild($BindyNode)

$doc.configuration.runtime.assemblyBinding.AppendChild($AssemblyNode)

#CrystalDecisions.ReportAppServer.DataSetConversion
$AssemblyNode = $doc.CreateElement("dependentAssembly", $doc.configuration.runtime.assemblyBinding.NamespaceURI)

$IdentityNode = $doc.CreateElement("assemblyIdentity", $doc.configuration.runtime.assemblyBinding.NamespaceURI)
$IdentityNode.SetAttribute("name", "CrystalDecisions.ReportAppServer.DataSetConversion")
$IdentityNode.SetAttribute("publicKeyToken", "692fbea5521e1304")
$IdentityNode.SetAttribute("culture", "neutral")

$BindyNode = $doc.CreateElement("bindingRedirect", $doc.configuration.runtime.assemblyBinding.NamespaceURI)
$BindyNode.SetAttribute("oldVersion", "13.0.2000.0")
$BindyNode.SetAttribute("newVersion", "13.0.3500.0")

$AssemblyNode.AppendChild($IdentityNode)
$AssemblyNode.AppendChild($BindyNode)

$doc.configuration.runtime.assemblyBinding.AppendChild($AssemblyNode)

#CrystalDecisions.ReportAppServer.ObjectFactory
$AssemblyNode = $doc.CreateElement("dependentAssembly", $doc.configuration.runtime.assemblyBinding.NamespaceURI)

$IdentityNode = $doc.CreateElement("assemblyIdentity", $doc.configuration.runtime.assemblyBinding.NamespaceURI)
$IdentityNode.SetAttribute("name", "CrystalDecisions.ReportAppServer.ObjectFactory")
$IdentityNode.SetAttribute("publicKeyToken", "692fbea5521e1304")
$IdentityNode.SetAttribute("culture", "neutral")

$BindyNode = $doc.CreateElement("bindingRedirect", $doc.configuration.runtime.assemblyBinding.NamespaceURI)
$BindyNode.SetAttribute("oldVersion", "13.0.2000.0")
$BindyNode.SetAttribute("newVersion", "13.0.3500.0")

$AssemblyNode.AppendChild($IdentityNode)
$AssemblyNode.AppendChild($BindyNode)

$doc.configuration.runtime.assemblyBinding.AppendChild($AssemblyNode)

#CrystalDecisions.ReportAppServer.Prompting
$AssemblyNode = $doc.CreateElement("dependentAssembly", $doc.configuration.runtime.assemblyBinding.NamespaceURI)

$IdentityNode = $doc.CreateElement("assemblyIdentity", $doc.configuration.runtime.assemblyBinding.NamespaceURI)
$IdentityNode.SetAttribute("name", "CrystalDecisions.ReportAppServer.Prompting")
$IdentityNode.SetAttribute("publicKeyToken", "692fbea5521e1304")
$IdentityNode.SetAttribute("culture", "neutral")

$BindyNode = $doc.CreateElement("bindingRedirect", $doc.configuration.runtime.assemblyBinding.NamespaceURI)
$BindyNode.SetAttribute("oldVersion", "13.0.2000.0")
$BindyNode.SetAttribute("newVersion", "13.0.3500.0")

$AssemblyNode.AppendChild($IdentityNode)
$AssemblyNode.AppendChild($BindyNode)

$doc.configuration.runtime.assemblyBinding.AppendChild($AssemblyNode)

#CrystalDecisions.ReportAppServer.ReportDefModel
$AssemblyNode = $doc.CreateElement("dependentAssembly", $doc.configuration.runtime.assemblyBinding.NamespaceURI)

$IdentityNode = $doc.CreateElement("assemblyIdentity", $doc.configuration.runtime.assemblyBinding.NamespaceURI)
$IdentityNode.SetAttribute("name", "CrystalDecisions.ReportAppServer.ReportDefModel")
$IdentityNode.SetAttribute("publicKeyToken", "692fbea5521e1304")
$IdentityNode.SetAttribute("culture", "neutral")

$BindyNode = $doc.CreateElement("bindingRedirect", $doc.configuration.runtime.assemblyBinding.NamespaceURI)
$BindyNode.SetAttribute("oldVersion", "13.0.2000.0")
$BindyNode.SetAttribute("newVersion", "13.0.3500.0")

$AssemblyNode.AppendChild($IdentityNode)
$AssemblyNode.AppendChild($BindyNode)

$doc.configuration.runtime.assemblyBinding.AppendChild($AssemblyNode)

#CrystalDecisions.ReportAppServer.XmlSerialize
$AssemblyNode = $doc.CreateElement("dependentAssembly", $doc.configuration.runtime.assemblyBinding.NamespaceURI)

$IdentityNode = $doc.CreateElement("assemblyIdentity", $doc.configuration.runtime.assemblyBinding.NamespaceURI)
$IdentityNode.SetAttribute("name", "CrystalDecisions.ReportAppServer.XmlSerialize")
$IdentityNode.SetAttribute("publicKeyToken", "692fbea5521e1304")
$IdentityNode.SetAttribute("culture", "neutral")

$BindyNode = $doc.CreateElement("bindingRedirect", $doc.configuration.runtime.assemblyBinding.NamespaceURI)
$BindyNode.SetAttribute("oldVersion", "13.0.2000.0")
$BindyNode.SetAttribute("newVersion", "13.0.3500.0")

$AssemblyNode.AppendChild($IdentityNode)
$AssemblyNode.AppendChild($BindyNode)

$doc.configuration.runtime.assemblyBinding.AppendChild($AssemblyNode)


$doc.Save($file)