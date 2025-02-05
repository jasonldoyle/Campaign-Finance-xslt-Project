from lxml import etree

# Load the XML and XSLT files
xml_file = "campaign_finance_data.xml"
xslt_file = "campaign_searchbar_upgrade.xslt"

xml = etree.parse(xml_file)
xslt = etree.parse(xslt_file)

# Perform the transformation
transform = etree.XSLT(xslt)
result = transform(xml)

# Save the result to an HTML file
with open("campaign_contributions.html", "wb") as f:
    f.write(etree.tostring(result, pretty_print=True, method="html"))