#!/bin/bash
# usage: topdf.sh in.pptx out.pdf
cat > /tmp/claude-1000/-home-brunoc-Projects-Universidad-StrategicMarketing/009b1706-2ab5-4c99-814f-44e184035205/scratchpad/deck/x2t.xml <<X
<?xml version="1.0" encoding="utf-8"?>
<TaskQueueDataConvert xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance" xmlns:xsd="http://www.w3.org/2001/XMLSchema">
<m_sFileFrom>$1</m_sFileFrom><m_sFileTo>$2</m_sFileTo><m_nFormatTo>513</m_nFormatTo>
<m_sFontDir>/home/brunoc/.local/share/onlyoffice/desktopeditors/data/fonts</m_sFontDir><m_sAllFontsPath>/home/brunoc/.local/share/onlyoffice/desktopeditors/data/fonts/AllFonts.js</m_sAllFontsPath><m_bIsNoBase64>false</m_bIsNoBase64>
</TaskQueueDataConvert>
X
cd /opt/onlyoffice/desktopeditors/converter && ./x2t /tmp/claude-1000/-home-brunoc-Projects-Universidad-StrategicMarketing/009b1706-2ab5-4c99-814f-44e184035205/scratchpad/deck/x2t.xml
