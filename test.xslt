<?xml version="1.0" encoding="utf-8"?>
<xsl:stylesheet version="1.0"
                xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
                xmlns:aml="http://schemas.microsoft.com/aml/2001/core"
                xmlns:wpc="http://schemas.microsoft.com/office/word/2010/wordprocessingCanvas"
                xmlns:dt="uuid:C2F41010-65B3-11d1-A29F-00AA00C14882"
                xmlns:mc="http://schemas.openxmlformats.org/markup-compatibility/2006"
                xmlns:o="urn:schemas-microsoft-com:office:office"
                xmlns:v="urn:schemas-microsoft-com:vml"
                xmlns:w10="urn:schemas-microsoft-com:office:word"
                xmlns:w="http://schemas.microsoft.com/office/word/2003/wordml"
                xmlns:wx="http://schemas.microsoft.com/office/word/2003/auxHint"
                xmlns:wne="http://schemas.microsoft.com/office/word/2006/wordml"
                xmlns:wsp="http://schemas.microsoft.com/office/word/2003/wordml/sp2"
                xmlns:sl="http://schemas.microsoft.com/schemaLibrary/2003/core"
                xml:space="preserve">
  
  <xsl:output method="xml" indent="yes" omit-xml-declaration="yes" encoding="UTF-8"/>

  <xsl:key name="primarytasks-by-entityid" match="WorkpackageExport/WorkpackageTasks/WorkpackageTask" use="EntityId" />
  <xsl:key name="symbols-by-id" match="WorkpackageExport/Symbols/Symbol" use="Id" />
  
  <xsl:template match="/">
     <xsl:processing-instruction name="mso-application">
      <xsl:text>progid="Word.Document"</xsl:text>
    </xsl:processing-instruction>

<w:wordDocument xmlns:aml="http://schemas.microsoft.com/aml/2001/core" xmlns:wpc="http://schemas.microsoft.com/office/word/2010/wordprocessingCanvas" xmlns:dt="uuid:C2F41010-65B3-11d1-A29F-00AA00C14882" xmlns:mc="http://schemas.openxmlformats.org/markup-compatibility/2006" xmlns:o="urn:schemas-microsoft-com:office:office" xmlns:v="urn:schemas-microsoft-com:vml" xmlns:w10="urn:schemas-microsoft-com:office:word" xmlns:w="http://schemas.microsoft.com/office/word/2003/wordml" xmlns:wx="http://schemas.microsoft.com/office/word/2003/auxHint" xmlns:wne="http://schemas.microsoft.com/office/word/2006/wordml" xmlns:wsp="http://schemas.microsoft.com/office/word/2003/wordml/sp2" xmlns:sl="http://schemas.microsoft.com/schemaLibrary/2003/core" w:macrosPresent="no" w:embeddedObjPresent="no" w:ocxPresent="no" xml:space="preserve">
<w:ignoreSubtree w:val="http://schemas.microsoft.com/office/word/2003/wordml/sp2"/>
<o:DocumentProperties>
<o:Author>Rylson8</o:Author>
<o:LastAuthor>Rylson8</o:LastAuthor>
<o:Revision>3</o:Revision>
<o:TotalTime>1</o:TotalTime>
<o:LastPrinted>2012-09-03T22:06:00Z</o:LastPrinted>
<o:Created>2012-09-04T03:01:00Z</o:Created>
<o:LastSaved>2012-09-04T03:01:00Z</o:LastSaved>
<o:Pages>3</o:Pages>
<o:Words>319</o:Words>
<o:Characters>1822</o:Characters>
<o:Company>Microsoft</o:Company>
<o:Lines>15</o:Lines>
<o:Paragraphs>4</o:Paragraphs>
<o:CharactersWithSpaces>2137</o:CharactersWithSpaces>
<o:Version>14</o:Version>
</o:DocumentProperties>
<w:fonts>
<w:defaultFonts w:ascii="Calibri" w:fareast="Calibri" w:h-ansi="Calibri" w:cs="Times New Roman"/>
<w:font w:name="Times New Roman">
<w:panose-1 w:val="02020603050405020304"/>
<w:charset w:val="00"/>
<w:family w:val="Roman"/>
<w:pitch w:val="variable"/>
<w:sig w:usb-0="E0002AFF" w:usb-1="C0007841" w:usb-2="00000009" w:usb-3="00000000" w:csb-0="000001FF" w:csb-1="00000000"/>
</w:font>
<w:font w:name="Courier New">
<w:panose-1 w:val="02070309020205020404"/>
<w:charset w:val="00"/>
<w:family w:val="Modern"/>
<w:pitch w:val="fixed"/>
<w:sig w:usb-0="E0002AFF" w:usb-1="C0007843" w:usb-2="00000009" w:usb-3="00000000" w:csb-0="000001FF" w:csb-1="00000000"/>
</w:font>
<w:font w:name="Symbol">
<w:panose-1 w:val="05050102010706020507"/>
<w:charset w:val="02"/>
<w:family w:val="Roman"/>
<w:pitch w:val="variable"/>
<w:sig w:usb-0="00000000" w:usb-1="10000000" w:usb-2="00000000" w:usb-3="00000000" w:csb-0="80000000" w:csb-1="00000000"/>
</w:font>
<w:font w:name="Wingdings">
<w:panose-1 w:val="05000000000000000000"/>
<w:charset w:val="02"/>
<w:family w:val="auto"/>
<w:pitch w:val="variable"/>
<w:sig w:usb-0="00000000" w:usb-1="10000000" w:usb-2="00000000" w:usb-3="00000000" w:csb-0="80000000" w:csb-1="00000000"/>
</w:font>
<w:font w:name="Cambria Math">
<w:panose-1 w:val="02040503050406030204"/>
<w:charset w:val="01"/>
<w:family w:val="Roman"/>
<w:notTrueType/>
<w:pitch w:val="variable"/>
</w:font>
<w:font w:name="Calibri">
<w:panose-1 w:val="020F0502020204030204"/>
<w:charset w:val="00"/>
<w:family w:val="Swiss"/>
<w:pitch w:val="variable"/>
<w:sig w:usb-0="E10002FF" w:usb-1="4000ACFF" w:usb-2="00000009" w:usb-3="00000000" w:csb-0="0000019F" w:csb-1="00000000"/>
</w:font>
<w:font w:name="Tahoma">
<w:panose-1 w:val="020B0604030504040204"/>
<w:charset w:val="00"/>
<w:family w:val="Swiss"/>
<w:notTrueType/>
<w:pitch w:val="variable"/>
<w:sig w:usb-0="00000003" w:usb-1="00000000" w:usb-2="00000000" w:usb-3="00000000" w:csb-0="00000001" w:csb-1="00000000"/>
</w:font>
</w:fonts>
<w:lists>
<w:listDef w:listDefId="0">
<w:lsid w:val="44DC6D30"/>
<w:plt w:val="HybridMultilevel"/>
<w:tmpl w:val="190063B0"/>
<w:lvl w:ilvl="0" w:tplc="0C090001">
<w:start w:val="1"/>
<w:nfc w:val="23"/>
<w:lvlText w:val=""/>
<w:lvlJc w:val="left"/>
<w:pPr>
<w:ind w:left="720" w:hanging="360"/>
</w:pPr>
<w:rPr>
<w:rFonts w:ascii="Symbol" w:h-ansi="Symbol" w:hint="default"/>
</w:rPr>
</w:lvl>
<w:lvl w:ilvl="1" w:tplc="0C090003" w:tentative="on">
<w:start w:val="1"/>
<w:nfc w:val="23"/>
<w:lvlText w:val="o"/>
<w:lvlJc w:val="left"/>
<w:pPr>
<w:ind w:left="1440" w:hanging="360"/>
</w:pPr>
<w:rPr>
<w:rFonts w:ascii="Courier New" w:h-ansi="Courier New" w:cs="Courier New" w:hint="default"/>
</w:rPr>
</w:lvl>
<w:lvl w:ilvl="2" w:tplc="0C090005" w:tentative="on">
<w:start w:val="1"/>
<w:nfc w:val="23"/>
<w:lvlText w:val=""/>
<w:lvlJc w:val="left"/>
<w:pPr>
<w:ind w:left="2160" w:hanging="360"/>
</w:pPr>
<w:rPr>
<w:rFonts w:ascii="Wingdings" w:h-ansi="Wingdings" w:hint="default"/>
</w:rPr>
</w:lvl>
<w:lvl w:ilvl="3" w:tplc="0C090001" w:tentative="on">
<w:start w:val="1"/>
<w:nfc w:val="23"/>
<w:lvlText w:val=""/>
<w:lvlJc w:val="left"/>
<w:pPr>
<w:ind w:left="2880" w:hanging="360"/>
</w:pPr>
<w:rPr>
<w:rFonts w:ascii="Symbol" w:h-ansi="Symbol" w:hint="default"/>
</w:rPr>
</w:lvl>
<w:lvl w:ilvl="4" w:tplc="0C090003" w:tentative="on">
<w:start w:val="1"/>
<w:nfc w:val="23"/>
<w:lvlText w:val="o"/>
<w:lvlJc w:val="left"/>
<w:pPr>
<w:ind w:left="3600" w:hanging="360"/>
</w:pPr>
<w:rPr>
<w:rFonts w:ascii="Courier New" w:h-ansi="Courier New" w:cs="Courier New" w:hint="default"/>
</w:rPr>
</w:lvl>
<w:lvl w:ilvl="5" w:tplc="0C090005" w:tentative="on">
<w:start w:val="1"/>
<w:nfc w:val="23"/>
<w:lvlText w:val=""/>
<w:lvlJc w:val="left"/>
<w:pPr>
<w:ind w:left="4320" w:hanging="360"/>
</w:pPr>
<w:rPr>
<w:rFonts w:ascii="Wingdings" w:h-ansi="Wingdings" w:hint="default"/>
</w:rPr>
</w:lvl>
<w:lvl w:ilvl="6" w:tplc="0C090001" w:tentative="on">
<w:start w:val="1"/>
<w:nfc w:val="23"/>
<w:lvlText w:val=""/>
<w:lvlJc w:val="left"/>
<w:pPr>
<w:ind w:left="5040" w:hanging="360"/>
</w:pPr>
<w:rPr>
<w:rFonts w:ascii="Symbol" w:h-ansi="Symbol" w:hint="default"/>
</w:rPr>
</w:lvl>
<w:lvl w:ilvl="7" w:tplc="0C090003" w:tentative="on">
<w:start w:val="1"/>
<w:nfc w:val="23"/>
<w:lvlText w:val="o"/>
<w:lvlJc w:val="left"/>
<w:pPr>
<w:ind w:left="5760" w:hanging="360"/>
</w:pPr>
<w:rPr>
<w:rFonts w:ascii="Courier New" w:h-ansi="Courier New" w:cs="Courier New" w:hint="default"/>
</w:rPr>
</w:lvl>
<w:lvl w:ilvl="8" w:tplc="0C090005" w:tentative="on">
<w:start w:val="1"/>
<w:nfc w:val="23"/>
<w:lvlText w:val=""/>
<w:lvlJc w:val="left"/>
<w:pPr>
<w:ind w:left="6480" w:hanging="360"/>
</w:pPr>
<w:rPr>
<w:rFonts w:ascii="Wingdings" w:h-ansi="Wingdings" w:hint="default"/>
</w:rPr>
</w:lvl>
</w:listDef>
<w:list w:ilfo="1">
<w:ilst w:val="0"/>
</w:list>
</w:lists>
<w:styles>
<w:versionOfBuiltInStylenames w:val="7"/>
<w:latentStyles w:defLockedState="off" w:latentStyleCount="267">
<w:lsdException w:name="Normal"/>
<w:lsdException w:name="heading 1"/>
<w:lsdException w:name="heading 2"/>
<w:lsdException w:name="heading 3"/>
<w:lsdException w:name="heading 4"/>
<w:lsdException w:name="heading 5"/>
<w:lsdException w:name="heading 6"/>
<w:lsdException w:name="heading 7"/>
<w:lsdException w:name="heading 8"/>
<w:lsdException w:name="heading 9"/>
<w:lsdException w:name="toc 1"/>
<w:lsdException w:name="toc 2"/>
<w:lsdException w:name="toc 3"/>
<w:lsdException w:name="toc 4"/>
<w:lsdException w:name="toc 5"/>
<w:lsdException w:name="toc 6"/>
<w:lsdException w:name="toc 7"/>
<w:lsdException w:name="toc 8"/>
<w:lsdException w:name="toc 9"/>
<w:lsdException w:name="caption"/>
<w:lsdException w:name="Title"/>
<w:lsdException w:name="Default Paragraph Font"/>
<w:lsdException w:name="Subtitle"/>
<w:lsdException w:name="Strong"/>
<w:lsdException w:name="Emphasis"/>
<w:lsdException w:name="Table Grid"/>
<w:lsdException w:name="Placeholder Text"/>
<w:lsdException w:name="No Spacing"/>
<w:lsdException w:name="Light Shading"/>
<w:lsdException w:name="Light List"/>
<w:lsdException w:name="Light Grid"/>
<w:lsdException w:name="Medium Shading 1"/>
<w:lsdException w:name="Medium Shading 2"/>
<w:lsdException w:name="Medium List 1"/>
<w:lsdException w:name="Medium List 2"/>
<w:lsdException w:name="Medium Grid 1"/>
<w:lsdException w:name="Medium Grid 2"/>
<w:lsdException w:name="Medium Grid 3"/>
<w:lsdException w:name="Dark List"/>
<w:lsdException w:name="Colorful Shading"/>
<w:lsdException w:name="Colorful List"/>
<w:lsdException w:name="Colorful Grid"/>
<w:lsdException w:name="Light Shading Accent 1"/>
<w:lsdException w:name="Light List Accent 1"/>
<w:lsdException w:name="Light Grid Accent 1"/>
<w:lsdException w:name="Medium Shading 1 Accent 1"/>
<w:lsdException w:name="Medium Shading 2 Accent 1"/>
<w:lsdException w:name="Medium List 1 Accent 1"/>
<w:lsdException w:name="Revision"/>
<w:lsdException w:name="List Paragraph"/>
<w:lsdException w:name="Quote"/>
<w:lsdException w:name="Intense Quote"/>
<w:lsdException w:name="Medium List 2 Accent 1"/>
<w:lsdException w:name="Medium Grid 1 Accent 1"/>
<w:lsdException w:name="Medium Grid 2 Accent 1"/>
<w:lsdException w:name="Medium Grid 3 Accent 1"/>
<w:lsdException w:name="Dark List Accent 1"/>
<w:lsdException w:name="Colorful Shading Accent 1"/>
<w:lsdException w:name="Colorful List Accent 1"/>
<w:lsdException w:name="Colorful Grid Accent 1"/>
<w:lsdException w:name="Light Shading Accent 2"/>
<w:lsdException w:name="Light List Accent 2"/>
<w:lsdException w:name="Light Grid Accent 2"/>
<w:lsdException w:name="Medium Shading 1 Accent 2"/>
<w:lsdException w:name="Medium Shading 2 Accent 2"/>
<w:lsdException w:name="Medium List 1 Accent 2"/>
<w:lsdException w:name="Medium List 2 Accent 2"/>
<w:lsdException w:name="Medium Grid 1 Accent 2"/>
<w:lsdException w:name="Medium Grid 2 Accent 2"/>
<w:lsdException w:name="Medium Grid 3 Accent 2"/>
<w:lsdException w:name="Dark List Accent 2"/>
<w:lsdException w:name="Colorful Shading Accent 2"/>
<w:lsdException w:name="Colorful List Accent 2"/>
<w:lsdException w:name="Colorful Grid Accent 2"/>
<w:lsdException w:name="Light Shading Accent 3"/>
<w:lsdException w:name="Light List Accent 3"/>
<w:lsdException w:name="Light Grid Accent 3"/>
<w:lsdException w:name="Medium Shading 1 Accent 3"/>
<w:lsdException w:name="Medium Shading 2 Accent 3"/>
<w:lsdException w:name="Medium List 1 Accent 3"/>
<w:lsdException w:name="Medium List 2 Accent 3"/>
<w:lsdException w:name="Medium Grid 1 Accent 3"/>
<w:lsdException w:name="Medium Grid 2 Accent 3"/>
<w:lsdException w:name="Medium Grid 3 Accent 3"/>
<w:lsdException w:name="Dark List Accent 3"/>
<w:lsdException w:name="Colorful Shading Accent 3"/>
<w:lsdException w:name="Colorful List Accent 3"/>
<w:lsdException w:name="Colorful Grid Accent 3"/>
<w:lsdException w:name="Light Shading Accent 4"/>
<w:lsdException w:name="Light List Accent 4"/>
<w:lsdException w:name="Light Grid Accent 4"/>
<w:lsdException w:name="Medium Shading 1 Accent 4"/>
<w:lsdException w:name="Medium Shading 2 Accent 4"/>
<w:lsdException w:name="Medium List 1 Accent 4"/>
<w:lsdException w:name="Medium List 2 Accent 4"/>
<w:lsdException w:name="Medium Grid 1 Accent 4"/>
<w:lsdException w:name="Medium Grid 2 Accent 4"/>
<w:lsdException w:name="Medium Grid 3 Accent 4"/>
<w:lsdException w:name="Dark List Accent 4"/>
<w:lsdException w:name="Colorful Shading Accent 4"/>
<w:lsdException w:name="Colorful List Accent 4"/>
<w:lsdException w:name="Colorful Grid Accent 4"/>
<w:lsdException w:name="Light Shading Accent 5"/>
<w:lsdException w:name="Light List Accent 5"/>
<w:lsdException w:name="Light Grid Accent 5"/>
<w:lsdException w:name="Medium Shading 1 Accent 5"/>
<w:lsdException w:name="Medium Shading 2 Accent 5"/>
<w:lsdException w:name="Medium List 1 Accent 5"/>
<w:lsdException w:name="Medium List 2 Accent 5"/>
<w:lsdException w:name="Medium Grid 1 Accent 5"/>
<w:lsdException w:name="Medium Grid 2 Accent 5"/>
<w:lsdException w:name="Medium Grid 3 Accent 5"/>
<w:lsdException w:name="Dark List Accent 5"/>
<w:lsdException w:name="Colorful Shading Accent 5"/>
<w:lsdException w:name="Colorful List Accent 5"/>
<w:lsdException w:name="Colorful Grid Accent 5"/>
<w:lsdException w:name="Light Shading Accent 6"/>
<w:lsdException w:name="Light List Accent 6"/>
<w:lsdException w:name="Light Grid Accent 6"/>
<w:lsdException w:name="Medium Shading 1 Accent 6"/>
<w:lsdException w:name="Medium Shading 2 Accent 6"/>
<w:lsdException w:name="Medium List 1 Accent 6"/>
<w:lsdException w:name="Medium List 2 Accent 6"/>
<w:lsdException w:name="Medium Grid 1 Accent 6"/>
<w:lsdException w:name="Medium Grid 2 Accent 6"/>
<w:lsdException w:name="Medium Grid 3 Accent 6"/>
<w:lsdException w:name="Dark List Accent 6"/>
<w:lsdException w:name="Colorful Shading Accent 6"/>
<w:lsdException w:name="Colorful List Accent 6"/>
<w:lsdException w:name="Colorful Grid Accent 6"/>
<w:lsdException w:name="Subtle Emphasis"/>
<w:lsdException w:name="Intense Emphasis"/>
<w:lsdException w:name="Subtle Reference"/>
<w:lsdException w:name="Intense Reference"/>
<w:lsdException w:name="Book Title"/>
<w:lsdException w:name="Bibliography"/>
<w:lsdException w:name="TOC Heading"/>
</w:latentStyles>
<w:style w:type="paragraph" w:default="on" w:styleId="Normal">
<w:name w:val="Normal"/>
<w:pPr>
<w:spacing w:after="200" w:line="276" w:line-rule="auto"/>
</w:pPr>
<w:rPr>
<wx:font wx:val="Calibri"/>
<w:sz w:val="22"/>
<w:sz-cs w:val="22"/>
<w:lang w:val="EN-AU" w:fareast="EN-US" w:bidi="AR-SA"/>
</w:rPr>
</w:style>
<w:style w:type="character" w:default="on" w:styleId="DefaultParagraphFont">
<w:name w:val="Default Paragraph Font"/>
</w:style>
<w:style w:type="table" w:default="on" w:styleId="TableNormal">
<w:name w:val="Normal Table"/>
<wx:uiName wx:val="Table Normal"/>
<w:rPr>
<wx:font wx:val="Calibri"/>
<w:lang w:val="EN-AU" w:fareast="EN-AU" w:bidi="AR-SA"/>
</w:rPr>
<w:tblPr>
<w:tblInd w:w="0" w:type="dxa"/>
<w:tblCellMar>
<w:top w:w="0" w:type="dxa"/>
<w:left w:w="108" w:type="dxa"/>
<w:bottom w:w="0" w:type="dxa"/>
<w:right w:w="108" w:type="dxa"/>
</w:tblCellMar>
</w:tblPr>
</w:style>
<w:style w:type="list" w:default="on" w:styleId="NoList">
<w:name w:val="No List"/>
</w:style>
<w:style w:type="table" w:styleId="TableGrid">
<w:name w:val="Table Grid"/>
<w:basedOn w:val="TableNormal"/>
<w:rsid w:val="00D54805"/>
<w:rPr>
<wx:font wx:val="Calibri"/>
</w:rPr>
<w:tblPr>
<w:tblInd w:w="0" w:type="dxa"/>
<w:tblBorders>
<w:top w:val="single" w:sz="4" wx:bdrwidth="10" w:space="0" w:color="auto"/>
<w:left w:val="single" w:sz="4" wx:bdrwidth="10" w:space="0" w:color="auto"/>
<w:bottom w:val="single" w:sz="4" wx:bdrwidth="10" w:space="0" w:color="auto"/>
<w:right w:val="single" w:sz="4" wx:bdrwidth="10" w:space="0" w:color="auto"/>
<w:insideH w:val="single" w:sz="4" wx:bdrwidth="10" w:space="0" w:color="auto"/>
<w:insideV w:val="single" w:sz="4" wx:bdrwidth="10" w:space="0" w:color="auto"/>
</w:tblBorders>
<w:tblCellMar>
<w:top w:w="0" w:type="dxa"/>
<w:left w:w="108" w:type="dxa"/>
<w:bottom w:w="0" w:type="dxa"/>
<w:right w:w="108" w:type="dxa"/>
</w:tblCellMar>
</w:tblPr>
</w:style>
<w:style w:type="paragraph" w:styleId="BalloonText">
<w:name w:val="Balloon Text"/>
<w:basedOn w:val="Normal"/>
<w:link w:val="BalloonTextChar"/>
<w:rsid w:val="00D54805"/>
<w:pPr>
<w:spacing w:after="0" w:line="240" w:line-rule="auto"/>
</w:pPr>
<w:rPr>
<w:rFonts w:ascii="Tahoma" w:h-ansi="Tahoma" w:cs="Tahoma"/>
<wx:font wx:val="Tahoma"/>
<w:sz w:val="16"/>
<w:sz-cs w:val="16"/>
</w:rPr>
</w:style>
<w:style w:type="character" w:styleId="BalloonTextChar">
<w:name w:val="Balloon Text Char"/>
<w:link w:val="BalloonText"/>
<w:rsid w:val="00D54805"/>
<w:rPr>
<w:rFonts w:ascii="Tahoma" w:h-ansi="Tahoma" w:cs="Tahoma"/>
<w:sz w:val="16"/>
<w:sz-cs w:val="16"/>
</w:rPr>
</w:style>
<w:style w:type="paragraph" w:styleId="NoSpacing">
<w:name w:val="No Spacing"/>
<w:rsid w:val="00D54805"/>
<w:rPr>
<wx:font wx:val="Calibri"/>
<w:sz w:val="22"/>
<w:sz-cs w:val="22"/>
<w:lang w:val="EN-AU" w:fareast="EN-US" w:bidi="AR-SA"/>
</w:rPr>
</w:style>
<w:style w:type="paragraph" w:styleId="Header">
<w:name w:val="header"/>
<wx:uiName wx:val="Header"/>
<w:basedOn w:val="Normal"/>
<w:link w:val="HeaderChar"/>
<w:rsid w:val="007330AC"/>
<w:pPr>
<w:tabs>
<w:tab w:val="center" w:pos="4513"/>
<w:tab w:val="right" w:pos="9026"/>
</w:tabs>
<w:spacing w:after="0" w:line="240" w:line-rule="auto"/>
</w:pPr>
<w:rPr>
<wx:font wx:val="Calibri"/>
</w:rPr>
</w:style>
<w:style w:type="character" w:styleId="HeaderChar">
<w:name w:val="Header Char"/>
<w:basedOn w:val="DefaultParagraphFont"/>
<w:link w:val="Header"/>
<w:rsid w:val="007330AC"/>
</w:style>
<w:style w:type="paragraph" w:styleId="Footer">
<w:name w:val="footer"/>
<wx:uiName wx:val="Footer"/>
<w:basedOn w:val="Normal"/>
<w:link w:val="FooterChar"/>
<w:rsid w:val="007330AC"/>
<w:pPr>
<w:tabs>
<w:tab w:val="center" w:pos="4513"/>
<w:tab w:val="right" w:pos="9026"/>
</w:tabs>
<w:spacing w:after="0" w:line="240" w:line-rule="auto"/>
</w:pPr>
<w:rPr>
<wx:font wx:val="Calibri"/>
</w:rPr>
</w:style>
<w:style w:type="character" w:styleId="FooterChar">
<w:name w:val="Footer Char"/>
<w:basedOn w:val="DefaultParagraphFont"/>
<w:link w:val="Footer"/>
<w:rsid w:val="007330AC"/>
</w:style>
</w:styles>
<w:shapeDefaults>
<o:shapedefaults v:ext="edit" spidmax="2049"/>
<o:shapelayout v:ext="edit">
<o:idmap v:ext="edit" data="1"/>
</o:shapelayout>
</w:shapeDefaults>
<w:docPr>
<w:view w:val="print"/>
<w:zoom w:percent="120"/>
<w:doNotEmbedSystemFonts/>
<w:proofState w:spelling="clean" w:grammar="clean"/>
<w:defaultTabStop w:val="720"/>
<w:punctuationKerning/>
<w:characterSpacingControl w:val="DontCompress"/>
<w:optimizeForBrowser/>
<w:allowPNG/>
<w:validateAgainstSchema/>
<w:saveInvalidXML w:val="off"/>
<w:ignoreMixedContent w:val="off"/>
<w:alwaysShowPlaceholderText w:val="off"/>
<w:hdrShapeDefaults>
<o:shapedefaults v:ext="edit" spidmax="2049"/>
</w:hdrShapeDefaults>
<w:footnotePr>
<w:footnote w:type="separator">
<w:p>
<w:pPr>
<w:spacing w:after="0" w:line="240" w:line-rule="auto"/>
</w:pPr>
<w:r>
<w:separator/>
</w:r>
</w:p>
</w:footnote>
<w:footnote w:type="continuation-separator">
<w:p>
<w:pPr>
<w:spacing w:after="0" w:line="240" w:line-rule="auto"/>
</w:pPr>
<w:r>
<w:continuationSeparator/>
</w:r>
</w:p>
</w:footnote>
</w:footnotePr>
<w:endnotePr>
<w:endnote w:type="separator">
<w:p>
<w:pPr>
<w:spacing w:after="0" w:line="240" w:line-rule="auto"/>
</w:pPr>
<w:r>
<w:separator/>
</w:r>
</w:p>
</w:endnote>
<w:endnote w:type="continuation-separator">
<w:p>
<w:pPr>
<w:spacing w:after="0" w:line="240" w:line-rule="auto"/>
</w:pPr>
<w:r>
<w:continuationSeparator/>
</w:r>
</w:p>
</w:endnote>
</w:endnotePr>
<w:compat>
<w:breakWrappedTables/>
<w:snapToGridInCell/>
<w:wrapTextWithPunct/>
<w:useAsianBreakRules/>
<w:dontGrowAutofit/>
</w:compat>
<wsp:rsids>
<wsp:rsidRoot wsp:val="00D54805"/>
<wsp:rsid wsp:val="0009643F"/>
<wsp:rsid wsp:val="00100B64"/>
<wsp:rsid wsp:val="001B3D3E"/>
<wsp:rsid wsp:val="003149DA"/>
<wsp:rsid wsp:val="003A5B4E"/>
<wsp:rsid wsp:val="003D4F84"/>
<wsp:rsid wsp:val="003E463D"/>
<wsp:rsid wsp:val="004C11A3"/>
<wsp:rsid wsp:val="004F1944"/>
<wsp:rsid wsp:val="005A446B"/>
<wsp:rsid wsp:val="005D6C37"/>
<wsp:rsid wsp:val="00665936"/>
<wsp:rsid wsp:val="006E7286"/>
<wsp:rsid wsp:val="007330AC"/>
<wsp:rsid wsp:val="00744F9C"/>
<wsp:rsid wsp:val="00786F21"/>
<wsp:rsid wsp:val="007954B6"/>
<wsp:rsid wsp:val="00804A3B"/>
<wsp:rsid wsp:val="00943DC5"/>
<wsp:rsid wsp:val="009E4C6A"/>
<wsp:rsid wsp:val="009F0FB5"/>
<wsp:rsid wsp:val="00A30485"/>
<wsp:rsid wsp:val="00A81677"/>
<wsp:rsid wsp:val="00C877D1"/>
<wsp:rsid wsp:val="00CB030E"/>
<wsp:rsid wsp:val="00CB25E1"/>
<wsp:rsid wsp:val="00D04BCB"/>
<wsp:rsid wsp:val="00D54805"/>
<wsp:rsid wsp:val="00F11481"/>
<wsp:rsid wsp:val="00F4045E"/>
<wsp:rsid wsp:val="00FF0714"/>
</wsp:rsids>
</w:docPr>
      
      
<w:body>
<wx:sect>
<xsl:for-each select="WorkpackageExport/WorkpackageDetails">
<w:tbl>
<w:tblPr>
<w:tblW w:w="5000" w:type="pct"/>
    
<w:tblBorders>
<w:top w:val="single" w:sz="4" wx:bdrwidth="10" w:space="0" w:color="auto"/>
<w:left w:val="single" w:sz="4" wx:bdrwidth="10" w:space="0" w:color="auto"/>
<w:bottom w:val="single" w:sz="4" wx:bdrwidth="10" w:space="0" w:color="auto"/>
<w:right w:val="single" w:sz="4" wx:bdrwidth="10" w:space="0" w:color="auto"/>
<w:insideH w:val="single" w:sz="4" wx:bdrwidth="10" w:space="0" w:color="auto"/>
<w:insideV w:val="single" w:sz="4" wx:bdrwidth="10" w:space="0" w:color="auto"/>
</w:tblBorders>
<w:tblLook w:val="04A0"/>
</w:tblPr>
<w:tblGrid>
<w:gridCol />
<w:gridCol />
<w:gridCol />
</w:tblGrid>
<w:tr>
  
<w:tc>
<w:tcPr>
<w:tcW w:w="3685" w:type="dxa"/>
<w:vmerge w:val="restart"/>
<w:shd w:val="clear" w:color="auto" w:fill="auto"/>
</w:tcPr>
<w:p>
<w:pPr>
<w:spacing w:after="0" w:line="240" w:line-rule="auto"/>
</w:pPr>
<w:r>
<w:rPr>
<w:noProof/>
</w:rPr>
<w:pict>
<v:shapetype id="_x0000_t75" coordsize="21600,21600" o:spt="75" o:preferrelative="t" path="m@4@5l@4@11@9@11@9@5xe" filled="f" stroked="f">
<v:stroke joinstyle="miter"/>
<v:formulas>
<v:f eqn="if lineDrawn pixelLineWidth 0"/>
<v:f eqn="sum @0 1 0"/>
<v:f eqn="sum 0 0 @1"/>
<v:f eqn="prod @2 1 2"/>
<v:f eqn="prod @3 21600 pixelWidth"/>
<v:f eqn="prod @3 21600 pixelHeight"/>
<v:f eqn="sum @0 0 1"/>
<v:f eqn="prod @6 1 2"/>
<v:f eqn="prod @7 21600 pixelWidth"/>
<v:f eqn="sum @8 21600 0"/>
<v:f eqn="prod @7 21600 pixelHeight"/>
<v:f eqn="sum @10 21600 0"/>
</v:formulas>
<v:path o:extrusionok="f" gradientshapeok="t" o:connecttype="rect"/>
<o:lock v:ext="edit" aspectratio="t"/>
</v:shapetype>
<w:binData w:name="wordml://02000001.jpg" xml:space="preserve">/9j/4AAQSkZJRgABAQEA3ADcAAD/2wBDAAIBAQIBAQICAgICAgICAwUDAwMDAwYEBAMFBwYHBwcG
BwcICQsJCAgKCAcHCg0KCgsMDAwMBwkODw0MDgsMDAz/2wBDAQICAgMDAwYDAwYMCAcIDAwMDAwM
DAwMDAwMDAwMDAwMDAwMDAwMDAwMDAwMDAwMDAwMDAwMDAwMDAwMDAwMDAz/wAARCACfAhcDASIA
AhEBAxEB/8QAHwAAAQUBAQEBAQEAAAAAAAAAAAECAwQFBgcICQoL/8QAtRAAAgEDAwIEAwUFBAQA
AAF9AQIDAAQRBRIhMUEGE1FhByJxFDKBkaEII0KxwRVS0fAkM2JyggkKFhcYGRolJicoKSo0NTY3
ODk6Q0RFRkdISUpTVFVWV1hZWmNkZWZnaGlqc3R1dnd4eXqDhIWGh4iJipKTlJWWl5iZmqKjpKWm
p6ipqrKztLW2t7i5usLDxMXGx8jJytLT1NXW19jZ2uHi4+Tl5ufo6erx8vP09fb3+Pn6/8QAHwEA
AwEBAQEBAQEBAQAAAAAAAAECAwQFBgcICQoL/8QAtREAAgECBAQDBAcFBAQAAQJ3AAECAxEEBSEx
BhJBUQdhcRMiMoEIFEKRobHBCSMzUvAVYnLRChYkNOEl8RcYGRomJygpKjU2Nzg5OkNERUZHSElK
U1RVVldYWVpjZGVmZ2hpanN0dXZ3eHl6goOEhYaHiImKkpOUlZaXmJmaoqOkpaanqKmqsrO0tba3
uLm6wsPExcbHyMnK0tPU1dbX2Nna4uPk5ebn6Onq8vP09fb3+Pn6/9oADAMBAAIRAxEAPwD9/KKK
KACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAoooo
AKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigA
ooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACikdwikkHAGeK+NP8Agq7/AMFg/CP/AATd
8JwafBFH4l+I2tW5m0zQxLsSGPJH2m5YcpFkEAD5nKkDADMu+FwtXEVVRox5pPoROooLmkfZbOFz
nIxQrbhnBFfy5fG3/gtL+0t8dPFE2pXvxT8Q6DC77otP0CY6baW4z91VjwzAersx96k+Hf8AwW6/
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
GzsMHt9nh2xnrjlSa9bD4biCr/Gqqmvl+i/U5pTwkfhjzH6UeMP+CXP/AAT+/YxkZvif8Yr/AMQ6
jZZ87SzrsclwSOzW1jH54PGOSBXFaz/wW6/Z0/YxsbjT/wBmH4B6bHqYUxL4g1q3W3Lf7Wdz3Mo9
meP6V+X+kfBvxh4ihSaw8KeJL+OUZV4NMmlDj1BCnIrTtP2ZviTqEm23+H3jediQMR6FdNyfold8
MlpNXxdeVTycrL7jJYiS0pxS+Wp3P7YX/BRf4u/t0a4Ln4g+LLy+0+KQyW2j2v8Ao2mWZ/2IF+Un
HG59ze5rw/JOeM19AfDL/glX+0Z8XL+KDRvg548CykAT32mPp9uM9zLOETH41+g37Fv/AAazalqZ
tdZ+OfihdPhJDnw94fkWSYj+7NdMCq57iNW/367K2a5bgafLzxSWyjr+C/UiNCtVle1/U/JX4b/D
TxF8YPGFl4e8K6Hq3iLXNRbZbWGnWr3FxMfZFBOB3OMAda/aL/gkT/wbxyfCbxJpXxL+O1tp99rV
kVudL8KBkuILGQYKy3TDKSSKeRGu5QQCSx4H6SfszfsW/C/9j3wqNI+HXg3R/Ddu6gTzwx77u7I6
GWdiZJD/ALzHHavUVUKAACAK+Gzfi2tiU6WHXJF9erX6f1qenh8vhB80tWNjhEQCqoVR0HpT6KK+
RPRCiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooo
oAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACmvGr
nJBOKdRSYGP4x8A6H8RdCm0vxBo+l65plyMTWmoWqXMEo/2kcFT+Ir598Vf8EbP2YPGF48938FvB
cMj9RZW72SD6LCyKPwAr6aoraliK1L+FNx9G0RKEXuj5j8O/8Eaf2XvDFwktv8FvBkrpwBdwPdqf
qsrMD+Ir174cfssfDP4OhR4R+Hngjwx5f3TpWh21mQfXMaDn3rvqKqpiq8/jm36tgqcVsiIwgDGP
bgGgRL3UnHrUtFc9kWiNIgMAAgDsOBUgGBiiimCCiiigAooooAKKKKACiiigAooooAKKKKACiiig
AooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKAC
iiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKK
KKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooo
oAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigD//Z
</w:binData>
<v:shape id="Picture 1" o:spid="_x0000_s1027" type="#_x0000_t75" alt="Description: " style="position:absolute;margin-left:-1.5pt;margin-top:5pt;width:174.7pt;height:51.8pt;z-index:4;visibility:visible;mso-wrap-style:square;mso-width-percent:0;mso-height-percent:0;mso-wrap-distance-left:9pt;mso-wrap-distance-top:0;mso-wrap-distance-right:9pt;mso-wrap-distance-bottom:0;mso-position-horizontal-relative:text;mso-position-vertical-relative:text;mso-width-percent:0;mso-height-percent:0;mso-width-relative:page;mso-height-relative:page">
<v:imagedata src="wordml://02000001.jpg" o:title="AA Logo"/>
</v:shape>
</w:pict>
</w:r>
</w:p>
</w:tc>
  
<w:tc>
  <w:tcPr>
  <w:tcW w:w="5812" w:type="dxa"/>
  <w:gridSpan w:val="2"/>
  <w:shd w:val="clear" w:color="auto" w:fill="auto"/>
  <w:vAlign w:val="center"/>
  </w:tcPr>
  <w:p>
  <w:pPr>
  <w:pStyle w:val="NoSpacing"/>
  <w:rPr>
  <w:b/>
  <w:sz w:val="36"/>
  <w:sz-cs w:val="36"/>
  </w:rPr>
  </w:pPr>
  <w:r>
  <w:rPr>
  <w:b/>
  <w:sz w:val="36"/>
  <w:sz-cs w:val="36"/>
  </w:rPr>
  <w:t><xsl:value-of select="Name"/></w:t>
  </w:r>
  </w:p>
  <w:p>
  <w:pPr>
  <w:pStyle w:val="NoSpacing"/>
  <w:rPr>
  <w:sz w:val="36"/>
  <w:sz-cs w:val="36"/>
  </w:rPr>
  </w:pPr>
  <w:r>
  <w:rPr>
  <w:b/>
  <w:sz w:val="36"/>
  <w:sz-cs w:val="36"/>
  </w:rPr>
  <w:t>(<xsl:value-of select="Code"/>_<xsl:value-of select="SequenceNumber"/>)</w:t>
  </w:r>
  </w:p>
</w:tc>

<w:tc>
  <w:tcPr>
  <w:tcW w:w="1643" w:type="dxa"/>
  <w:shd w:val="clear" w:color="auto" w:fill="auto"/>
  <w:vAlign w:val="center"/>
  </w:tcPr>
  <w:p>
  <w:pPr>
  <w:spacing w:after="0" w:line="240" w:line-rule="auto"/>
  <w:jc w:val="center"/>
  <w:rPr>
  <w:b/>
  </w:rPr>
  </w:pPr>
  <w:r>
  <w:rPr>
  <w:b/>
  </w:rPr>
  <w:t>Controlled Document</w:t>
  </w:r>
  </w:p>
</w:tc>
  
</w:tr>
<w:tr>
<w:trPr>
<w:trHeight w:val="379"/>
</w:trPr>
  
<w:tc>
<w:tcPr>
<w:tcW w:w="3685" w:type="dxa"/>
<w:vmerge/>
<w:shd w:val="clear" w:color="auto" w:fill="auto"/>
</w:tcPr>
<w:p>
<w:pPr>
<w:spacing w:after="0" w:line="240" w:line-rule="auto"/>
</w:pPr>
</w:p>
</w:tc>
  
<w:tc>
<w:tcPr>
<w:tcW w:w="3327" w:type="dxa"/>
<w:shd w:val="clear" w:color="auto" w:fill="auto"/>
</w:tcPr>
<w:p>
<w:pPr>
<w:spacing w:after="0" w:line="240" w:line-rule="auto"/>
<w:rPr>
<w:b/>
</w:rPr>
</w:pPr>
<w:r>
<w:rPr>
<w:b/>
</w:rPr>
    <w:t>Approved by: <xsl:value-of select="ApprovedBy"/></w:t>
</w:r>
</w:p>
</w:tc>
<w:tc>
<w:tcPr>
<w:tcW w:w="3628" w:type="dxa"/>
<w:gridSpan w:val="2"/>
<w:shd w:val="clear" w:color="auto" w:fill="auto"/>
</w:tcPr>
<w:p>
<w:pPr>
<w:spacing w:after="0" w:line="240" w:line-rule="auto"/>
<w:rPr>
<w:b/>
</w:rPr>
</w:pPr>
<w:r>
<w:rPr>
<w:b/>
</w:rPr>
    <w:t>Rev Date: <xsl:value-of select="ExportDate"/></w:t>
</w:r>
</w:p>
</w:tc>
</w:tr>
</w:tbl>
  
</xsl:for-each>
<w:p>
<w:pPr>
<w:pStyle w:val="NoSpacing"/>
</w:pPr>
</w:p>
<w:tbl>
<w:tblPr>
<w:tblW w:w="5000" w:type="pct"/>

<w:tblBorders>
<w:top w:val="single" w:sz="4" wx:bdrwidth="10" w:space="0" w:color="auto"/>
<w:left w:val="single" w:sz="4" wx:bdrwidth="10" w:space="0" w:color="auto"/>
<w:bottom w:val="single" w:sz="4" wx:bdrwidth="10" w:space="0" w:color="auto"/>
<w:right w:val="single" w:sz="4" wx:bdrwidth="10" w:space="0" w:color="auto"/>
<w:insideH w:val="single" w:sz="4" wx:bdrwidth="10" w:space="0" w:color="auto"/>
<w:insideV w:val="single" w:sz="4" wx:bdrwidth="10" w:space="0" w:color="auto"/>
</w:tblBorders>
<w:tblLook w:val="04A0"/>
</w:tblPr>
<w:tblGrid>
<w:gridCol w:w="11340"/>
</w:tblGrid>
<w:tr>
<w:tc>
<w:tcPr>
<w:tcW w:w="11340" w:type="dxa"/>
<w:shd w:val="clear" w:color="auto" w:fill="FFFF00"/>
</w:tcPr>
<w:p>
<w:pPr>
<w:pStyle w:val="NoSpacing"/>
<w:rPr>
<w:b/>
</w:rPr>
</w:pPr>
<w:r>
<w:rPr>
<w:b/>
</w:rPr>
<w:t>Safety Instructions</w:t>
</w:r>
</w:p>
</w:tc>
</w:tr>
<w:tr>
<w:tc>
<w:tcPr>
<w:tcW w:w="11340" w:type="dxa"/>
<w:shd w:val="clear" w:color="auto" w:fill="auto"/>
</w:tcPr>
<w:p>
<w:pPr>
<w:pStyle w:val="NoSpacing"/>
<w:listPr>
<w:ilvl w:val="0"/>
<w:ilfo w:val="1"/>
<wx:t wx:val="·"/>
<wx:font wx:val="Symbol"/>
</w:listPr>
</w:pPr>
<w:r>
<w:t>Complete personal risk assessment (Take 5, SLAM, etc.)</w:t>
</w:r>
</w:p>
<w:p>
<w:pPr>
<w:pStyle w:val="NoSpacing"/>
<w:listPr>
<w:ilvl w:val="0"/>
<w:ilfo w:val="1"/>
<wx:t wx:val="·"/>
<wx:font wx:val="Symbol"/>
</w:listPr>
</w:pPr>
<w:r>
<w:t>Isolate as per AAMC Control of Energy Standard </w:t>
</w:r>
<w:r wsp:rsidR="00943DC5" wsp:rsidRPr="0002268A">
<w:rPr>
<w:noProof/>
<w:lang w:fareast="EN-AU"/>
</w:rPr>
<w:pict>
<w:binData w:name="wordml://02000002.jpg" xml:space="preserve">/9j/4AAQSkZJRgABAQEA3ADcAAD/2wBDAAIBAQIBAQICAgICAgICAwUDAwMDAwYEBAMFBwYHBwcG
BwcICQsJCAgKCAcHCg0KCgsMDAwMBwkODw0MDgsMDAz/2wBDAQICAgMDAwYDAwYMCAcIDAwMDAwM
DAwMDAwMDAwMDAwMDAwMDAwMDAwMDAwMDAwMDAwMDAwMDAwMDAwMDAwMDAz/wAARCAA3ADcDASIA
AhEBAxEB/8QAHwAAAQUBAQEBAQEAAAAAAAAAAAECAwQFBgcICQoL/8QAtRAAAgEDAwIEAwUFBAQA
AAF9AQIDAAQRBRIhMUEGE1FhByJxFDKBkaEII0KxwRVS0fAkM2JyggkKFhcYGRolJicoKSo0NTY3
ODk6Q0RFRkdISUpTVFVWV1hZWmNkZWZnaGlqc3R1dnd4eXqDhIWGh4iJipKTlJWWl5iZmqKjpKWm
p6ipqrKztLW2t7i5usLDxMXGx8jJytLT1NXW19jZ2uHi4+Tl5ufo6erx8vP09fb3+Pn6/8QAHwEA
AwEBAQEBAQEBAQAAAAAAAAECAwQFBgcICQoL/8QAtREAAgECBAQDBAcFBAQAAQJ3AAECAxEEBSEx
BhJBUQdhcRMiMoEIFEKRobHBCSMzUvAVYnLRChYkNOEl8RcYGRomJygpKjU2Nzg5OkNERUZHSElK
U1RVVldYWVpjZGVmZ2hpanN0dXZ3eHl6goOEhYaHiImKkpOUlZaXmJmaoqOkpaanqKmqsrO0tba3
uLm6wsPExcbHyMnK0tPU1dbX2Nna4uPk5ebn6Onq8vP09fb3+Pn6/9oADAMBAAIRAxEAPwD9pfg5
+z34BvPhP4WuZvBHhCW4m0i0keR9Hty7sYVJJJTJJPetTxV8JvhZ4J0C81XVvC3gHTdO0+IzXNzd
abaQwwIBku7soCqACcnjirXgHxVp3gf9nLRNZ1a8h0/S9K8NwXl3czHEdvDHaq7ux7BVBJ9hX5Af
HT/grTqP7QX7XOia/qdpc2Hw08MT3CaPpPlwXE1pJJBNBHqssUivDPeQtKJo43zGhjVAw3PK/sYD
LKuNqSa2ju/0Xmzy8ZmFPCwinu9v835H0f8AH7/grx+zp8Pb64sPBPwo0Xx7dQOqm6OmW2madICP
m2SvC8pKnjmEKezEc15Af+C2fg9dQYn9m7wO1sCfkF7Bu/76+xY/8drhPj/+xv45+PXhXTfFGm+D
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
</w:binData>
<v:shape id="Picture 2" o:spid="_x0000_i1035" type="#_x0000_t75" alt="Description: Padlock" style="width:18.15pt;height:18.15pt;visibility:visible;mso-wrap-style:square">
<v:imagedata src="wordml://02000002.jpg" o:title="Padlock"/>
</v:shape>
</w:pict>
</w:r>
</w:p>
<w:p>
<w:pPr>
<w:pStyle w:val="NoSpacing"/>
<w:listPr>
<w:ilvl w:val="0"/>
<w:ilfo w:val="1"/>
<wx:t wx:val="·"/>
<wx:font wx:val="Symbol"/>
</w:listPr>
</w:pPr>
<w:r>
<w:t>Use mandatory Personal Protective Equipment (PPE)</w:t>
</w:r>
<w:r>
<w:rPr>
<w:noProof/>
<w:lang w:fareast="EN-AU"/>
</w:rPr>
<w:t> </w:t>
</w:r>
<w:r wsp:rsidR="00943DC5" wsp:rsidRPr="0002268A">
<w:rPr>
<w:noProof/>
<w:lang w:fareast="EN-AU"/>
</w:rPr>
<w:pict>
<w:binData w:name="wordml://02000003.jpg" xml:space="preserve">/9j/4AAQSkZJRgABAQEA3ADcAAD/2wBDAAIBAQIBAQICAgICAgICAwUDAwMDAwYEBAMFBwYHBwcG
BwcICQsJCAgKCAcHCg0KCgsMDAwMBwkODw0MDgsMDAz/2wBDAQICAgMDAwYDAwYMCAcIDAwMDAwM
DAwMDAwMDAwMDAwMDAwMDAwMDAwMDAwMDAwMDAwMDAwMDAwMDAwMDAwMDAz/wAARCABAAEEDASIA
AhEBAxEB/8QAHwAAAQUBAQEBAQEAAAAAAAAAAAECAwQFBgcICQoL/8QAtRAAAgEDAwIEAwUFBAQA
AAF9AQIDAAQRBRIhMUEGE1FhByJxFDKBkaEII0KxwRVS0fAkM2JyggkKFhcYGRolJicoKSo0NTY3
ODk6Q0RFRkdISUpTVFVWV1hZWmNkZWZnaGlqc3R1dnd4eXqDhIWGh4iJipKTlJWWl5iZmqKjpKWm
p6ipqrKztLW2t7i5usLDxMXGx8jJytLT1NXW19jZ2uHi4+Tl5ufo6erx8vP09fb3+Pn6/8QAHwEA
AwEBAQEBAQEBAQAAAAAAAAECAwQFBgcICQoL/8QAtREAAgECBAQDBAcFBAQAAQJ3AAECAxEEBSEx
BhJBUQdhcRMiMoEIFEKRobHBCSMzUvAVYnLRChYkNOEl8RcYGRomJygpKjU2Nzg5OkNERUZHSElK
U1RVVldYWVpjZGVmZ2hpanN0dXZ3eHl6goOEhYaHiImKkpOUlZaXmJmaoqOkpaanqKmqsrO0tba3
uLm6wsPExcbHyMnK0tPU1dbX2Nna4uPk5ebn6Onq8vP09fb3+Pn6/9oADAMBAAIRAxEAPwD9+3cJ
15NMNwOhA/OkuGAbJPAFfnR/wWg/4LASfsnxy/DL4b3VrJ8Rb23WXUtRIWZfDcTgMg2EFTcupDBX
BCoysQdy13Zdl9fG4iOHoK8n9yXd+R5mbZrh8vw0sViHaK+9vsvM+rv2qP8AgoZ8JP2M7ZR4/wDF
9hpmoTIslvpdvuu9RnRshXEEYZ1QlWAdgEyp+avhj4l/8HQ/hbS9Zjj8H/CTxBrtgVy82r63DpUy
tnoI4o7kEe5cfTvX4/eJ/Emp+PPEd7rGrX9/q2r6lK1zeXd3O09xcyNyzu7EszHHUnPNfWv7NX/B
Cj9oH9o/w7FrD6HpfgXS7gboJfFFxJZzzrkjIt0jkmXGM/vETcCCMgg1+l0+Ecny+kp5nUu33bS+
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
2SP2nIMgw2VYf2NBXb1b6t/1sSUUUV5B7h//2R==
</w:binData>
<v:shape id="Picture 3" o:spid="_x0000_i1034" type="#_x0000_t75" alt="Description: Hard Hat" style="width:21.3pt;height:20.65pt;visibility:visible;mso-wrap-style:square">
<v:imagedata src="wordml://02000003.jpg" o:title="Hard Hat"/>
</v:shape>
</w:pict>
</w:r>
<w:r wsp:rsidR="00943DC5" wsp:rsidRPr="0002268A">
<w:rPr>
<w:noProof/>
<w:lang w:fareast="EN-AU"/>
</w:rPr>
<w:pict>
<w:binData w:name="wordml://02000004.jpg" xml:space="preserve">/9j/4AAQSkZJRgABAQEA3ADcAAD/2wBDAAIBAQIBAQICAgICAgICAwUDAwMDAwYEBAMFBwYHBwcG
BwcICQsJCAgKCAcHCg0KCgsMDAwMBwkODw0MDgsMDAz/2wBDAQICAgMDAwYDAwYMCAcIDAwMDAwM
DAwMDAwMDAwMDAwMDAwMDAwMDAwMDAwMDAwMDAwMDAwMDAwMDAwMDAwMDAz/wAARCABAAEEDASIA
AhEBAxEB/8QAHwAAAQUBAQEBAQEAAAAAAAAAAAECAwQFBgcICQoL/8QAtRAAAgEDAwIEAwUFBAQA
AAF9AQIDAAQRBRIhMUEGE1FhByJxFDKBkaEII0KxwRVS0fAkM2JyggkKFhcYGRolJicoKSo0NTY3
ODk6Q0RFRkdISUpTVFVWV1hZWmNkZWZnaGlqc3R1dnd4eXqDhIWGh4iJipKTlJWWl5iZmqKjpKWm
p6ipqrKztLW2t7i5usLDxMXGx8jJytLT1NXW19jZ2uHi4+Tl5ufo6erx8vP09fb3+Pn6/8QAHwEA
AwEBAQEBAQEBAQAAAAAAAAECAwQFBgcICQoL/8QAtREAAgECBAQDBAcFBAQAAQJ3AAECAxEEBSEx
BhJBUQdhcRMiMoEIFEKRobHBCSMzUvAVYnLRChYkNOEl8RcYGRomJygpKjU2Nzg5OkNERUZHSElK
U1RVVldYWVpjZGVmZ2hpanN0dXZ3eHl6goOEhYaHiImKkpOUlZaXmJmaoqOkpaanqKmqsrO0tba3
uLm6wsPExcbHyMnK0tPU1dbX2Nna4uPk5ebn6Onq8vP09fb3+Pn6/9oADAMBAAIRAxEAPwD9+Wm2
tjGaa1yADuAAHqabKwDZOcACvzU/4LS/8Fi739my9uPhT8LL+KLxzLCj61rKqsh0GNwGWCINkG5d
CrEsMRowIy7Ap35ZltfHYhYfDq7f3Jd2eZm+bYfLsNLFYl2ivvb7I+s/2vP+CmPwg/Ymj8nxt4og
/tt4/Mi0TTh9s1KUEZBMS/6tSOjSlFODgkjFfDXxA/4OitItNYuIvC/wf1HUNPXHkXOq6+lnO3ru
hihlUY9pTX5D+IfEF94r1u71TU7u71DUb+Vri6urmVppriRjlnd2JLMTySSST7mvZv2af+Cbfxq/
a0giu/BngTVrjSJdrf2tfBbDT9hbaWWaYqsu08lYt7Y/hr9Sw3BeVYKkqmYT5n3b5V8rWZ+N4vjz
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
dYfDrzbe7fdklFFFeYeyf//Z
</w:binData>
<v:shape id="Picture 4" o:spid="_x0000_i1033" type="#_x0000_t75" alt="Description: Eyes" style="width:21.3pt;height:21.3pt;visibility:visible;mso-wrap-style:square">
<v:imagedata src="wordml://02000004.jpg" o:title="Eyes"/>
</v:shape>
</w:pict>
</w:r>
<w:r wsp:rsidR="00943DC5" wsp:rsidRPr="0002268A">
<w:rPr>
<w:noProof/>
<w:lang w:fareast="EN-AU"/>
</w:rPr>
<w:pict>
<w:binData w:name="wordml://02000005.jpg" xml:space="preserve">/9j/4AAQSkZJRgABAQEA3ADcAAD/2wBDAAIBAQIBAQICAgICAgICAwUDAwMDAwYEBAMFBwYHBwcG
BwcICQsJCAgKCAcHCg0KCgsMDAwMBwkODw0MDgsMDAz/2wBDAQICAgMDAwYDAwYMCAcIDAwMDAwM
DAwMDAwMDAwMDAwMDAwMDAwMDAwMDAwMDAwMDAwMDAwMDAwMDAwMDAwMDAz/wAARCAA/AEADASIA
AhEBAxEB/8QAHwAAAQUBAQEBAQEAAAAAAAAAAAECAwQFBgcICQoL/8QAtRAAAgEDAwIEAwUFBAQA
AAF9AQIDAAQRBRIhMUEGE1FhByJxFDKBkaEII0KxwRVS0fAkM2JyggkKFhcYGRolJicoKSo0NTY3
ODk6Q0RFRkdISUpTVFVWV1hZWmNkZWZnaGlqc3R1dnd4eXqDhIWGh4iJipKTlJWWl5iZmqKjpKWm
p6ipqrKztLW2t7i5usLDxMXGx8jJytLT1NXW19jZ2uHi4+Tl5ufo6erx8vP09fb3+Pn6/8QAHwEA
AwEBAQEBAQEBAQAAAAAAAAECAwQFBgcICQoL/8QAtREAAgECBAQDBAcFBAQAAQJ3AAECAxEEBSEx
BhJBUQdhcRMiMoEIFEKRobHBCSMzUvAVYnLRChYkNOEl8RcYGRomJygpKjU2Nzg5OkNERUZHSElK
U1RVVldYWVpjZGVmZ2hpanN0dXZ3eHl6goOEhYaHiImKkpOUlZaXmJmaoqOkpaanqKmqsrO0tba3
uLm6wsPExcbHyMnK0tPU1dbX2Nna4uPk5ebn6Onq8vP09fb3+Pn6/9oADAMBAAIRAxEAPwD9+GbZ
gADGKa0wAOcACiU9D2xX5h/8Fqv+Cx918DLu/wDhH8KNSEXi54jH4g16A5bRFYf8e1uR0uSpy0n/
ACyBAX94cxehlmW18fiI4fDq7f3Jd2eVnOcYfLcM8TiXZLZdW+yPrf8Aa6/4Kj/Br9itpLTxh4oh
udfUEroWlKLzUm4U/PGp2w5DAqZmQNg4Jwa+JvG3/B0Vo9jr80Ph34NahqenKuY7jUPEcdlMx56x
xwSqO3/LQ9e1fkHqepXOt6hcXl3cT3l5dyNNPNM5kkmdjlnZjyWJJJJ6k12fww+CA+IfgTX/ABFd
+JtA8MaboN7Zac0uqJdstxcXUV3LFGv2eGUglbKXlwqg4ywr9Uw3A+WYWjz4y8311aV/JLX8z8Yx
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
</w:binData>
<v:shape id="Picture 5" o:spid="_x0000_i1032" type="#_x0000_t75" alt="Description: Safety Boots" style="width:20.65pt;height:20.65pt;visibility:visible;mso-wrap-style:square">
<v:imagedata src="wordml://02000005.jpg" o:title="Safety Boots"/>
</v:shape>
</w:pict>
</w:r>
<w:r wsp:rsidR="00943DC5" wsp:rsidRPr="0002268A">
<w:rPr>
<w:noProof/>
<w:lang w:fareast="EN-AU"/>
</w:rPr>
<w:pict>
<w:binData w:name="wordml://02000006.jpg" xml:space="preserve">/9j/4AAQSkZJRgABAQEA3ADcAAD/2wBDAAIBAQIBAQICAgICAgICAwUDAwMDAwYEBAMFBwYHBwcG
BwcICQsJCAgKCAcHCg0KCgsMDAwMBwkODw0MDgsMDAz/2wBDAQICAgMDAwYDAwYMCAcIDAwMDAwM
DAwMDAwMDAwMDAwMDAwMDAwMDAwMDAwMDAwMDAwMDAwMDAwMDAwMDAwMDAz/wAARCAA/AEADASIA
AhEBAxEB/8QAHwAAAQUBAQEBAQEAAAAAAAAAAAECAwQFBgcICQoL/8QAtRAAAgEDAwIEAwUFBAQA
AAF9AQIDAAQRBRIhMUEGE1FhByJxFDKBkaEII0KxwRVS0fAkM2JyggkKFhcYGRolJicoKSo0NTY3
ODk6Q0RFRkdISUpTVFVWV1hZWmNkZWZnaGlqc3R1dnd4eXqDhIWGh4iJipKTlJWWl5iZmqKjpKWm
p6ipqrKztLW2t7i5usLDxMXGx8jJytLT1NXW19jZ2uHi4+Tl5ufo6erx8vP09fb3+Pn6/8QAHwEA
AwEBAQEBAQEBAQAAAAAAAAECAwQFBgcICQoL/8QAtREAAgECBAQDBAcFBAQAAQJ3AAECAxEEBSEx
BhJBUQdhcRMiMoEIFEKRobHBCSMzUvAVYnLRChYkNOEl8RcYGRomJygpKjU2Nzg5OkNERUZHSElK
U1RVVldYWVpjZGVmZ2hpanN0dXZ3eHl6goOEhYaHiImKkpOUlZaXmJmaoqOkpaanqKmqsrO0tba3
uLm6wsPExcbHyMnK0tPU1dbX2Nna4uPk5ebn6Onq8vP09fb3+Pn6/9oADAMBAAIRAxEAPwD99nYg
gAgAj0pCxAyWAH0pJ2CgsxO0Lk1+YX/BaT/gsrcfBK61L4R/CfUBF4uVPJ1/XoWBOiBlz9mtz/z9
EEFn/wCWQIAzISYvQyzLK2OrqhQV29+yXdnk5znFDLsO8RXdktl1b7I+tv2u/wDgqN8HP2KpHs/F
/ieO68QAZTQtJUXmonhT86AhYQQwIMzIGwdpJBA+JfGH/B0fpNj4jmh8P/BrUdT0pQDHc3/iJLKd
+v3oktpVU+3mGvyJ1XVLnXtUub69ubi9vbyVprieeRpJZpGOWdmbJZickk5JJrp/g78H734w6ve2
ltqOkaTFZRRvJdalNJFBvlnjgiiHlo7F3llRR8uANzMVVWYfqmE4Gy7D0efFtza31aXySs/xPxrH
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
</w:binData>
<v:shape id="Picture 6" o:spid="_x0000_i1031" type="#_x0000_t75" alt="Description: Gloves" style="width:20.65pt;height:20.65pt;visibility:visible;mso-wrap-style:square">
<v:imagedata src="wordml://02000006.jpg" o:title="Gloves"/>
</v:shape>
</w:pict>
</w:r>
</w:p>
<w:p>
<w:pPr>
<w:pStyle w:val="NoSpacing"/>
<w:listPr>
<w:ilvl w:val="0"/>
<w:ilfo w:val="1"/>
<wx:t wx:val="·"/>
<wx:font wx:val="Symbol"/>
</w:listPr>
</w:pPr>
<w:r>
<w:t>Comply with Golden Rules</w:t>
</w:r>
</w:p>
</w:tc>
</w:tr>
</w:tbl>
<w:p>
<w:pPr>
<w:pStyle w:val="NoSpacing"/>
</w:pPr>
</w:p>
<w:tbl>
<w:tblPr>
<w:tblW w:w="5000" w:type="pct"/>

<w:tblBorders>
<w:top w:val="single" w:sz="4" wx:bdrwidth="10" w:space="0" w:color="auto"/>
<w:left w:val="single" w:sz="4" wx:bdrwidth="10" w:space="0" w:color="auto"/>
<w:bottom w:val="single" w:sz="4" wx:bdrwidth="10" w:space="0" w:color="auto"/>
<w:right w:val="single" w:sz="4" wx:bdrwidth="10" w:space="0" w:color="auto"/>
</w:tblBorders>
<w:tblLook w:val="04A0"/>
</w:tblPr>
<w:tblGrid>
<w:gridCol w:w="3544"/>
<w:gridCol w:w="3544"/>
<w:gridCol w:w="4252"/>
</w:tblGrid>
<w:tr>
<w:tc>
<w:tcPr>
<w:tcW w:w="11340" w:type="dxa"/>
<w:gridSpan w:val="3"/>
<w:tcBorders>
<w:top w:val="single" w:sz="4" wx:bdrwidth="10" w:space="0" w:color="auto"/>
<w:bottom w:val="single" w:sz="4" wx:bdrwidth="10" w:space="0" w:color="auto"/>
</w:tcBorders>
<w:shd w:val="clear" w:color="auto" w:fill="FFFF00"/>
</w:tcPr>
<w:p>
<w:pPr>
<w:pStyle w:val="NoSpacing"/>
<w:rPr>
<w:b/>
</w:rPr>
</w:pPr>
<w:r>
<w:rPr>
<w:b/>
</w:rPr>
<w:t>Hazard Information and Symbol</w:t>
</w:r>
</w:p>
</w:tc>
</w:tr>

  <!-- Calculate the number of symbols -->
  <xsl:call-template name="SymbolTable">
          <xsl:with-param name="symbols" select="/WorkpackageExport/Symbols"></xsl:with-param>
          <xsl:with-param name="startIndex">1</xsl:with-param>
  </xsl:call-template>

</w:tbl>
<w:p>
<w:pPr>
<w:pStyle w:val="NoSpacing"/>
</w:pPr>
</w:p>
<w:tbl>
<w:tblPr>
<w:tblW w:w="5000" w:type="pct"/>

<w:tblBorders>
<w:top w:val="single" w:sz="4" wx:bdrwidth="10" w:space="0" w:color="auto"/>
<w:left w:val="single" w:sz="4" wx:bdrwidth="10" w:space="0" w:color="auto"/>
<w:bottom w:val="single" w:sz="4" wx:bdrwidth="10" w:space="0" w:color="auto"/>
<w:right w:val="single" w:sz="4" wx:bdrwidth="10" w:space="0" w:color="auto"/>
<w:insideH w:val="single" w:sz="4" wx:bdrwidth="10" w:space="0" w:color="auto"/>
<w:insideV w:val="single" w:sz="4" wx:bdrwidth="10" w:space="0" w:color="auto"/>
</w:tblBorders>
<w:tblLook w:val="04A0"/>
</w:tblPr>
<w:tblGrid>
<w:gridCol w:w="886"/>
<w:gridCol w:w="10455"/>
</w:tblGrid>
<w:tr>
<w:trPr>
<w:tblHeader/>
</w:trPr>
<w:tc>
<w:tcPr>
<w:tcW w:w="11331" w:type="dxa"/>
<w:gridSpan w:val="2"/>
<w:shd w:val="clear" w:color="auto" w:fill="auto"/>
</w:tcPr>
<w:p>
<w:pPr>
<w:pStyle w:val="NoSpacing"/>
<w:rPr>
<w:b/>
</w:rPr>
</w:pPr>
<w:r>
<w:rPr>
<w:b/>
<w:noProof/>
<w:lang w:fareast="EN-AU"/>
</w:rPr>
<w:pict>
<w:binData w:name="wordml://02000008.jpg" xml:space="preserve">/9j/4AAQSkZJRgABAQEA3ADcAAD/2wBDAAIBAQIBAQICAgICAgICAwUDAwMDAwYEBAMFBwYHBwcG
BwcICQsJCAgKCAcHCg0KCgsMDAwMBwkODw0MDgsMDAz/2wBDAQICAgMDAwYDAwYMCAcIDAwMDAwM
DAwMDAwMDAwMDAwMDAwMDAwMDAwMDAwMDAwMDAwMDAwMDAwMDAwMDAwMDAz/wAARCAA3ADQDASIA
AhEBAxEB/8QAHwAAAQUBAQEBAQEAAAAAAAAAAAECAwQFBgcICQoL/8QAtRAAAgEDAwIEAwUFBAQA
AAF9AQIDAAQRBRIhMUEGE1FhByJxFDKBkaEII0KxwRVS0fAkM2JyggkKFhcYGRolJicoKSo0NTY3
ODk6Q0RFRkdISUpTVFVWV1hZWmNkZWZnaGlqc3R1dnd4eXqDhIWGh4iJipKTlJWWl5iZmqKjpKWm
p6ipqrKztLW2t7i5usLDxMXGx8jJytLT1NXW19jZ2uHi4+Tl5ufo6erx8vP09fb3+Pn6/8QAHwEA
AwEBAQEBAQEBAQAAAAAAAAECAwQFBgcICQoL/8QAtREAAgECBAQDBAcFBAQAAQJ3AAECAxEEBSEx
BhJBUQdhcRMiMoEIFEKRobHBCSMzUvAVYnLRChYkNOEl8RcYGRomJygpKjU2Nzg5OkNERUZHSElK
U1RVVldYWVpjZGVmZ2hpanN0dXZ3eHl6goOEhYaHiImKkpOUlZaXmJmaoqOkpaanqKmqsrO0tba3
uLm6wsPExcbHyMnK0tPU1dbX2Nna4uPk5ebn6Onq8vP09fb3+Pn6/9oADAMBAAIRAxEAPwD9/GIC
knGBX4e/8FxP+Dnv4n/sD/t26z8HvhV4N8D3Nv4Lt7RtZ1DxNa3V3JfXFxaxXSrCsFxD5cSxTopJ
yxbJG0Abv2J/aV/aJ8I/smfAjxT8RvHWrwaH4U8JWD39/dynoowqxoOryyOyRog+Z3dFAJYCv5cP
+Cn/APwWA/Zb/wCCkn7Rz+O9d/Zj8e2+p2qmw/tnTPiNb6LeeIrOMgW5vrY6bdRrKsY25jkLhSEM
rrHHtAP6VP8Agml+2rZf8FEv2HPh78Y7HSLjQU8ZWUrT6fNIJDaXNvcy2lwisPvxieCXYxALJtJV
SSo90r8w/wDg38/4LffBP9uLwxb/AAT8G/D9/gprngXSlGieFG1D+0rO802EBS9vdmONpZkJ3SrK
okbf5gaX96Y/vf8Aa1/al8IfsU/s5+Lfil48vpNP8K+DrL7ZeSRp5kspLrHFDGuQGllleONFJALy
KCQOQAfm3/wcUf8ABwV42/4JSfFzwb8N/hj4V8Pap4q17SF8SalqXiGCW4soLOSee3ihgjhmjYzN
JbSlmc7VUIAGLkp9O/8ABCz/AIKh33/BWb9iQfEXW/D1n4a8UaJrU/hvW7exLmxmuoYbefzrcOzO
sbR3MZ2uzMrbxuYAM34Wf8FWf+C9H7PX/BVDXtObxp+zB4rkufC00tvo3ifTPiLFpGry2TMT5M0b
aZcxbGO1/LbzDG27Y43uX+jv+CQ3/Bzz+z1+yjoHhL4KWvwF1X4OfDgTBJPEEfioeIZheTSIr3t+
Htbd2Vs7pJEZiioqxxbFRFAP6EaKbFOk8SyIysjjcpHQj1ooA/IL/g8M+P8AqmmfsgfDD4H+GjfT
+Ivjd4tjj+x24Lf2jaWRib7OQOpa8ubBlB6mM9xx/ON+1ro3hLwt+0l4y0XwIYJvCHh7UpNH0q8i
lllGrQ2v+ji/YyEkPdGM3DKMIrTsqKiBUX98v+Dhb9mT4q6R+39b/tT6/Y21n8FPgF8Pxd+H9Ui1
X5ovEiyXA0tDahvM806xdaezsqLE1vAN0m9dlfzlMdxz3NAH3H/wTm+N2gfsRfGf9k/9oHTTBoFt
o/i3UvCfjuYyzXLTwiSNri/ePLeWG0vWBAiRgBm012ALlyf6Bf8Ag6lu2j/4Ii/FXy3IWS80NWx0
Yf2xZnB/EA1/OP8A8E5PhD4k/bY+GnxV/Z58KQWt/wCLPE1vp/jfwnYSXi2r6nq+kPNE1qryMsSh
tN1LVJTvxue1hG5QDn97f+C3fgT4hab/AMGxVzo/j60luPiFonh7wlF4n8u4+2ObyG909LmR5ASH
IkDFnBKk7iCVwSAfzafth/CjR/gz8WNI0jQ4p4rK98FeFNdkWWUyN9p1Hw7p2oXJBP8ACZ7mUqOy
4Hajwj8K9H1X9jLx544mW5Gv+HfGnhrQ7R1k/dC2vrHX5rgMndi+nW2GzwAw7113/BSvRr3Rf2lN
E0+9tLizv7X4beAYpreaMpLC48HaMCjKeQwPBB5BqT4SeFNT8S/8EzvjNJp9hd3iad8R/A8900MT
OLeNtP8AFUSu5A+VTJJGmTgbnUdSBQB/aL+zpI0v7PvgV3Yu7+H7Asx5JP2aPmipPgHYT6L8C/Bd
neQyWt3aaFZQzQyKVeJ1t0DKwPIIIIIooA+Rv+C//wDwTx+Lf/BT79jbSPhb8Kdf8IeHmn8R2+qa
9L4g1C6tIbu0gil2QAQW8xf9+8UhDAAGFSCTX8snxc/4J6+MPgz+0B8Zfhxqeq+GbjXPgdp9xqWv
T2txO1pdxwT20DC2ZoVd2LXUZHmJGMBs4IAP9wR5BHrX8n/7en/KVT/god/2Kurf+nPSKAPTv+De
L/giL8fPEvxD+BH7XXgbxV8M7LwZaeIJJrmxv9RvotYksIrqfT9RiWJLVovMkhW5VAZgp3puK5IH
9OEkYkUgkjIxkdRX57/8Gr//ACg0+Dn/AF8a7/6fL+v0KoA/ld/4LCqD/wAHTPisAbQda8PdOMf8
SDT6+nf+DG9FuNQ/acDAAGPwucD/AHtYr5j/AOCwn/K0z4q/7DXh7/0wafX07/wY0f8AIQ/ac/65
eF//AELWKAP6BAMcCiiigBG+6cgkYr8Yf2jv+Dbz4m/G39tv9q/4kWPjnwJZ+H/jf4XvNN8ORTm6
+2W+oTS2E4S8RYSkUAktZU8yJ5n2sjeWSWUFFAH3z/wRh/Yo8S/8E7P+Cc/w/wDg94w1HQ9W8R+F
W1J7250eWWWyka51G5ukEbSxxuQI50B3IPmDYyME/Ux6GiigD8f/ANtD/g3H8c/tSf8ABbmX9omL
x34V0/4cas1he39oyztrdpcWumR2axRxeX5EsbPBC5czIwEjjYSgL+mf8G6H/BFP4gf8Egovi/N8
QvFPg7xFffEObS0so/D73MsdvDZC7JeV54ojvka7I2KpCiPO5i2FKKAP00ooooA//9k=
</w:binData>
<v:shape id="Picture 8" o:spid="_x0000_i1029" type="#_x0000_t75" alt="Description: SYMBOL_11_People" style="width:16.9pt;height:17.55pt;visibility:visible;mso-wrap-style:square">
<v:imagedata src="wordml://02000008.jpg" o:title="SYMBOL_11_People"/>
</v:shape>
</w:pict>
</w:r>
<w:r wsp:rsidR="00804A3B" wsp:rsidRPr="00943DC5">
<w:rPr>
<w:b/>
</w:rPr>
<w:t>People</w:t>
</w:r>
</w:p>
</w:tc>
</w:tr>
<w:tr>
<w:trPr>
<w:tblHeader/>
</w:trPr>
<w:tc>
<w:tcPr>
<w:tcW w:w="886" w:type="dxa"/>
<w:shd w:val="clear" w:color="auto" w:fill="auto"/>
</w:tcPr>
<w:p>
<w:pPr>
<w:pStyle w:val="NoSpacing"/>
<w:rPr>
<w:b/>
</w:rPr>
</w:pPr>
<w:proofErr w:type="spellStart"/>
<w:r>
<w:rPr>
<w:b/>
</w:rPr>
<w:t>Qty</w:t>
</w:r>
<w:proofErr w:type="spellEnd"/>
</w:p>
</w:tc>
<w:tc>
<w:tcPr>
<w:tcW w:w="10445" w:type="dxa"/>
<w:shd w:val="clear" w:color="auto" w:fill="auto"/>
</w:tcPr>
<w:p>
<w:pPr>
<w:pStyle w:val="NoSpacing"/>
<w:rPr>
<w:b/>
</w:rPr>
</w:pPr>
<w:r>
<w:rPr>
<w:b/>
</w:rPr>
<w:t>Description</w:t>
</w:r>
</w:p>
</w:tc>
</w:tr>

<xsl:for-each select="WorkpackageExport/Labours/Labour">
<w:tr>
<w:tc>
<w:tcPr><w:tcW w:w="886" w:type="dxa"/><w:shd w:val="clear" w:color="auto" w:fill="auto"/></w:tcPr>
<w:p>
<w:pPr><w:pStyle w:val="NoSpacing"/></w:pPr>
<w:r><w:t><xsl:value-of select="MaxRequired"/></w:t></w:r>
</w:p>
</w:tc>
<w:tc>
<w:tcPr><w:tcW w:w="10445" w:type="dxa"/><w:shd w:val="clear" w:color="auto" w:fill="auto"/></w:tcPr>
<w:p>
<w:pPr><w:pStyle w:val="NoSpacing"/></w:pPr>
<w:r><w:t><xsl:value-of select="LabourName"/></w:t></w:r>
</w:p>
</w:tc>
</w:tr>
</xsl:for-each>

</w:tbl>
<w:p>
<w:pPr>
<w:pStyle w:val="NoSpacing"/>
</w:pPr>
</w:p>
<w:tbl>
<w:tblPr>
<w:tblW w:w="5000" w:type="pct"/>

<w:tblBorders>
<w:top w:val="single" w:sz="4" wx:bdrwidth="10" w:space="0" w:color="auto"/>
<w:left w:val="single" w:sz="4" wx:bdrwidth="10" w:space="0" w:color="auto"/>
<w:bottom w:val="single" w:sz="4" wx:bdrwidth="10" w:space="0" w:color="auto"/>
<w:right w:val="single" w:sz="4" wx:bdrwidth="10" w:space="0" w:color="auto"/>
<w:insideH w:val="single" w:sz="4" wx:bdrwidth="10" w:space="0" w:color="auto"/>
<w:insideV w:val="single" w:sz="4" wx:bdrwidth="10" w:space="0" w:color="auto"/>
</w:tblBorders>
<w:tblLook w:val="04A0"/>
</w:tblPr>
<w:tblGrid>
<w:gridCol w:w="992"/>
<w:gridCol w:w="5528"/>
<w:gridCol w:w="2311"/>
<w:gridCol w:w="2509"/>
</w:tblGrid>
<w:tr>
<w:trPr>
<w:tblHeader/>
</w:trPr>  
<w:tc>
<w:tcPr>
<w:tcW w:w="11340" w:type="dxa"/>
<w:gridSpan w:val="4"/>
<w:shd w:val="clear" w:color="auto" w:fill="auto"/>
</w:tcPr>
<w:p>
<w:pPr>
<w:pStyle w:val="NoSpacing"/>
<w:rPr>
<w:b/>
</w:rPr>
</w:pPr>
<w:r>
<w:rPr>
<w:b/>
<w:noProof/>
<w:lang w:fareast="EN-AU"/>
</w:rPr>
<w:pict>
<w:binData w:name="wordml://02000009.jpg" xml:space="preserve">/9j/4AAQSkZJRgABAQEA3ADcAAD/2wBDAAIBAQIBAQICAgICAgICAwUDAwMDAwYEBAMFBwYHBwcG
BwcICQsJCAgKCAcHCg0KCgsMDAwMBwkODw0MDgsMDAz/2wBDAQICAgMDAwYDAwYMCAcIDAwMDAwM
DAwMDAwMDAwMDAwMDAwMDAwMDAwMDAwMDAwMDAwMDAwMDAwMDAwMDAwMDAz/wAARCAA4AD0DASIA
AhEBAxEB/8QAHwAAAQUBAQEBAQEAAAAAAAAAAAECAwQFBgcICQoL/8QAtRAAAgEDAwIEAwUFBAQA
AAF9AQIDAAQRBRIhMUEGE1FhByJxFDKBkaEII0KxwRVS0fAkM2JyggkKFhcYGRolJicoKSo0NTY3
ODk6Q0RFRkdISUpTVFVWV1hZWmNkZWZnaGlqc3R1dnd4eXqDhIWGh4iJipKTlJWWl5iZmqKjpKWm
p6ipqrKztLW2t7i5usLDxMXGx8jJytLT1NXW19jZ2uHi4+Tl5ufo6erx8vP09fb3+Pn6/8QAHwEA
AwEBAQEBAQEBAQAAAAAAAAECAwQFBgcICQoL/8QAtREAAgECBAQDBAcFBAQAAQJ3AAECAxEEBSEx
BhJBUQdhcRMiMoEIFEKRobHBCSMzUvAVYnLRChYkNOEl8RcYGRomJygpKjU2Nzg5OkNERUZHSElK
U1RVVldYWVpjZGVmZ2hpanN0dXZ3eHl6goOEhYaHiImKkpOUlZaXmJmaoqOkpaanqKmqsrO0tba3
uLm6wsPExcbHyMnK0tPU1dbX2Nna4uPk5ebn6Onq8vP09fb3+Pn6/9oADAMBAAIRAxEAPwD9/Kzv
EXizTPClqJ9S1Cx0+E5PmXM6xJx15YitEsMHkV8DftU/Bx/hJ8UC0bq+neIGkutNUy+ZKUQRiRTk
A4QuAM5G0x/MSSB42dZlUwVFVoU+ZddduzPVyjLoYyt7Kc+Xtpe/luuh9WeIf2vfAPh9nQ60t9Mg
zss4Xmz16MBs7f3u4rL8A/tjaB4+8b2mjx2d5p6Xu5Y57x0TMvG1MKSBu5wd3XaBnPHxDceI7DRy
ou7y2t2AJCtINxH+71/Sq3/C6dK02ZTbyTyyRkEMmY9pHQgnkH8K+PXFuKclJpKPVJf5n1cuFMPG
DUW2+/Y/UZpQkZc8BfXiktrhLq3SWNleOQBlZTlWB6EHuCK/Ozxr+3VqfxI0a3sNXvzZ2SxCN0t/
lWcgYLSY5bPcDj0UVN8PPjtrXhSNbnw1r8yW7ZzHG4lgY9yY2yu73Iz9K9mXGOH59INx79fuPJXC
eJ5feklLtrb7/wDgH6IUV8r+Bf8AgoU+nokPijRRKF/5edOcBzx3ic4znqd4HPA4wfffhz8XtC+L
OhvqGgXiX9vDKYJjsdGhk2htjArkNtZTj0YHkEGvcwOcYTF6UZq/Z6P8TxcZleKwv8aFl33RR+KP
wZj8fWrPZ6xrGg6gR8txY3DorHGPnjDAN9eDwOccV8e/tLfC7xr4TszY+K7vVdU0a4k2wzm9lmtp
WwcEZOUbG7g4ON2Mivvs9DXzz/wUiujZ/BTR3BxjXIh/5Lz15nEeW054WpXTaklfR6P1W3zPRyDH
1IYqnRaTTdtVqvR7n5v+PfhHqmnhrjRLg3UZ5+zzMFf/AIC/Q9e+PxNeSat8RLvQL6S2vY5rWeH7
8coKMv1B/nX1Hrsz6t4emt7E2tpqEhyt2yu7Y/uld2zHvtyOvNeW6h8M9X+JGpf2Z4psraXTrNDK
9yIgGZRztjkUAgswHTBAySDjB/NcMuZe81+p+oTkktjw+/8AjHPc36WluZpp5NqJGgLPISBgADqT
kfnW9Yaj4p8GW8Ws6rqVp4FsXztu9XuxZvLjkqsRzI55Hy7cHp6149rmu/GrwJrOreGPCl1Emk6g
AYr+y0qwtp5IlHyq94IxKrr90/vMnk8g1S0z9kHWPGOsvqnjnxVdaleSfKzQyPPNIOxaaUZByDkb
TxjB549KOES6r9TCNSXY/Sv/AIJV+LrH9s7VvEkGnahpXiSLwQ9jJqF9qGkzQwT/AGj7QYxFAsqG
Ug27BhJsXa6kq5yq/pnonhy10XR7Wyt7e3gt7SJYoooYhHFEoGAqqOFUDgAdAAO1fnp/wb9fC/Q/
hjbfFS20WxW0Wb+yTM5dnkmIF7gsWJ6ZPAwBk8V+jtfoPD+DpUsKpU1q73fzPzTiWvOeNlCb0jay
+SCvmn/gqPO9v8A9GZOp8QQj/wAlrivpavH/ANtL4B6r+0P8JINH0e5tre/sL5L+MXORHOVikTYW
GSufMznB+7jjO4dWdUZ1cDVp01eTi7I4smrQpY6jUqu0VJXZ+cVnrpUgEhT7mtWPVzNauCThlI/S
srxx4D1j4beIZtK13TrrTL+A/NFOm0kZxuUjIZTjhlJU9iRzWfZXDpcRqDwWAx+Nfh0Jzp1OSas0
7NH7hKFKpTU4O6aumjxeNSqAEYNLTpPvGmjk4HWvrHsjyoq+x97/APBDj/X/ABR/7hX/ALeV9+18
F/8ABEDRry1sfiPfy2lzHY3zadHb3DRsIZ2j+1eYqNjDFdy5APG4Z6196V+i5MmsHC/n+bPyziF3
zCo15fkgoYZBBGQaKK9Q8U5L4qfBfw58ZfDcmm+IdMhv4cHy3I2zQMf4kccqenTg4wcjiviP4+/8
E8/FHwu1A3/hqK78UaGXB2wxhr22+YDDov3xz95B0Byq4BJRXgZxkmExcXUqx95aprRnt5PnWLwc
1CjL3Xunqv69Dyj4Ef8ABLf4l/GR4bvVbNfBekSEEz6opFyw5ztth8+QRyJPLyGBBNfZPwE/4Jbf
DX4QrBdatYSeMdYTBafVQr20Z77IB8gUnnD7yPWiitsvyjDUoqajd+eo8xzzGVpODlZdlp/wT6Ps
dNh023iht4o4IYVCJHGoVUUDAAA4AA4xViiivYStojwz/9k=
</w:binData>
<v:shape id="Picture 13" o:spid="_x0000_i1028" type="#_x0000_t75" alt="Description: SYMBOL_9_Materials" style="width:20.05pt;height:18.15pt;visibility:visible;mso-wrap-style:square">
<v:imagedata src="wordml://02000009.jpg" o:title="SYMBOL_9_Materials"/>
</v:shape>
</w:pict>
</w:r>
<w:r wsp:rsidR="00804A3B" wsp:rsidRPr="00943DC5">
<w:rPr>
<w:b/>
</w:rPr>
<w:t>Materials</w:t>
</w:r>
</w:p>
</w:tc>
</w:tr>
<w:tr>
<w:trPr>
<w:tblHeader/>
</w:trPr>
<w:tc>
<w:tcPr>
<w:tcW w:w="886" w:type="dxa"/>
<w:shd w:val="clear" w:color="auto" w:fill="auto"/>
</w:tcPr>
<w:p>
<w:pPr>
<w:pStyle w:val="NoSpacing"/>
<w:rPr>
<w:b/>
</w:rPr>
</w:pPr>
<w:proofErr w:type="spellStart"/>
<w:r>
<w:rPr>
<w:b/>
</w:rPr>
<w:t>Qty</w:t>
</w:r>
<w:proofErr w:type="spellEnd"/>
</w:p>
</w:tc>
<w:tc>
<w:tcPr>
<w:tcW w:w="5528" w:type="dxa"/>
<w:shd w:val="clear" w:color="auto" w:fill="auto"/>
</w:tcPr>
<w:p>
<w:pPr>
<w:pStyle w:val="NoSpacing"/>
<w:rPr>
<w:b/>
</w:rPr>
</w:pPr>
<w:r>
<w:rPr>
<w:b/>
</w:rPr>
<w:t>Description</w:t>
</w:r>
</w:p>
</w:tc>
<w:tc>
<w:tcPr>
<w:tcW w:w="2311" w:type="dxa"/>
<w:shd w:val="clear" w:color="auto" w:fill="auto"/>
</w:tcPr>
<w:p>
<w:pPr>
<w:pStyle w:val="NoSpacing"/>
<w:rPr>
<w:b/>
</w:rPr>
</w:pPr>
<w:r>
<w:rPr>
<w:b/>
</w:rPr>
<w:t>Stock Code</w:t>
</w:r>
</w:p>
</w:tc>
<w:tc>
<w:tcPr>
<w:tcW w:w="2509" w:type="dxa"/>
<w:shd w:val="clear" w:color="auto" w:fill="auto"/>
</w:tcPr>
<w:p>
<w:pPr>
<w:pStyle w:val="NoSpacing"/>
<w:rPr>
<w:b/>
</w:rPr>
</w:pPr>
<w:r>
<w:rPr>
<w:b/>
</w:rPr>
<w:t>Part Number</w:t>
</w:r>
</w:p>
</w:tc>
</w:tr>
  
<xsl:for-each select="WorkpackageExport/Materials/Material">
<w:tr>
<w:tc>
<w:tcPr><w:tcW w:w="886" w:type="dxa"/><w:shd w:val="clear" w:color="auto" w:fill="auto"/></w:tcPr>
<w:p>
<w:pPr><w:pStyle w:val="NoSpacing"/></w:pPr>
<w:r><w:t><xsl:value-of select="Quantity"/> <xsl:value-of select="MaterialUnitOfIssue"/></w:t></w:r>
</w:p>
</w:tc>
<w:tc>
<w:tcPr><w:tcW w:w="5528" w:type="dxa"/><w:shd w:val="clear" w:color="auto" w:fill="auto"/></w:tcPr>
<w:p>
<w:pPr><w:pStyle w:val="NoSpacing"/></w:pPr>
<w:r><w:t><xsl:value-of select="MaterialName"/></w:t></w:r>
</w:p>
</w:tc>
<w:tc>
<w:tcPr><w:tcW w:w="2311" w:type="dxa"/><w:shd w:val="clear" w:color="auto" w:fill="auto"/></w:tcPr>
<w:p>
<w:pPr><w:pStyle w:val="NoSpacing"/></w:pPr>
<w:r><w:t><xsl:value-of select="MaterialStockCode"/></w:t></w:r>
</w:p>
</w:tc>
<w:tc>
<w:tcPr><w:tcW w:w="2509" w:type="dxa"/><w:shd w:val="clear" w:color="auto" w:fill="auto"/></w:tcPr>
<w:p>
<w:pPr><w:pStyle w:val="NoSpacing"/></w:pPr>
<w:r>
<w:t><xsl:value-of select="MaterialPartNumber"/></w:t>
</w:r>
</w:p>
</w:tc>
</w:tr>
</xsl:for-each>

</w:tbl>
<w:p>
<w:pPr>
<w:pStyle w:val="NoSpacing"/>
</w:pPr>
</w:p>
<w:tbl>
<w:tblPr>
<w:tblW w:w="5000" w:type="pct"/>

<w:tblBorders>
<w:top w:val="single" w:sz="4" wx:bdrwidth="10" w:space="0" w:color="auto"/>
<w:left w:val="single" w:sz="4" wx:bdrwidth="10" w:space="0" w:color="auto"/>
<w:bottom w:val="single" w:sz="4" wx:bdrwidth="10" w:space="0" w:color="auto"/>
<w:right w:val="single" w:sz="4" wx:bdrwidth="10" w:space="0" w:color="auto"/>
<w:insideH w:val="single" w:sz="4" wx:bdrwidth="10" w:space="0" w:color="auto"/>
<w:insideV w:val="single" w:sz="4" wx:bdrwidth="10" w:space="0" w:color="auto"/>
</w:tblBorders>
<w:tblLook w:val="04A0"/>
</w:tblPr>
<w:tblGrid>
<w:gridCol w:w="886"/>
<w:gridCol w:w="10445"/>
</w:tblGrid>
<w:tr>
<w:trPr>
<w:tblHeader/>
</w:trPr>
<w:tc>
<w:tcPr>
<w:tcW w:w="11340" w:type="dxa"/>
<w:gridSpan w:val="2"/>
<w:shd w:val="clear" w:color="auto" w:fill="auto"/>
</w:tcPr>
<w:p>
<w:pPr>
<w:pStyle w:val="NoSpacing"/>
<w:rPr>
<w:b/>
</w:rPr>
</w:pPr>
<w:r>
<w:rPr>
<w:b/>
<w:noProof/>
<w:lang w:fareast="EN-AU"/>
</w:rPr>
<w:pict>
<w:binData w:name="wordml://0200000A.jpg" xml:space="preserve">/9j/4AAQSkZJRgABAQEA3ADcAAD/2wBDAAIBAQIBAQICAgICAgICAwUDAwMDAwYEBAMFBwYHBwcG
BwcICQsJCAgKCAcHCg0KCgsMDAwMBwkODw0MDgsMDAz/2wBDAQICAgMDAwYDAwYMCAcIDAwMDAwM
DAwMDAwMDAwMDAwMDAwMDAwMDAwMDAwMDAwMDAwMDAwMDAwMDAwMDAwMDAz/wAARCAA9AD0DASIA
AhEBAxEB/8QAHwAAAQUBAQEBAQEAAAAAAAAAAAECAwQFBgcICQoL/8QAtRAAAgEDAwIEAwUFBAQA
AAF9AQIDAAQRBRIhMUEGE1FhByJxFDKBkaEII0KxwRVS0fAkM2JyggkKFhcYGRolJicoKSo0NTY3
ODk6Q0RFRkdISUpTVFVWV1hZWmNkZWZnaGlqc3R1dnd4eXqDhIWGh4iJipKTlJWWl5iZmqKjpKWm
p6ipqrKztLW2t7i5usLDxMXGx8jJytLT1NXW19jZ2uHi4+Tl5ufo6erx8vP09fb3+Pn6/8QAHwEA
AwEBAQEBAQEBAQAAAAAAAAECAwQFBgcICQoL/8QAtREAAgECBAQDBAcFBAQAAQJ3AAECAxEEBSEx
BhJBUQdhcRMiMoEIFEKRobHBCSMzUvAVYnLRChYkNOEl8RcYGRomJygpKjU2Nzg5OkNERUZHSElK
U1RVVldYWVpjZGVmZ2hpanN0dXZ3eHl6goOEhYaHiImKkpOUlZaXmJmaoqOkpaanqKmqsrO0tba3
uLm6wsPExcbHyMnK0tPU1dbX2Nna4uPk5ebn6Onq8vP09fb3+Pn6/9oADAMBAAIRAxEAPwD9/KKK
ZLMIiM42kHPPP5d6AH0V+fX7e3/Bcfwp8BdO8R+HvAkUfiHxZFGtrpOoeZG+nSSsZFnuBg7pIoGj
CAjCzS+Yit+5lZPij9h34efti/tr+Nrz4keEfiL4h05LW5kVta13W7iHTJZSd8lvHbgSK6CTGY1j
MUYKpwU2j3cPkFaVF18RJU49Obqe1RyWpKk6taSgul+p+7lFcX8C5/GUnw300ePoNDh8WRxBL9tG
neXT7lxkedCXRXVXGG2MMqSRlgA7fMPxG/4KoX/ij9sYfBP4OeBV8f8AiDTZXi1vVrrUzYaZorRu
FmLFYpGdIyWR2ABEgCKsjMBXl0cJUqylGmr8qu30S9TzqWFqVJOMNbbvpY+0qKBnAz1ormOYK/Pf
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
Oc5Sk5Sd2z//2T==
</w:binData>
<v:shape id="Picture 12" o:spid="_x0000_i1027" type="#_x0000_t75" alt="Description: SYMBOL_13_Tools and Task Equipment" style="width:20.05pt;height:20.05pt;visibility:visible;mso-wrap-style:square">
<v:imagedata src="wordml://0200000A.jpg" o:title="SYMBOL_13_Tools and Task Equipment"/>
</v:shape>
</w:pict>
</w:r>
<w:r wsp:rsidR="00804A3B" wsp:rsidRPr="00943DC5">
<w:rPr>
<w:b/>
</w:rPr>
<w:t>Tools</w:t>
</w:r>
</w:p>
</w:tc>
</w:tr>
<w:tr>
<w:trPr>
<w:tblHeader/>
</w:trPr>
<w:tc>
<w:tcPr>
<w:tcW w:w="886" w:type="dxa"/>
<w:shd w:val="clear" w:color="auto" w:fill="auto"/>
</w:tcPr>
<w:p>
<w:pPr>
<w:pStyle w:val="NoSpacing"/>
<w:rPr>
<w:b/>
</w:rPr>
</w:pPr>
<w:proofErr w:type="spellStart"/>
<w:r>
<w:rPr>
<w:b/>
</w:rPr>
<w:t>Qty</w:t>
</w:r>
<w:proofErr w:type="spellEnd"/>
</w:p>
</w:tc>
<w:tc>
<w:tcPr>
<w:tcW w:w="10445" w:type="dxa"/>
<w:shd w:val="clear" w:color="auto" w:fill="auto"/>
</w:tcPr>
<w:p>
<w:pPr>
<w:pStyle w:val="NoSpacing"/>
<w:rPr>
<w:b/>
</w:rPr>
</w:pPr>
<w:r>
<w:rPr>
<w:b/>
</w:rPr>
<w:t>Description</w:t>
</w:r>
</w:p>
</w:tc>
</w:tr>

<xsl:for-each select="WorkpackageExport/Tools/Tool">
<w:tr>
<w:tc>
<w:tcPr><w:tcW w:w="886" w:type="dxa"/><w:shd w:val="clear" w:color="auto" w:fill="auto"/></w:tcPr>
<w:p>
<w:pPr><w:pStyle w:val="NoSpacing"/></w:pPr>
<w:r><w:t><xsl:value-of select="Quantity"/></w:t></w:r>
</w:p>
</w:tc>
<w:tc>
<w:tcPr><w:tcW w:w="10445" w:type="dxa"/><w:shd w:val="clear" w:color="auto" w:fill="auto"/></w:tcPr>
<w:p>
<w:pPr><w:pStyle w:val="NoSpacing"/></w:pPr>
<w:r><w:t><xsl:value-of select="ToolName"/></w:t></w:r>
</w:p>
</w:tc>
</w:tr>
</xsl:for-each>
  
</w:tbl>
<w:p>
<w:pPr>
<w:pStyle w:val="NoSpacing"/>
</w:pPr>
</w:p>
<w:tbl>
<w:tblPr>
<w:tblW w:w="5000" w:type="pct"/>

<w:tblBorders>
<w:top w:val="single" w:sz="4" wx:bdrwidth="10" w:space="0" w:color="auto"/>
<w:left w:val="single" w:sz="4" wx:bdrwidth="10" w:space="0" w:color="auto"/>
<w:bottom w:val="single" w:sz="4" wx:bdrwidth="10" w:space="0" w:color="auto"/>
<w:right w:val="single" w:sz="4" wx:bdrwidth="10" w:space="0" w:color="auto"/>
<w:insideH w:val="single" w:sz="4" wx:bdrwidth="10" w:space="0" w:color="auto"/>
<w:insideV w:val="single" w:sz="4" wx:bdrwidth="10" w:space="0" w:color="auto"/>
</w:tblBorders>
<w:tblLook w:val="04A0"/>
</w:tblPr>
<w:tblGrid>
<w:gridCol w:w="886"/>
<w:gridCol w:w="10445"/>
</w:tblGrid>
<w:tr>
<w:trPr>
<w:tblHeader/>
</w:trPr>
<w:tc>
<w:tcPr>
<w:tcW w:w="11340" w:type="dxa"/>
<w:gridSpan w:val="2"/>
<w:shd w:val="clear" w:color="auto" w:fill="auto"/>
</w:tcPr>
<w:p>
<w:pPr>
<w:pStyle w:val="NoSpacing"/>
<w:rPr>
<w:b/>
</w:rPr>
</w:pPr>
<w:r>
<w:rPr>
<w:b/>
<w:noProof/>
<w:lang w:fareast="EN-AU"/>
</w:rPr>
<w:pict>
<w:binData w:name="wordml://0200000B.jpg" xml:space="preserve">/9j/4AAQSkZJRgABAQEA3ADcAAD/2wBDAAIBAQIBAQICAgICAgICAwUDAwMDAwYEBAMFBwYHBwcG
BwcICQsJCAgKCAcHCg0KCgsMDAwMBwkODw0MDgsMDAz/2wBDAQICAgMDAwYDAwYMCAcIDAwMDAwM
DAwMDAwMDAwMDAwMDAwMDAwMDAwMDAwMDAwMDAwMDAwMDAwMDAwMDAwMDAz/wAARCAA7ADsDASIA
AhEBAxEB/8QAHwAAAQUBAQEBAQEAAAAAAAAAAAECAwQFBgcICQoL/8QAtRAAAgEDAwIEAwUFBAQA
AAF9AQIDAAQRBRIhMUEGE1FhByJxFDKBkaEII0KxwRVS0fAkM2JyggkKFhcYGRolJicoKSo0NTY3
ODk6Q0RFRkdISUpTVFVWV1hZWmNkZWZnaGlqc3R1dnd4eXqDhIWGh4iJipKTlJWWl5iZmqKjpKWm
p6ipqrKztLW2t7i5usLDxMXGx8jJytLT1NXW19jZ2uHi4+Tl5ufo6erx8vP09fb3+Pn6/8QAHwEA
AwEBAQEBAQEBAQAAAAAAAAECAwQFBgcICQoL/8QAtREAAgECBAQDBAcFBAQAAQJ3AAECAxEEBSEx
BhJBUQdhcRMiMoEIFEKRobHBCSMzUvAVYnLRChYkNOEl8RcYGRomJygpKjU2Nzg5OkNERUZHSElK
U1RVVldYWVpjZGVmZ2hpanN0dXZ3eHl6goOEhYaHiImKkpOUlZaXmJmaoqOkpaanqKmqsrO0tba3
uLm6wsPExcbHyMnK0tPU1dbX2Nna4uPk5ebn6Onq8vP09fb3+Pn6/9oADAMBAAIRAxEAPwD9/KKK
hv7+LTbWSeeSOGCJC7yOwVUUDJJJ6ADnPQYoBE1GR6ivyz/4KE/8F4Y9B8L654V+FdoU1i8dYbLx
E0wYJalQWuUiK/KZM/uSSdyHzcBSm7yX/gmt+xD+1N8TWtPi5pHxJvvBdtqTLPaza9eXN7Nr6B87
5bYkq8L5bBkbLZ3KMFXPvQyGpGg62KmqfZPr/ke1HJakaLq4iSh2T6n7TUVgaVrVzoPgT+0PEj6f
ZXVlamfUngkZrWEom6RlZwG2DBPIzivlL9j3/gol40/b0/aD1UeAvB2n6b8G/DE7W154k1ZpWutT
mBysdvGu0I7KysQ2/YpBfazIh8mlhalSM5x+GO7voebTw05xlNbR3Z9mUUUVznOFflb/AMFMv+C4
kXhHxT47+EvgzwlZ6sYbSbRLvVdXjDwx3e4JMgtJEKyxqm9QZPlZ8HayDD/qlXxJ/wAFJ/8Agjf4
e/bi8X6P4q0S+tPCPixLmGDWb37OZE1OxBAYsg6zooGxjjcBsY42snq5NVwkMQnjF7vTyfmellU8
NGupYpXXT1Pxrvv2dfHXgv4I6d8YPEHhrUZvDviG9aDTbu6h3w3E+0OJpQ3JiZidgYbZSrcFeH/X
P/gjt/wVesP2rvCtl8PvGtzBZ/EjSYCIJSqxRa/bxj/WIBgCZVGXQDBALLwGVPrC1/ZZ8Gr+zbb/
AAqvdOfVfBttpCaL9lv5Wnd7dECLlz824AAgjG0qNuMAD8G/2+v2MvFf/BMr9pew/svVLlNOnuDq
fhTW4JDFcbInB+YjG2aElAcYByrDg7V+phjKGdxlhai5Zptxfl5/5H0MMTRzaMqE1aS1ifr7/wAF
ev2xvCf7NH7JninRNVvGl8RePNHvNF0nT7aRRcuZ4Xiac5+7EgbJY98AckEfmp/wSk/4K9TfsR6Z
qPg/xrb6lrPgKdJrzThbAPc6Xd7S5SMOwBilbgglQrsG/iavCvCmmfFH/gqp+1xp9jfawNY8XeIm
CS3t0RFbafaxL8zbEwFjRcnYg5Y9MsTX7jfszf8ABMb4Q/s5/CvR/DyeDfDviS/0/wDeXGsavpkF
1eXc5A3SbnUlBkDCLhVAAHTJwxFLB5ZhPqmIXPKert09CK1LC5fhfq2IXPKWrt+hg/8ABLz4o/Ez
9ovwX4n+KPxBt7nSLLxrqgbwzoz8R6fpcMe2NlBAOZHeQl2G59ob7pQD6rqG2gW3jSONQkaDCqBg
KPQVNXx2IrKrUlUjFRT2S6LofKV6qqTckrLsFRXV5DZWzyzSxxRRqWZ3YKqgDJJJ6ACpa8e/br+D
vij9oH9lnxT4I8I38Wk6v4pjg017yU/Jb2ktzEl2xH8X+imf5QQW6AgnIinFSmoydk+vYmnFSkot
2TPAfjb/AMF7PgV8Lb3W9M0nUtT8XappcMghOnWbGyu7hcgRLO2AQTj51DLjkE8A/kxqd/8AFn/g
rT+12rLG+reJ9fO2GLJWx0KyVu558uCMHknJYnPzyOA36Kft5/8ABHP4P/DX9gpZdHvrDwlrfw8s
3vD4kvmCHWnOC8V0VBLGR+ItoJjYqqAqSp7T/g3t+DWmeF/2K28VLocNhr3iXVblJtSMe2e/t4ZN
kYyc4RW8xQowMgkjJNfZ4XE4HB4KeLwcW5X5by/P0Z9Zh6+FwmFlisLFuXw3f5n5PftA/s//ABE/
4Jv/ALTUOnXs11pOv6DcLf6NrFkTHHexgnZcQsexGQynodysOuf2c/4JV/8ABUPR/wBu3wKmjau9
tpfxJ0O3D6lYghI9QRSFN1bgn7pJG5OqFgOQQx9C/wCChf7BXh39vX4IT+HdUKWGu6eTc6Jq4j3S
afP6HHLRPgK69xhh8yqR+AWteH/iJ+w3+0fLZltR8KePfBd9mKaB8NuH3ZEPR4pEbjOVdH5yGIrq
ozo53huWpaNaH9fd37G1OdLNsPyz0qx6/wBdD+n0OD0IOaWvLP2M/iR4z+Ln7N/hXxD4/wDDJ8Je
KtStFkvdOL5KHkLJt6x71w/lt80e7YclST6nXwVSm4ScH0PjakHCbg+gUUUVBB4J+11+wD4Y/bb1
LQk8b6z4rbw/oTiVdBsb5LawvJc/6ybCeYzbTtGHGBnGNzZ9i8CeA9J+GXhDTfD+gafb6Vouj26W
lnaQLtjt4kAVVUegArZorWdepKEabk+WOy6Gsq85QVNvRdBHGVIIyCK8q+Kn7F3w2+NXxh8K+PPE
3hXT9V8UeDmY6deSpyAclRIvSQIxLoHB2MSy4JOfVqKmFSUHeDafkTTqzg7wdiOKERYAGAKkoorN
Ig//2Q==
</w:binData>
<v:shape id="Picture 11" o:spid="_x0000_i1026" type="#_x0000_t75" alt="Description: SYMBOL_13_Tools and Task Equipment" style="width:19.4pt;height:19.4pt;visibility:visible;mso-wrap-style:square">
<v:imagedata src="wordml://0200000B.jpg" o:title="SYMBOL_13_Tools and Task Equipment"/>
</v:shape>
</w:pict>
</w:r>
<w:r wsp:rsidR="00804A3B" wsp:rsidRPr="00943DC5">
<w:rPr>
<w:b/>
</w:rPr>
<w:t>Task Equipment</w:t>
</w:r>
</w:p>
</w:tc>
</w:tr>
<w:tr>
<w:trPr>
<w:tblHeader/>
</w:trPr>
<w:tc>
<w:tcPr>
<w:tcW w:w="886" w:type="dxa"/>
<w:shd w:val="clear" w:color="auto" w:fill="auto"/>
</w:tcPr>
<w:p>
<w:pPr>
<w:pStyle w:val="NoSpacing"/>
<w:rPr>
<w:b/>
</w:rPr>
</w:pPr>
<w:proofErr w:type="spellStart"/>
<w:r>
<w:rPr>
<w:b/>
</w:rPr>
<w:t>Qty</w:t>
</w:r>
<w:proofErr w:type="spellEnd"/>
</w:p>
</w:tc>
<w:tc>
<w:tcPr>
<w:tcW w:w="10445" w:type="dxa"/>
<w:shd w:val="clear" w:color="auto" w:fill="auto"/>
</w:tcPr>
<w:p>
<w:pPr>
<w:pStyle w:val="NoSpacing"/>
<w:rPr>
<w:b/>
</w:rPr>
</w:pPr>
<w:r>
<w:rPr>
<w:b/>
</w:rPr>
<w:t>Description</w:t>
</w:r>
</w:p>
</w:tc>
</w:tr>

<xsl:for-each select="WorkpackageExport/TaskEquipments/TaskEquipment">
<w:tr>
<w:tc>
<w:tcPr><w:tcW w:w="886" w:type="dxa"/><w:shd w:val="clear" w:color="auto" w:fill="auto"/></w:tcPr>
<w:p>
<w:pPr><w:pStyle w:val="NoSpacing"/></w:pPr>
<w:r><w:t><xsl:value-of select="Quantity"/></w:t></w:r>
</w:p>
</w:tc>
<w:tc>
<w:tcPr><w:tcW w:w="10445" w:type="dxa"/><w:shd w:val="clear" w:color="auto" w:fill="auto"/></w:tcPr>
<w:p>
<w:pPr><w:pStyle w:val="NoSpacing"/></w:pPr>
<w:r><w:t><xsl:value-of select="TaskEquipmentName"/></w:t></w:r>
</w:p>
</w:tc>
</w:tr>
</xsl:for-each>

</w:tbl>
<w:p>
<w:pPr>
<w:pStyle w:val="NoSpacing"/>
</w:pPr>
</w:p>
<w:p>
<w:pPr>
<w:pStyle w:val="NoSpacing"/>
<w:rPr>
<w:b/>
<w:sz w:val="32"/>
<w:sz-cs w:val="32"/>
</w:rPr>
</w:pPr>
<w:r>
<w:rPr>
<w:b/>
<w:sz w:val="32"/>
<w:sz-cs w:val="32"/>
</w:rPr>
<w:t>Job Preparation </w:t>
</w:r>
</w:p>
<w:tbl>
<w:tblPr>
<w:tblW w:w="5000" w:type="pct"/>

<w:tblBorders>
<w:top w:val="single" w:sz="4" wx:bdrwidth="10" w:space="0" w:color="auto"/>
<w:left w:val="single" w:sz="4" wx:bdrwidth="10" w:space="0" w:color="auto"/>
<w:bottom w:val="single" w:sz="4" wx:bdrwidth="10" w:space="0" w:color="auto"/>
<w:right w:val="single" w:sz="4" wx:bdrwidth="10" w:space="0" w:color="auto"/>
<w:insideH w:val="single" w:sz="4" wx:bdrwidth="10" w:space="0" w:color="auto"/>
<w:insideV w:val="single" w:sz="4" wx:bdrwidth="10" w:space="0" w:color="auto"/>
</w:tblBorders>
<w:tblLook w:val="04A0"/>
</w:tblPr>
<w:tblGrid>
<w:gridCol w:w="11340"/>
</w:tblGrid>
  
<xsl:for-each select="WorkpackageExport/WorkpackageDetails">

<w:tr>
<w:tc>
<w:tcPr><w:tcW w:w="11340" w:type="dxa"/><w:shd w:val="clear" w:color="auto" w:fill="auto"/></w:tcPr>
<w:p>
<w:pPr><w:pStyle w:val="NoSpacing"/></w:pPr>
<w:r>
<w:rPr><w:b/></w:rPr>
<w:t><xsl:call-template name="crlf-replace"><xsl:with-param name="subject" select="JobDescription" /></xsl:call-template></w:t>
</w:r>
</w:p>
  

</w:tc>
</w:tr>
</xsl:for-each>

</w:tbl>


<w:p w:rsidR="00526AC4" w:rsidRDefault="00526AC4">
<w:pPr>
<w:rPr>
<w:b/>
</w:rPr>
<w:sectPr w:rsidR="00526AC4">

<w:ftr w:type="odd">
  <xsl:call-template name="FooterTemplate" />
</w:ftr>
<w:ftr w:type="first">
  <xsl:call-template name="FooterTemplate" />
</w:ftr>
  
<w:pgSz w:w="11906" w:h="16838" w:code="9"/>
<w:pgMar w:top="425" w:right="400" w:bottom="1559" w:left="400" w:header="709" w:footer="295" w:gutter="0"/>
<w:cols w:space="708"/>
<w:titlePg/>
<w:docGrid w:linePitch="360"/>
</w:sectPr>
</w:pPr>
</w:p>
</wx:sect>
  
<wx:sect>  
<w:p>
<w:pPr>
<w:pStyle w:val="NoSpacing"/>
</w:pPr>
<w:r>
<w:rPr>
<w:b/>
<w:sz w:val="32"/>
<w:sz-cs w:val="32"/>
</w:rPr>
<w:t>Instructions and Explanations </w:t>
</w:r>
<w:r>
<w:t>(Circle condition acceptable (Yes/No) &amp; note comments as appropriate. Sign each step as </w:t>
</w:r>
<w:proofErr w:type="gramStart"/>
<w:r>
<w:t>it's</w:t>
</w:r>
<w:proofErr w:type="gramEnd"/>
<w:r>
<w:t> completed):</w:t>
</w:r>
</w:p>
<w:p>
<w:pPr>
<w:pStyle w:val="NoSpacing"/>
<w:rPr>
<w:b/>
</w:rPr>
</w:pPr>
</w:p>
  
  
<w:tbl>
<w:tblPr>
  <w:tblW w:w="5000" w:type="pct"/>
  
  <w:tblBorders>
    <w:top w:val="single" w:sz="4" wx:bdrwidth="10" w:space="0" w:color="auto"/>
    <w:left w:val="single" w:sz="4" wx:bdrwidth="10" w:space="0" w:color="auto"/>
    <w:bottom w:val="single" w:sz="4" wx:bdrwidth="10" w:space="0" w:color="auto"/>
    <w:right w:val="single" w:sz="4" wx:bdrwidth="10" w:space="0" w:color="auto"/>
    <w:insideH w:val="single" w:sz="4" wx:bdrwidth="10" w:space="0" w:color="auto"/>
    <w:insideV w:val="single" w:sz="4" wx:bdrwidth="10" w:space="0" w:color="auto"/>
  </w:tblBorders>
  <w:tblLook w:val="04A0"/>
</w:tblPr>
<w:tblGrid>
<w:gridCol />
<w:gridCol />
<w:gridCol />
<w:gridCol />
<w:gridCol />
</w:tblGrid>
  <!-- Work package grouping data -->
<xsl:for-each select="/WorkpackageExport/WorkpackageTasks/WorkpackageTask[ExcludeFromWorkpackage='false']">
  <xsl:sort data-type="number" select="RowOrder" />

  <!--Store the entity id of the equipment-->
  <xsl:variable name="TaskGroupId" select="TaskGroupId"></xsl:variable>
  <xsl:variable name="EquipmentEntityId" select="EquipmentEntityId"></xsl:variable>
  <xsl:variable name="EntityId" select="EntityId"></xsl:variable>
    
  <xsl:variable name="PreviousTaskGroupId" select="preceding-sibling::WorkpackageTask[1]/TaskGroupId"></xsl:variable>
  <xsl:variable name="PreviousEquipmentEntityId" select="preceding-sibling::WorkpackageTask[1]/EquipmentEntityId"></xsl:variable>
  <xsl:variable name="PreviousEntityId" select="preceding-sibling::WorkpackageTask[1]/EntityId"></xsl:variable>
  <xsl:variable name="TaskColour" select="TaskColour"></xsl:variable>
    
  <xsl:variable name="AlreadyProcessed"
                                                                          select="count(preceding-sibling::WorkpackageTask)"/>
    
  <!-- Check if the task group is different -->
  <xsl:choose>
    <xsl:when test="$TaskGroupId != $PreviousTaskGroupId or $AlreadyProcessed = 0">
      <xsl:call-template name="TaskGroup">
        <xsl:with-param name="WorkpackageTask" select="." />
      </xsl:call-template>
      <!-- if the equipment is the same then write new header -->
      <xsl:choose>
        <xsl:when test="$EquipmentEntityId = $PreviousEquipmentEntityId">
            <xsl:call-template name="EquipmentEntity">
              <xsl:with-param name="WorkpackageTask" select="." />
            </xsl:call-template>
            <!-- If the component is the same then write new header -->
            <xsl:choose>
              <xsl:when test="$EntityId = $PreviousEntityId">
                  <xsl:call-template name="Entity">
                    <xsl:with-param name="WorkpackageTask" select="." />
                  </xsl:call-template>
              </xsl:when>
            </xsl:choose>
        </xsl:when>
      </xsl:choose>
    </xsl:when>
  </xsl:choose> 
    
  <!-- Check to see if top level equipment is different -->    
  <xsl:choose>
    <xsl:when test="$EquipmentEntityId != $PreviousEquipmentEntityId or $AlreadyProcessed = 0">
      <xsl:call-template name="EquipmentEntity">
        <xsl:with-param name="WorkpackageTask" select="." />
      </xsl:call-template>
        <!-- If the component is the same then write new header -->
      <xsl:choose>
        <xsl:when test="$EntityId = $PreviousEntityId">
            <xsl:call-template name="Entity">
              <xsl:with-param name="WorkpackageTask" select="." />
            </xsl:call-template>
        </xsl:when>
      </xsl:choose>
    </xsl:when>
  </xsl:choose> 
      
  <!--Check to see if the component is different-->
  <xsl:choose>
    <xsl:when test="$EntityId != $PreviousEntityId or $AlreadyProcessed = 0">
        <xsl:call-template name="Entity">
          <xsl:with-param name="WorkpackageTask" select="." />
        </xsl:call-template>
    </xsl:when>
  </xsl:choose>
        
  <w:tr>
  <w:tc>
  <w:tcPr><w:shd w:val="clear" w:color="auto" w:fill="auto"/><w:vAlign w:val="center"/><w:tcW w:w="1035" w:type="dxa" /></w:tcPr>
  <xsl:choose>
    <xsl:when test="count(Symbols/Symbol) != 0">
          <xsl:for-each select="Symbols/Symbol">
            <xsl:variable name="TASKSYMBOLID" select="Id"/>
            <xsl:for-each select="/WorkpackageExport/Symbols/Symbol">
              <xsl:variable name="SYMBOLID" select="Id"/>
              <xsl:if test="$TASKSYMBOLID = $SYMBOLID">
                <xsl:call-template name="Image">
                  <xsl:with-param name="Image" select="."></xsl:with-param>
                  <xsl:with-param name="prefix" select="Task_SYMBOL"></xsl:with-param>
                  <xsl:with-param name="width">32</xsl:with-param>
                  <xsl:with-param name="height">32</xsl:with-param>
                  <xsl:with-param name="image_measurement">px</xsl:with-param>
                  <xsl:with-param name="extension" select="jpeg"></xsl:with-param>
                  <xsl:with-param name="flag_showname">0</xsl:with-param>
                  <xsl:with-param name="Align_Centre">1</xsl:with-param>
                </xsl:call-template>
              </xsl:if>
            </xsl:for-each>
          </xsl:for-each>
      </xsl:when>
      <xsl:otherwise>
        <w:p>
          <w:pPr><w:pStyle w:val="NoSpacing"/></w:pPr>
          <w:r><w:t></w:t></w:r>
        </w:p>
      </xsl:otherwise>
  </xsl:choose>
</w:tc>
    
<w:tc>
<w:tcPr><w:shd w:val="clear" w:color="auto" w:fill="auto"/></w:tcPr>
<w:p>
  <w:pPr><w:pStyle w:val="NoSpacing"/></w:pPr>

    <xsl:variable name="taskNumberDisplay">
      <xsl:call-template name="GetTaskNumberText" />
    </xsl:variable>
  
  <w:r>
    <xsl:if test="count($TaskColour) > 0">
    <w:rPr>
      <w:color w:val="{$TaskColour}"/>
    </w:rPr>
   </xsl:if> 
    <w:t><xsl:value-of select="normalize-space($taskNumberDisplay)" /> <xsl:call-template name="crlf-replace"><xsl:with-param name="subject" select="Name" /></xsl:call-template></w:t></w:r>
</w:p>
<xsl:choose>
  <xsl:when test="count(ConditionalComments)>0 and normalize-space(ConditionalComments)!=''">
    
<w:p>
<w:pPr><w:pStyle w:val="NoSpacing"/></w:pPr>
<w:r>
  <w:rPr>
<w:i/>
    <xsl:if test="count($TaskColour) > 0">
      <w:color w:val="{$TaskColour}"/>
   </xsl:if> 
</w:rPr>
<w:t><xsl:call-template name="crlf-replace"><xsl:with-param name="subject" select="ConditionalComments" /></xsl:call-template></w:t>
</w:r>
</w:p>
  </xsl:when>
</xsl:choose>
</w:tc>
    
<w:tc>
  <w:tcPr><w:shd w:val="clear" w:color="auto" w:fill="auto"/><w:tcW w:w="2600" w:type="dxa"/></w:tcPr>
  <w:p>
  <w:pPr><w:pStyle w:val="NoSpacing"/><w:jc w:val="center"/></w:pPr>
  <w:r>
    <xsl:if test="count($TaskColour) > 0">
    <w:rPr>
      <w:color w:val="{$TaskColour}"/>
    </w:rPr>
   </xsl:if> 
    <w:t><xsl:value-of select="AcceptableLimit" /></w:t></w:r>
  </w:p>
</w:tc>
<w:tc>
  <w:tcPr><w:shd w:val="clear" w:color="auto" w:fill="auto"/><w:tcW w:w="1300"  w:type="dxa" /></w:tcPr>
  <w:p>
  <w:pPr><w:pStyle w:val="NoSpacing"/><w:jc w:val="center"/></w:pPr>
  <w:r>
    <xsl:if test="count($TaskColour) > 0">
    <w:rPr>
      <w:color w:val="{$TaskColour}"/>
    </w:rPr>
   </xsl:if> 
    <w:t>Yes  /  No</w:t></w:r>
  </w:p>
</w:tc>
<w:tc>
  <w:tcPr><w:shd w:val="clear" w:color="auto" w:fill="auto"/><w:tcW w:w="1300"  w:type="dxa" /></w:tcPr>
  <w:p>
    <w:pPr><w:pStyle w:val="NoSpacing"/><w:jc w:val="center"/></w:pPr>
  </w:p>
</w:tc>

</w:tr>
  
<xsl:choose>
  <xsl:when test="count(TaskImages/TaskImage) != 0">
    
    <!-- Calculate the number of symbols -->
  <xsl:call-template name="TaskImagesTable">
          <xsl:with-param name="TaskImages" select="TaskImages"></xsl:with-param>
          <xsl:with-param name="startIndex">1</xsl:with-param>
  </xsl:call-template>
    
    <!--
      <w:tr w:rsidR="00526AC4" w:rsidTr="00CC0398">
      <w:tc>
      <w:tcPr>
      <w:tcW w:w="15070" w:type="dxa"/>
      <w:gridSpan w:val="5"/>
      <w:shd w:val="clear" w:color="auto" w:fill="auto"/>
      <w:vAlign w:val="center"/>
      </w:tcPr>
        <xsl:for-each select="TaskImages/TaskImage">
          <xsl:sort select="Name" />

          <xsl:call-template name="Image">
            <xsl:with-param name="Image" select="."></xsl:with-param>
            <xsl:with-param name="prefix" select="Task_Image"></xsl:with-param>
            <xsl:with-param name="width">256</xsl:with-param>
            <xsl:with-param name="height"><xsl:value-of select="Height * (256 div Width)"/></xsl:with-param>
            <xsl:with-param name="image_measurement">px</xsl:with-param>
            <xsl:with-param name="extension" select="jpeg"></xsl:with-param>
            <xsl:with-param name="flag_showname" select="0"></xsl:with-param>
            <xsl:with-param name="Align_Centre" select="1"></xsl:with-param>
          </xsl:call-template>
        </xsl:for-each>
      </w:tc>
      </w:tr>
      -->
  </xsl:when>
</xsl:choose>
  
      
</xsl:for-each>
</w:tbl>
  
  

<w:p>
<w:pPr>
<w:pStyle w:val="NoSpacing"/>
</w:pPr>
<w:r>
<w:rPr>
<w:b/>
<w:sz w:val="32"/>
<w:sz-cs w:val="32"/>
</w:rPr>
<w:t> </w:t>
</w:r>
</w:p>
<w:p>
<w:pPr>
<w:pStyle w:val="NoSpacing"/>
<w:rPr>
<w:b/>
<w:sz w:val="32"/>
<w:sz-cs w:val="32"/>
</w:rPr>
</w:pPr>
<w:r>
<w:rPr>
<w:b/>
<w:sz w:val="32"/>
<w:sz-cs w:val="32"/>
</w:rPr>
<w:t>Post Shutdown Notes</w:t>
</w:r>
</w:p>
  
<w:tbl>
<w:tblPr>
<w:tblW w:w="5000" w:type="pct"/>

<w:tblBorders>
<w:top w:val="single" w:sz="4" wx:bdrwidth="10" w:space="0" w:color="auto"/>
<w:left w:val="single" w:sz="4" wx:bdrwidth="10" w:space="0" w:color="auto"/>
<w:bottom w:val="single" w:sz="4" wx:bdrwidth="10" w:space="0" w:color="auto"/>
<w:right w:val="single" w:sz="4" wx:bdrwidth="10" w:space="0" w:color="auto"/>
<w:insideH w:val="single" w:sz="4" wx:bdrwidth="10" w:space="0" w:color="auto"/>
<w:insideV w:val="single" w:sz="4" wx:bdrwidth="10" w:space="0" w:color="auto"/>
</w:tblBorders>
<w:tblLook w:val="04A0"/>
</w:tblPr>
<w:tblGrid>
<w:gridCol w:w="11340"/>
</w:tblGrid>
<xsl:for-each select="WorkpackageExport/WorkpackageDetails">
  <w:tr>
  <w:tc>
  <w:tcPr>
  <w:tcW w:w="11340" w:type="dxa"/>
  <w:shd w:val="clear" w:color="auto" w:fill="auto"/>
  </w:tcPr>
    
<w:p>
<w:pPr><w:pStyle w:val="NoSpacing"/></w:pPr>
<w:r>
<w:rPr><w:b/></w:rPr>
<w:t><xsl:call-template name="crlf-replace"><xsl:with-param name="subject" select="PostShutdown" /></xsl:call-template>
</w:t>
</w:r>
</w:p>
    
  </w:tc>
  </w:tr>
</xsl:for-each>
</w:tbl>

  
<w:p>
<w:pPr>
<w:rPr>
<w:b/>
<w:sz w:val="32"/>
<w:sz-cs w:val="32"/>
</w:rPr>

  
  
<w:sectPr>
<w:ftr w:type="odd">
 <xsl:call-template name="TabledFooter" />
</w:ftr>
<w:ftr w:type="first">
  <xsl:call-template name="TabledFooter" />
</w:ftr>

<w:pgSz w:w="16838" w:h="11906" w:orient="landscape" w:code="9"/>
<w:pgMar w:top="400" w:right="425" w:bottom="400" w:left="1559" w:header="709" w:footer="295" w:gutter="0"/>
<w:cols w:space="708"/>
<w:titlePg/>
<w:docGrid w:linePitch="360"/>
</w:sectPr>  
</w:pPr>
</w:p>
</wx:sect>
  
  
  
<wx:sect>
<w:p>
<w:pPr>
<w:pStyle w:val="NoSpacing"/>
</w:pPr>
<w:r>
<w:t>List the completed defects below, which require a work order. (&gt;1 hour duration or required spare parts)</w:t>
</w:r>
</w:p>
<w:tbl>
<w:tblPr>
<w:tblW w:w="5000" w:type="pct"/>

<w:tblBorders>
<w:top w:val="single" w:sz="4" wx:bdrwidth="10" w:space="0" w:color="auto"/>
<w:left w:val="single" w:sz="4" wx:bdrwidth="10" w:space="0" w:color="auto"/>
<w:bottom w:val="single" w:sz="4" wx:bdrwidth="10" w:space="0" w:color="auto"/>
<w:right w:val="single" w:sz="4" wx:bdrwidth="10" w:space="0" w:color="auto"/>
<w:insideH w:val="single" w:sz="4" wx:bdrwidth="10" w:space="0" w:color="auto"/>
<w:insideV w:val="single" w:sz="4" wx:bdrwidth="10" w:space="0" w:color="auto"/>
</w:tblBorders>
<w:tblLook w:val="04A0"/>
</w:tblPr>
<w:tblGrid>
<w:gridCol w:w="794"/>
<w:gridCol w:w="4820"/>
<w:gridCol w:w="2121"/>
<w:gridCol w:w="557"/>
<w:gridCol w:w="2708"/>
</w:tblGrid>
<w:tr>
<w:tc>
<w:tcPr>
  <w:trHeight w:val="320"/>
<w:gridSpan w:val="5"/>
<w:shd w:val="clear" w:color="auto" w:fill="auto"/>
</w:tcPr>
<w:p>
<w:pPr>
<w:pStyle w:val="NoSpacing"/>
<w:rPr>
<w:b/>
</w:rPr>
</w:pPr>
<w:r>
<w:rPr>
<w:b/>
</w:rPr>
<w:t>Completed Defects </w:t>
</w:r>
<w:r>
<w:rPr>
<w:b/>
<w:i/>
</w:rPr>
<w:t>(repaired)</w:t>
</w:r>
</w:p>
</w:tc>
</w:tr>

<w:tr>
<w:tc>
<w:tcPr>
  <w:trHeight w:val="320"/>
<w:tcW w:w="1035" w:type="dxa"/>
<w:shd w:val="clear" w:color="auto" w:fill="auto"/>
</w:tcPr>
<w:p>
<w:pPr>
<w:pStyle w:val="NoSpacing"/>
<w:jc w:val="center"/>
<w:rPr>
<w:b/>
</w:rPr>
</w:pPr>
<w:r>
<w:rPr>
<w:b/>
</w:rPr>
<w:t>Step No.</w:t>
</w:r>
</w:p>
</w:tc>
  
<w:tc>
<w:tcPr>
  <w:trHeight w:val="320"/>
<w:tcW w:w="4820" w:type="dxa"/>
<w:shd w:val="clear" w:color="auto" w:fill="auto"/>
</w:tcPr>
<w:p>
<w:pPr>
<w:pStyle w:val="NoSpacing"/>
<w:jc w:val="center"/>
<w:rPr>
<w:b/>
</w:rPr>
</w:pPr>
<w:r>
<w:rPr>
<w:b/>
</w:rPr>
<w:t>Description</w:t>
</w:r>
</w:p>
</w:tc>
<w:tc>
<w:tcPr><w:trHeight w:val="320"/>
<w:tcW w:w="2121" w:type="dxa"/>
<w:shd w:val="clear" w:color="auto" w:fill="auto"/>
</w:tcPr>
<w:p>
<w:pPr>
<w:pStyle w:val="NoSpacing"/>
<w:jc w:val="center"/>
<w:rPr>
<w:b/>
</w:rPr>
</w:pPr>
<w:r>
<w:rPr>
<w:b/>
</w:rPr>
<w:t>Repaired By</w:t>
</w:r>
</w:p>
</w:tc>
<w:tc>
<w:tcPr><w:trHeight w:val="320"/>
<w:tcW w:w="557" w:type="dxa"/>
<w:shd w:val="clear" w:color="auto" w:fill="auto"/>
</w:tcPr>
<w:p>
<w:pPr>
<w:pStyle w:val="NoSpacing"/>
<w:jc w:val="center"/>
<w:rPr>
<w:b/>
</w:rPr>
</w:pPr>
<w:proofErr w:type="spellStart"/>
<w:r>
<w:rPr>
<w:b/>
</w:rPr>
<w:t>Hrs</w:t>
</w:r>
<w:proofErr w:type="spellEnd"/>
</w:p>
</w:tc>
<w:tc>
<w:tcPr><w:trHeight w:val="320"/>
<w:tcW w:w="2708" w:type="dxa"/>
<w:shd w:val="clear" w:color="auto" w:fill="auto"/>
</w:tcPr>
<w:p>
<w:pPr>
<w:pStyle w:val="NoSpacing"/>
<w:jc w:val="center"/>
<w:rPr>
<w:b/>
</w:rPr>
</w:pPr>
<w:r>
<w:rPr>
<w:b/>
</w:rPr>
<w:t>Secondary WO Number</w:t>
</w:r>
</w:p>
</w:tc>
</w:tr>
<w:tr>
<w:tc>
<w:tcPr><w:trHeight w:val="320"/>
<w:tcW w:w="794" w:type="dxa"/>
<w:shd w:val="clear" w:color="auto" w:fill="auto"/>
</w:tcPr>
<w:p>
<w:pPr>
<w:pStyle w:val="NoSpacing"/>
</w:pPr>
</w:p>
</w:tc>
<w:tc>
<w:tcPr><w:trHeight w:val="320"/>
<w:tcW w:w="4820" w:type="dxa"/>
<w:shd w:val="clear" w:color="auto" w:fill="auto"/>
</w:tcPr>
<w:p>
<w:pPr>
<w:pStyle w:val="NoSpacing"/>
</w:pPr>
</w:p>
</w:tc>
<w:tc>
<w:tcPr><w:trHeight w:val="320"/>
<w:tcW w:w="2121" w:type="dxa"/>
<w:shd w:val="clear" w:color="auto" w:fill="auto"/>
</w:tcPr>
<w:p>
<w:pPr>
<w:pStyle w:val="NoSpacing"/>
</w:pPr>
</w:p>
</w:tc>
<w:tc>
<w:tcPr><w:trHeight w:val="320"/>
<w:tcW w:w="557" w:type="dxa"/>
<w:shd w:val="clear" w:color="auto" w:fill="auto"/>
</w:tcPr>
<w:p>
<w:pPr>
<w:pStyle w:val="NoSpacing"/>
</w:pPr>
</w:p>
</w:tc>
<w:tc>
<w:tcPr><w:trHeight w:val="320"/>
<w:tcW w:w="2708" w:type="dxa"/>
<w:shd w:val="clear" w:color="auto" w:fill="auto"/>
</w:tcPr>
<w:p>
<w:pPr>
<w:pStyle w:val="NoSpacing"/>
</w:pPr>
</w:p>
</w:tc>
</w:tr>
<w:tr>
<w:tc>
<w:tcPr><w:trHeight w:val="320"/>
<w:tcW w:w="794" w:type="dxa"/>
<w:shd w:val="clear" w:color="auto" w:fill="auto"/>
</w:tcPr>
<w:p>
<w:pPr>
<w:pStyle w:val="NoSpacing"/>
</w:pPr>
</w:p>
</w:tc>
<w:tc>
<w:tcPr><w:trHeight w:val="320"/>
<w:tcW w:w="4820" w:type="dxa"/>
<w:shd w:val="clear" w:color="auto" w:fill="auto"/>
</w:tcPr>
<w:p>
<w:pPr>
<w:pStyle w:val="NoSpacing"/>
</w:pPr>
</w:p>
</w:tc>
<w:tc>
<w:tcPr><w:trHeight w:val="320"/>
<w:tcW w:w="2121" w:type="dxa"/>
<w:shd w:val="clear" w:color="auto" w:fill="auto"/>
</w:tcPr>
<w:p>
<w:pPr>
<w:pStyle w:val="NoSpacing"/>
</w:pPr>
</w:p>
</w:tc>
<w:tc>
<w:tcPr><w:trHeight w:val="320"/>
<w:tcW w:w="557" w:type="dxa"/>
<w:shd w:val="clear" w:color="auto" w:fill="auto"/>
</w:tcPr>
<w:p>
<w:pPr>
<w:pStyle w:val="NoSpacing"/>
</w:pPr>
</w:p>
</w:tc>
<w:tc>
<w:tcPr><w:trHeight w:val="320"/>
<w:tcW w:w="2708" w:type="dxa"/>
<w:shd w:val="clear" w:color="auto" w:fill="auto"/>
</w:tcPr>
<w:p>
<w:pPr>
<w:pStyle w:val="NoSpacing"/>
</w:pPr>
</w:p>
</w:tc>
</w:tr>
<w:tr>
<w:tc>
<w:tcPr><w:trHeight w:val="320"/>
<w:tcW w:w="794" w:type="dxa"/>
<w:shd w:val="clear" w:color="auto" w:fill="auto"/>
</w:tcPr>
<w:p>
<w:pPr>
<w:pStyle w:val="NoSpacing"/>
</w:pPr>
</w:p>
</w:tc>
<w:tc>
<w:tcPr><w:trHeight w:val="320"/>
<w:tcW w:w="4820" w:type="dxa"/>
<w:shd w:val="clear" w:color="auto" w:fill="auto"/>
</w:tcPr>
<w:p>
<w:pPr>
<w:pStyle w:val="NoSpacing"/>
</w:pPr>
</w:p>
</w:tc>
<w:tc>
<w:tcPr><w:trHeight w:val="320"/>
<w:tcW w:w="2121" w:type="dxa"/>
<w:shd w:val="clear" w:color="auto" w:fill="auto"/>
</w:tcPr>
<w:p>
<w:pPr>
<w:pStyle w:val="NoSpacing"/>
</w:pPr>
</w:p>
</w:tc>
<w:tc>
<w:tcPr><w:trHeight w:val="320"/>
<w:tcW w:w="557" w:type="dxa"/>
<w:shd w:val="clear" w:color="auto" w:fill="auto"/>
</w:tcPr>
<w:p>
<w:pPr>
<w:pStyle w:val="NoSpacing"/>
</w:pPr>
</w:p>
</w:tc>
<w:tc>
<w:tcPr><w:trHeight w:val="320"/>
<w:tcW w:w="2708" w:type="dxa"/>
<w:shd w:val="clear" w:color="auto" w:fill="auto"/>
</w:tcPr>
<w:p>
<w:pPr>
<w:pStyle w:val="NoSpacing"/>
</w:pPr>
</w:p>
</w:tc>
</w:tr>
<w:tr>
<w:tc>
<w:tcPr><w:trHeight w:val="320"/>
<w:tcW w:w="794" w:type="dxa"/>
<w:shd w:val="clear" w:color="auto" w:fill="auto"/>
</w:tcPr>
<w:p>
<w:pPr>
<w:pStyle w:val="NoSpacing"/>
</w:pPr>
</w:p>
</w:tc>
<w:tc>
<w:tcPr><w:trHeight w:val="320"/>
<w:tcW w:w="4820" w:type="dxa"/>
<w:shd w:val="clear" w:color="auto" w:fill="auto"/>
</w:tcPr>
<w:p>
<w:pPr>
<w:pStyle w:val="NoSpacing"/>
</w:pPr>
</w:p>
</w:tc>
<w:tc>
<w:tcPr><w:trHeight w:val="320"/>
<w:tcW w:w="2121" w:type="dxa"/>
<w:shd w:val="clear" w:color="auto" w:fill="auto"/>
</w:tcPr>
<w:p>
<w:pPr>
<w:pStyle w:val="NoSpacing"/>
</w:pPr>
</w:p>
</w:tc>
<w:tc>
<w:tcPr><w:trHeight w:val="320"/>
<w:tcW w:w="557" w:type="dxa"/>
<w:shd w:val="clear" w:color="auto" w:fill="auto"/>
</w:tcPr>
<w:p>
<w:pPr>
<w:pStyle w:val="NoSpacing"/>
</w:pPr>
</w:p>
</w:tc>
<w:tc>
<w:tcPr><w:trHeight w:val="320"/>
<w:tcW w:w="2708" w:type="dxa"/>
<w:shd w:val="clear" w:color="auto" w:fill="auto"/>
</w:tcPr>
<w:p>
<w:pPr>
<w:pStyle w:val="NoSpacing"/>
</w:pPr>
</w:p>
</w:tc>
</w:tr>
<w:tr>
<w:tc>
<w:tcPr><w:trHeight w:val="320"/>
<w:tcW w:w="794" w:type="dxa"/>
<w:shd w:val="clear" w:color="auto" w:fill="auto"/>
</w:tcPr>
<w:p>
<w:pPr>
<w:pStyle w:val="NoSpacing"/>
</w:pPr>
</w:p>
</w:tc>
<w:tc>
<w:tcPr><w:trHeight w:val="320"/>
<w:tcW w:w="4820" w:type="dxa"/>
<w:shd w:val="clear" w:color="auto" w:fill="auto"/>
</w:tcPr>
<w:p>
<w:pPr>
<w:pStyle w:val="NoSpacing"/>
</w:pPr>
</w:p>
</w:tc>
<w:tc>
<w:tcPr><w:trHeight w:val="320"/>
<w:tcW w:w="2121" w:type="dxa"/>
<w:shd w:val="clear" w:color="auto" w:fill="auto"/>
</w:tcPr>
<w:p>
<w:pPr>
<w:pStyle w:val="NoSpacing"/>
</w:pPr>
</w:p>
</w:tc>
<w:tc>
<w:tcPr><w:trHeight w:val="320"/>
<w:tcW w:w="557" w:type="dxa"/>
<w:shd w:val="clear" w:color="auto" w:fill="auto"/>
</w:tcPr>
<w:p>
<w:pPr>
<w:pStyle w:val="NoSpacing"/>
</w:pPr>
</w:p>
</w:tc>
<w:tc>
<w:tcPr><w:trHeight w:val="320"/>
<w:tcW w:w="2708" w:type="dxa"/>
<w:shd w:val="clear" w:color="auto" w:fill="auto"/>
</w:tcPr>
<w:p>
<w:pPr>
<w:pStyle w:val="NoSpacing"/>
</w:pPr>
</w:p>
</w:tc>
</w:tr>
</w:tbl>
<w:p>
<w:pPr>
<w:pStyle w:val="NoSpacing"/>
</w:pPr>
</w:p>
<w:p>
<w:pPr>
<w:pStyle w:val="NoSpacing"/>
</w:pPr>
<w:r>
<w:t>List identified defects that were not completed below with corresponding step numbers, parts required and priorities codes</w:t>
</w:r>
</w:p>
<w:tbl>
<w:tblPr>
<w:tblW w:w="5000" w:type="pct"/>

<w:tblBorders>
<w:top w:val="single" w:sz="4" wx:bdrwidth="10" w:space="0" w:color="auto"/>
<w:left w:val="single" w:sz="4" wx:bdrwidth="10" w:space="0" w:color="auto"/>
<w:bottom w:val="single" w:sz="4" wx:bdrwidth="10" w:space="0" w:color="auto"/>
<w:right w:val="single" w:sz="4" wx:bdrwidth="10" w:space="0" w:color="auto"/>
<w:insideH w:val="single" w:sz="4" wx:bdrwidth="10" w:space="0" w:color="auto"/>
<w:insideV w:val="single" w:sz="4" wx:bdrwidth="10" w:space="0" w:color="auto"/>
</w:tblBorders>
<w:tblLook w:val="04A0"/>
</w:tblPr>
<w:tblGrid>
<w:gridCol w:w="794"/>
<w:gridCol w:w="6237"/>
<w:gridCol w:w="557"/>
<w:gridCol w:w="977"/>
<w:gridCol w:w="2435"/>
</w:tblGrid>
<w:tr>
<w:tc>
<w:tcPr><w:trHeight w:val="320"/>
<w:tcW w:w="11340" w:type="dxa"/>
<w:gridSpan w:val="5"/>
<w:shd w:val="clear" w:color="auto" w:fill="auto"/>
</w:tcPr>
<w:p>
<w:pPr>
<w:pStyle w:val="NoSpacing"/>
<w:rPr>
<w:b/>
</w:rPr>
</w:pPr>
<w:r>
<w:rPr>
<w:b/>
</w:rPr>
<w:t>Identified Defects (repairs required)</w:t>
</w:r>
</w:p>
</w:tc>
</w:tr>
<w:tr>
<w:tc>
<w:tcPr><w:trHeight w:val="320"/>
<w:tcW w:w="11340" w:type="dxa"/>
<w:gridSpan w:val="5"/>
<w:shd w:val="clear" w:color="auto" w:fill="auto"/>
</w:tcPr>
<w:p>
<w:pPr>
<w:pStyle w:val="NoSpacing"/>
<w:rPr>
<w:b/>
</w:rPr>
</w:pPr>
<w:r>
<w:rPr>
<w:b/>
</w:rPr>
<w:t>Priority Codes, Repair to be actioned</w:t>
</w:r>
</w:p>
<w:p>
<w:pPr>
<w:pStyle w:val="NoSpacing"/>
</w:pPr>
<w:r>
<w:rPr>
<w:b/>
<w:color w:val="943634"/>
</w:rPr>
<w:t>1 – Urgent breakdown or </w:t>
</w:r>
<w:r wsp:rsidR="00CB25E1" wsp:rsidRPr="00943DC5">
<w:rPr>
<w:b/>
<w:color w:val="943634"/>
</w:rPr>
<w:t>safety</w:t>
</w:r>
<w:r>
<w:rPr>
<w:b/>
<w:color w:val="943634"/>
</w:rPr>
<w:t> related tasks; </w:t>
</w:r>
<w:r>
<w:rPr>
<w:b/>
<w:color w:val="FF0000"/>
</w:rPr>
<w:t>2 – Within current schedule;</w:t>
</w:r>
<w:r>
<w:rPr>
<w:b/>
</w:rPr>
<w:t> </w:t>
</w:r>
<w:r>
<w:rPr>
<w:b/>
<w:color w:val="548DD4"/>
</w:rPr>
<w:t>3 – Future scheduled service; </w:t>
</w:r>
<w:r>
<w:rPr>
<w:b/>
<w:color w:val="76923C"/>
</w:rPr>
<w:t>4- When convenient / major outage</w:t>
</w:r>
</w:p>
</w:tc>
</w:tr>
<w:tr>
<w:tc>
<w:tcPr><w:trHeight w:val="320"/>
<w:tcW w:w="1035" w:type="dxa"/>
<w:shd w:val="clear" w:color="auto" w:fill="auto"/>
</w:tcPr>
<w:p>
<w:pPr>
<w:pStyle w:val="NoSpacing"/>
<w:rPr>
<w:b/>
</w:rPr>
</w:pPr>
<w:r>
<w:rPr>
<w:b/>
</w:rPr>
<w:t>Step No.</w:t>
</w:r>
</w:p>
</w:tc>
<w:tc>
<w:tcPr><w:trHeight w:val="320"/>
<w:tcW w:w="6237" w:type="dxa"/>
<w:shd w:val="clear" w:color="auto" w:fill="auto"/>
</w:tcPr>
<w:p>
<w:pPr>
<w:pStyle w:val="NoSpacing"/>
<w:rPr>
<w:b/>
</w:rPr>
</w:pPr>
<w:r>
<w:rPr>
<w:b/>
</w:rPr>
<w:t>Parts Required (Description or part number if known)</w:t>
</w:r>
</w:p>
</w:tc>
<w:tc>
<w:tcPr><w:trHeight w:val="320"/>
<w:tcW w:w="557" w:type="dxa"/>
<w:shd w:val="clear" w:color="auto" w:fill="auto"/>
</w:tcPr>
<w:p>
<w:pPr>
<w:pStyle w:val="NoSpacing"/>
<w:rPr>
<w:b/>
</w:rPr>
</w:pPr>
<w:proofErr w:type="spellStart"/>
<w:r>
<w:rPr>
<w:b/>
</w:rPr>
<w:t>Hrs</w:t>
</w:r>
<w:proofErr w:type="spellEnd"/>
</w:p>
</w:tc>
<w:tc>
<w:tcPr><w:trHeight w:val="320"/>
<w:tcW w:w="977" w:type="dxa"/>
<w:shd w:val="clear" w:color="auto" w:fill="auto"/>
</w:tcPr>
<w:p>
<w:pPr>
<w:pStyle w:val="NoSpacing"/>
<w:rPr>
<w:b/>
</w:rPr>
</w:pPr>
<w:r>
<w:rPr>
<w:b/>
</w:rPr>
<w:t>Priority </w:t>
</w:r>
</w:p>
</w:tc>
<w:tc>
<w:tcPr><w:trHeight w:val="320"/>
<w:tcW w:w="2435" w:type="dxa"/>
<w:shd w:val="clear" w:color="auto" w:fill="auto"/>
</w:tcPr>
<w:p>
<w:pPr>
<w:pStyle w:val="NoSpacing"/>
<w:rPr>
<w:b/>
</w:rPr>
</w:pPr>
<w:r>
<w:rPr>
<w:b/>
</w:rPr>
<w:t>Secondary WO Number</w:t>
</w:r>
</w:p>
</w:tc>
</w:tr>
<w:tr>
<w:tc>
<w:tcPr><w:trHeight w:val="320"/>
<w:tcW w:w="794" w:type="dxa"/>
<w:shd w:val="clear" w:color="auto" w:fill="auto"/>
</w:tcPr>
<w:p>
<w:pPr>
<w:pStyle w:val="NoSpacing"/>
</w:pPr>
</w:p>
</w:tc>
<w:tc>
<w:tcPr><w:trHeight w:val="320"/>
<w:tcW w:w="6237" w:type="dxa"/>
<w:shd w:val="clear" w:color="auto" w:fill="auto"/>
</w:tcPr>
<w:p>
<w:pPr>
<w:pStyle w:val="NoSpacing"/>
</w:pPr>
</w:p>
</w:tc>
<w:tc>
<w:tcPr><w:trHeight w:val="320"/>
<w:tcW w:w="557" w:type="dxa"/>
<w:shd w:val="clear" w:color="auto" w:fill="auto"/>
</w:tcPr>
<w:p>
<w:pPr>
<w:pStyle w:val="NoSpacing"/>
</w:pPr>
</w:p>
</w:tc>
<w:tc>
<w:tcPr><w:trHeight w:val="320"/>
<w:tcW w:w="977" w:type="dxa"/>
<w:shd w:val="clear" w:color="auto" w:fill="auto"/>
</w:tcPr>
<w:p>
<w:pPr>
<w:pStyle w:val="NoSpacing"/>
<w:rPr>
<w:b/>
</w:rPr>
</w:pPr>
<w:r>
<w:rPr>
<w:b/>
<w:color w:val="943634"/>
</w:rPr>
<w:t>1</w:t>
</w:r>
<w:r>
<w:rPr>
<w:b/>
</w:rPr>
<w:t>  </w:t>
</w:r>
<w:r>
<w:rPr>
<w:b/>
<w:color w:val="FF0000"/>
</w:rPr>
<w:t>2</w:t>
</w:r>
<w:r>
<w:rPr>
<w:b/>
</w:rPr>
<w:t>  </w:t>
</w:r>
<w:r>
<w:rPr>
<w:b/>
<w:color w:val="548DD4"/>
</w:rPr>
<w:t>3</w:t>
</w:r>
<w:r>
<w:rPr>
<w:b/>
</w:rPr>
<w:t>  </w:t>
</w:r>
<w:r>
<w:rPr>
<w:b/>
<w:color w:val="76923C"/>
</w:rPr>
<w:t>4</w:t>
</w:r>
</w:p>
</w:tc>
<w:tc>
<w:tcPr><w:trHeight w:val="320"/>
<w:tcW w:w="2435" w:type="dxa"/>
<w:shd w:val="clear" w:color="auto" w:fill="auto"/>
</w:tcPr>
<w:p>
<w:pPr>
<w:pStyle w:val="NoSpacing"/>
</w:pPr>
</w:p>
</w:tc>
</w:tr>
<w:tr>
<w:tc>
<w:tcPr><w:trHeight w:val="320"/>
<w:tcW w:w="794" w:type="dxa"/>
<w:shd w:val="clear" w:color="auto" w:fill="auto"/>
</w:tcPr>
<w:p>
<w:pPr>
<w:pStyle w:val="NoSpacing"/>
</w:pPr>
</w:p>
</w:tc>
<w:tc>
<w:tcPr><w:trHeight w:val="320"/>
<w:tcW w:w="6237" w:type="dxa"/>
<w:shd w:val="clear" w:color="auto" w:fill="auto"/>
</w:tcPr>
<w:p>
<w:pPr>
<w:pStyle w:val="NoSpacing"/>
</w:pPr>
</w:p>
</w:tc>
<w:tc>
<w:tcPr><w:trHeight w:val="320"/>
<w:tcW w:w="557" w:type="dxa"/>
<w:shd w:val="clear" w:color="auto" w:fill="auto"/>
</w:tcPr>
<w:p>
<w:pPr>
<w:pStyle w:val="NoSpacing"/>
</w:pPr>
</w:p>
</w:tc>
<w:tc>
<w:tcPr><w:trHeight w:val="320"/>
<w:tcW w:w="977" w:type="dxa"/>
<w:shd w:val="clear" w:color="auto" w:fill="auto"/>
</w:tcPr>
<w:p>
<w:pPr>
<w:pStyle w:val="NoSpacing"/>
</w:pPr>
<w:r>
<w:rPr>
<w:b/>
<w:color w:val="943634"/>
</w:rPr>
<w:t>1</w:t>
</w:r>
<w:r>
<w:rPr>
<w:b/>
</w:rPr>
<w:t>  </w:t>
</w:r>
<w:r>
<w:rPr>
<w:b/>
<w:color w:val="FF0000"/>
</w:rPr>
<w:t>2</w:t>
</w:r>
<w:r>
<w:rPr>
<w:b/>
</w:rPr>
<w:t>  </w:t>
</w:r>
<w:r>
<w:rPr>
<w:b/>
<w:color w:val="548DD4"/>
</w:rPr>
<w:t>3</w:t>
</w:r>
<w:r>
<w:rPr>
<w:b/>
</w:rPr>
<w:t>  </w:t>
</w:r>
<w:r>
<w:rPr>
<w:b/>
<w:color w:val="76923C"/>
</w:rPr>
<w:t>4</w:t>
</w:r>
</w:p>
</w:tc>
<w:tc>
<w:tcPr><w:trHeight w:val="320"/>
<w:tcW w:w="2435" w:type="dxa"/>
<w:shd w:val="clear" w:color="auto" w:fill="auto"/>
</w:tcPr>
<w:p>
<w:pPr>
<w:pStyle w:val="NoSpacing"/>
</w:pPr>
</w:p>
</w:tc>
</w:tr>
<w:tr>
<w:tc>
<w:tcPr><w:trHeight w:val="320"/>
<w:tcW w:w="794" w:type="dxa"/>
<w:shd w:val="clear" w:color="auto" w:fill="auto"/>
</w:tcPr>
<w:p>
<w:pPr>
<w:pStyle w:val="NoSpacing"/>
</w:pPr>
</w:p>
</w:tc>
<w:tc>
<w:tcPr><w:trHeight w:val="320"/>
<w:tcW w:w="6237" w:type="dxa"/>
<w:shd w:val="clear" w:color="auto" w:fill="auto"/>
</w:tcPr>
<w:p>
<w:pPr>
<w:pStyle w:val="NoSpacing"/>
</w:pPr>
</w:p>
</w:tc>
<w:tc>
<w:tcPr><w:trHeight w:val="320"/>
<w:tcW w:w="557" w:type="dxa"/>
<w:shd w:val="clear" w:color="auto" w:fill="auto"/>
</w:tcPr>
<w:p>
<w:pPr>
<w:pStyle w:val="NoSpacing"/>
</w:pPr>
</w:p>
</w:tc>
<w:tc>
<w:tcPr><w:trHeight w:val="320"/>
<w:tcW w:w="977" w:type="dxa"/>
<w:shd w:val="clear" w:color="auto" w:fill="auto"/>
</w:tcPr>
<w:p>
<w:pPr>
<w:pStyle w:val="NoSpacing"/>
</w:pPr>
<w:r>
<w:rPr>
<w:b/>
<w:color w:val="943634"/>
</w:rPr>
<w:t>1</w:t>
</w:r>
<w:r>
<w:rPr>
<w:b/>
</w:rPr>
<w:t>  </w:t>
</w:r>
<w:r>
<w:rPr>
<w:b/>
<w:color w:val="FF0000"/>
</w:rPr>
<w:t>2</w:t>
</w:r>
<w:r>
<w:rPr>
<w:b/>
</w:rPr>
<w:t>  </w:t>
</w:r>
<w:r>
<w:rPr>
<w:b/>
<w:color w:val="548DD4"/>
</w:rPr>
<w:t>3</w:t>
</w:r>
<w:r>
<w:rPr>
<w:b/>
</w:rPr>
<w:t>  </w:t>
</w:r>
<w:r>
<w:rPr>
<w:b/>
<w:color w:val="76923C"/>
</w:rPr>
<w:t>4</w:t>
</w:r>
</w:p>
</w:tc>
<w:tc>
<w:tcPr><w:trHeight w:val="320"/>
<w:tcW w:w="2435" w:type="dxa"/>
<w:shd w:val="clear" w:color="auto" w:fill="auto"/>
</w:tcPr>
<w:p>
<w:pPr>
<w:pStyle w:val="NoSpacing"/>
</w:pPr>
</w:p>
</w:tc>
</w:tr>
<w:tr>
<w:tc>
<w:tcPr><w:trHeight w:val="320"/>
<w:tcW w:w="794" w:type="dxa"/>
<w:shd w:val="clear" w:color="auto" w:fill="auto"/>
</w:tcPr>
<w:p>
<w:pPr>
<w:pStyle w:val="NoSpacing"/>
</w:pPr>
</w:p>
</w:tc>
<w:tc>
<w:tcPr><w:trHeight w:val="320"/>
<w:tcW w:w="6237" w:type="dxa"/>
<w:shd w:val="clear" w:color="auto" w:fill="auto"/>
</w:tcPr>
<w:p>
<w:pPr>
<w:pStyle w:val="NoSpacing"/>
</w:pPr>
</w:p>
</w:tc>
<w:tc>
<w:tcPr><w:trHeight w:val="320"/>
<w:tcW w:w="557" w:type="dxa"/>
<w:shd w:val="clear" w:color="auto" w:fill="auto"/>
</w:tcPr>
<w:p>
<w:pPr>
<w:pStyle w:val="NoSpacing"/>
</w:pPr>
</w:p>
</w:tc>
<w:tc>
<w:tcPr><w:trHeight w:val="320"/>
<w:tcW w:w="977" w:type="dxa"/>
<w:shd w:val="clear" w:color="auto" w:fill="auto"/>
</w:tcPr>
<w:p>
<w:pPr>
<w:pStyle w:val="NoSpacing"/>
</w:pPr>
<w:r>
<w:rPr>
<w:b/>
<w:color w:val="943634"/>
</w:rPr>
<w:t>1</w:t>
</w:r>
<w:r>
<w:rPr>
<w:b/>
</w:rPr>
<w:t>  </w:t>
</w:r>
<w:r>
<w:rPr>
<w:b/>
<w:color w:val="FF0000"/>
</w:rPr>
<w:t>2</w:t>
</w:r>
<w:r>
<w:rPr>
<w:b/>
</w:rPr>
<w:t>  </w:t>
</w:r>
<w:r>
<w:rPr>
<w:b/>
<w:color w:val="548DD4"/>
</w:rPr>
<w:t>3</w:t>
</w:r>
<w:r>
<w:rPr>
<w:b/>
</w:rPr>
<w:t>  </w:t>
</w:r>
<w:r>
<w:rPr>
<w:b/>
<w:color w:val="76923C"/>
</w:rPr>
<w:t>4</w:t>
</w:r>
</w:p>
</w:tc>
<w:tc>
<w:tcPr><w:trHeight w:val="320"/>
<w:tcW w:w="2435" w:type="dxa"/>
<w:shd w:val="clear" w:color="auto" w:fill="auto"/>
</w:tcPr>
<w:p>
<w:pPr>
<w:pStyle w:val="NoSpacing"/>
</w:pPr>
</w:p>
</w:tc>
</w:tr>
<w:tr>
<w:tc>
<w:tcPr><w:trHeight w:val="320"/>
<w:tcW w:w="794" w:type="dxa"/>
<w:shd w:val="clear" w:color="auto" w:fill="auto"/>
</w:tcPr>
<w:p>
<w:pPr>
<w:pStyle w:val="NoSpacing"/>
</w:pPr>
</w:p>
</w:tc>
<w:tc>
<w:tcPr><w:trHeight w:val="320"/>
<w:tcW w:w="6237" w:type="dxa"/>
<w:shd w:val="clear" w:color="auto" w:fill="auto"/>
</w:tcPr>
<w:p>
<w:pPr>
<w:pStyle w:val="NoSpacing"/>
</w:pPr>
</w:p>
</w:tc>
<w:tc>
<w:tcPr><w:trHeight w:val="320"/>
<w:tcW w:w="557" w:type="dxa"/>
<w:shd w:val="clear" w:color="auto" w:fill="auto"/>
</w:tcPr>
<w:p>
<w:pPr>
<w:pStyle w:val="NoSpacing"/>
</w:pPr>
</w:p>
</w:tc>
<w:tc>
<w:tcPr><w:trHeight w:val="320"/>
<w:tcW w:w="977" w:type="dxa"/>
<w:shd w:val="clear" w:color="auto" w:fill="auto"/>
</w:tcPr>
<w:p>
<w:pPr>
<w:pStyle w:val="NoSpacing"/>
</w:pPr>
<w:r>
<w:rPr>
<w:b/>
<w:color w:val="943634"/>
</w:rPr>
<w:t>1</w:t>
</w:r>
<w:r>
<w:rPr>
<w:b/>
</w:rPr>
<w:t>  </w:t>
</w:r>
<w:r>
<w:rPr>
<w:b/>
<w:color w:val="FF0000"/>
</w:rPr>
<w:t>2</w:t>
</w:r>
<w:r>
<w:rPr>
<w:b/>
</w:rPr>
<w:t>  </w:t>
</w:r>
<w:r>
<w:rPr>
<w:b/>
<w:color w:val="548DD4"/>
</w:rPr>
<w:t>3</w:t>
</w:r>
<w:r>
<w:rPr>
<w:b/>
</w:rPr>
<w:t>  </w:t>
</w:r>
<w:r>
<w:rPr>
<w:b/>
<w:color w:val="76923C"/>
</w:rPr>
<w:t>4</w:t>
</w:r>
</w:p>
</w:tc>
<w:tc>
<w:tcPr><w:trHeight w:val="320"/>
<w:tcW w:w="2435" w:type="dxa"/>
<w:shd w:val="clear" w:color="auto" w:fill="auto"/>
</w:tcPr>
<w:p>
<w:pPr>
<w:pStyle w:val="NoSpacing"/>
</w:pPr>
</w:p>
</w:tc>
</w:tr>
</w:tbl>
<w:p>
<w:pPr>
<w:pStyle w:val="NoSpacing"/>
</w:pPr>
</w:p>
   <w:p>
<w:pPr>
<w:pStyle w:val="NoSpacing"/>
</w:pPr>
<w:r>
<w:t>Sign off work order tasks as complete and return work package folder to Responsible Person (Supervisor / Coordinator)</w:t>
</w:r>
</w:p>
  
  <w:tbl>
  
<w:tblPr>
<w:tblW w:w="5000" w:type="pct"/>
<w:tblBorders>
<w:top w:val="single" w:sz="4" wx:bdrwidth="10" w:space="0" w:color="auto"/>
<w:left w:val="single" w:sz="4" wx:bdrwidth="10" w:space="0" w:color="auto"/>
<w:bottom w:val="single" w:sz="4" wx:bdrwidth="10" w:space="0" w:color="auto"/>
<w:right w:val="single" w:sz="4" wx:bdrwidth="10" w:space="0" w:color="auto"/>
<w:insideH w:val="single" w:sz="4" wx:bdrwidth="10" w:space="0" w:color="auto"/>
<w:insideV w:val="single" w:sz="4" wx:bdrwidth="10" w:space="0" w:color="auto"/>
</w:tblBorders>
<w:tblLook w:val="04A0"/>
</w:tblPr>
<w:tblGrid>
<w:gridCol />
<w:gridCol />
<w:gridCol />
<w:gridCol />
<w:gridCol />
<w:gridCol />
</w:tblGrid>
  
<w:tr>
<w:tc>
<w:tcPr><w:trHeight w:val="320"/>
<w:gridSpan w:val="6"/>
<w:shd w:val="clear" w:color="auto" w:fill="auto"/>
</w:tcPr>
<w:p>
<w:pPr><w:pStyle w:val="NoSpacing"/><w:rPr>
<w:b/>
</w:rPr>
</w:pPr>
<w:r>
<w:rPr><w:b/></w:rPr>
<w:t>Tradesman - License No. is only required for Statutory Inspections</w:t>
</w:r>
</w:p>
</w:tc>
</w:tr>
  
<w:tr>
  
<w:tc>
<w:tcPr><w:trHeight w:val="320"/>
<w:tcW w:w="2977" w:type="dxa"/>
<w:shd w:val="clear" w:color="auto" w:fill="auto"/>
</w:tcPr>
<w:p>
<w:pPr><w:pStyle w:val="NoSpacing"/><w:rPr><w:b/></w:rPr></w:pPr>
<w:r>
<w:rPr><w:b/></w:rPr>
<w:t>Name</w:t>
</w:r>
</w:p>
</w:tc>
  
<w:tc>
<w:tcPr><w:trHeight w:val="320"/>
<w:shd w:val="clear" w:color="auto" w:fill="auto"/>
</w:tcPr>
<w:p>
<w:pPr><w:pStyle w:val="NoSpacing"/><w:rPr>
<w:b/>
</w:rPr>
</w:pPr>
<w:r>
<w:rPr>
<w:b/>
</w:rPr>
<w:t>Position</w:t>
</w:r>
</w:p>
</w:tc>
  
<w:tc>
<w:tcPr><w:trHeight w:val="320"/>
<w:tcW w:w="2000" w:type="dxa"/>
<w:shd w:val="clear" w:color="auto" w:fill="auto"/>
</w:tcPr>
<w:p>
<w:pPr>
<w:pStyle w:val="NoSpacing"/>
<w:rPr>
<w:b/>
</w:rPr>
</w:pPr>
<w:r>
<w:rPr><w:b/></w:rPr>
<w:t>License No. </w:t>
</w:r>
</w:p>
</w:tc>
  
<w:tc>
<w:tcPr><w:trHeight w:val="320"/>
<w:tcW w:w="1300" w:type="dxa"/>
<w:shd w:val="clear" w:color="auto" w:fill="auto"/>
</w:tcPr>
<w:p>
<w:pPr>
<w:pStyle w:val="NoSpacing"/>
<w:rPr>
<w:b/>
</w:rPr>
</w:pPr>
  
<w:r>
<w:rPr><w:b/></w:rPr>
<w:t>Date</w:t>
</w:r>
</w:p>
</w:tc>
  
<w:tc>
<w:tcPr><w:trHeight w:val="320"/>
<w:tcW w:w="900" w:type="dxa"/>
<w:shd w:val="clear" w:color="auto" w:fill="auto"/>
</w:tcPr>
<w:p>
<w:pPr>
<w:pStyle w:val="NoSpacing"/>
<w:rPr>
<w:b/>
</w:rPr>
</w:pPr>
  
<w:r>
<w:rPr><w:b/></w:rPr>
<w:t>Hrs</w:t>
</w:r>
</w:p>
</w:tc>
  
<w:tc>
<w:tcPr><w:trHeight w:val="320"/>
<w:tcW w:w="2200" w:type="dxa"/>
<w:shd w:val="clear" w:color="auto" w:fill="auto"/>
</w:tcPr>
<w:p>
<w:pPr>
<w:pStyle w:val="NoSpacing"/>
<w:rPr>
<w:b/>
</w:rPr>
</w:pPr>
<w:r>
<w:rPr><w:b/></w:rPr>
<w:t>Signature</w:t>
</w:r>
</w:p>
</w:tc>
  
</w:tr>

<w:tr>
  <w:tc><w:tcPr><w:trHeight w:val="320"/></w:tcPr><w:p><w:pPr><w:pStyle w:val="NoSpacing"/></w:pPr></w:p></w:tc>
  <w:tc><w:tcPr><w:trHeight w:val="320"/></w:tcPr><w:p><w:pPr><w:pStyle w:val="NoSpacing"/></w:pPr></w:p></w:tc>
  <w:tc><w:tcPr><w:trHeight w:val="320"/></w:tcPr><w:p><w:pPr><w:pStyle w:val="NoSpacing"/></w:pPr></w:p></w:tc>
  <w:tc><w:tcPr><w:trHeight w:val="320"/></w:tcPr><w:p><w:pPr><w:pStyle w:val="NoSpacing"/></w:pPr></w:p></w:tc>
  <w:tc><w:tcPr><w:trHeight w:val="320"/></w:tcPr><w:p><w:pPr><w:pStyle w:val="NoSpacing"/></w:pPr></w:p></w:tc>
  <w:tc><w:tcPr><w:trHeight w:val="320"/></w:tcPr><w:p><w:pPr><w:pStyle w:val="NoSpacing"/></w:pPr></w:p></w:tc>
</w:tr>
  
<w:tr>
  <w:tc><w:tcPr><w:trHeight w:val="320"/></w:tcPr><w:p><w:pPr><w:pStyle w:val="NoSpacing"/></w:pPr></w:p></w:tc>
  <w:tc><w:tcPr><w:trHeight w:val="320"/></w:tcPr><w:p><w:pPr><w:pStyle w:val="NoSpacing"/></w:pPr></w:p></w:tc>
  <w:tc><w:tcPr><w:trHeight w:val="320"/></w:tcPr><w:p><w:pPr><w:pStyle w:val="NoSpacing"/></w:pPr></w:p></w:tc>
  <w:tc><w:tcPr><w:trHeight w:val="320"/></w:tcPr><w:p><w:pPr><w:pStyle w:val="NoSpacing"/></w:pPr></w:p></w:tc>
  <w:tc><w:tcPr><w:trHeight w:val="320"/></w:tcPr><w:p><w:pPr><w:pStyle w:val="NoSpacing"/></w:pPr></w:p></w:tc>
  <w:tc><w:tcPr><w:trHeight w:val="320"/></w:tcPr><w:p><w:pPr><w:pStyle w:val="NoSpacing"/></w:pPr></w:p></w:tc>
</w:tr>
  
<w:tr>
  <w:tc><w:tcPr><w:trHeight w:val="320"/></w:tcPr><w:p><w:pPr><w:pStyle w:val="NoSpacing"/></w:pPr></w:p></w:tc>
  <w:tc><w:tcPr><w:trHeight w:val="320"/></w:tcPr><w:p><w:pPr><w:pStyle w:val="NoSpacing"/></w:pPr></w:p></w:tc>
  <w:tc><w:tcPr><w:trHeight w:val="320"/></w:tcPr><w:p><w:pPr><w:pStyle w:val="NoSpacing"/></w:pPr></w:p></w:tc>
  <w:tc><w:tcPr><w:trHeight w:val="320"/></w:tcPr><w:p><w:pPr><w:pStyle w:val="NoSpacing"/></w:pPr></w:p></w:tc>
  <w:tc><w:tcPr><w:trHeight w:val="320"/></w:tcPr><w:p><w:pPr><w:pStyle w:val="NoSpacing"/></w:pPr></w:p></w:tc>
  <w:tc><w:tcPr><w:trHeight w:val="320"/></w:tcPr><w:p><w:pPr><w:pStyle w:val="NoSpacing"/></w:pPr></w:p></w:tc>
</w:tr>
  
<w:tr>
  <w:tc><w:tcPr><w:trHeight w:val="320"/></w:tcPr><w:p><w:pPr><w:pStyle w:val="NoSpacing"/></w:pPr></w:p></w:tc>
  <w:tc><w:tcPr><w:trHeight w:val="320"/></w:tcPr><w:p><w:pPr><w:pStyle w:val="NoSpacing"/></w:pPr></w:p></w:tc>
  <w:tc><w:tcPr><w:trHeight w:val="320"/></w:tcPr><w:p><w:pPr><w:pStyle w:val="NoSpacing"/></w:pPr></w:p></w:tc>
  <w:tc><w:tcPr><w:trHeight w:val="320"/></w:tcPr><w:p><w:pPr><w:pStyle w:val="NoSpacing"/></w:pPr></w:p></w:tc>
  <w:tc><w:tcPr><w:trHeight w:val="320"/></w:tcPr><w:p><w:pPr><w:pStyle w:val="NoSpacing"/></w:pPr></w:p></w:tc>
  <w:tc><w:tcPr><w:trHeight w:val="320"/></w:tcPr><w:p><w:pPr><w:pStyle w:val="NoSpacing"/></w:pPr></w:p></w:tc>
</w:tr>
  
<w:tr>
  <w:tc><w:tcPr><w:trHeight w:val="320"/></w:tcPr><w:p><w:pPr><w:pStyle w:val="NoSpacing"/></w:pPr></w:p></w:tc>
  <w:tc><w:tcPr><w:trHeight w:val="320"/></w:tcPr><w:p><w:pPr><w:pStyle w:val="NoSpacing"/></w:pPr></w:p></w:tc>
  <w:tc><w:tcPr><w:trHeight w:val="320"/></w:tcPr><w:p><w:pPr><w:pStyle w:val="NoSpacing"/></w:pPr></w:p></w:tc>
  <w:tc><w:tcPr><w:trHeight w:val="320"/></w:tcPr><w:p><w:pPr><w:pStyle w:val="NoSpacing"/></w:pPr></w:p></w:tc>
  <w:tc><w:tcPr><w:trHeight w:val="320"/></w:tcPr><w:p><w:pPr><w:pStyle w:val="NoSpacing"/></w:pPr></w:p></w:tc>
  <w:tc><w:tcPr><w:trHeight w:val="320"/></w:tcPr><w:p><w:pPr><w:pStyle w:val="NoSpacing"/></w:pPr></w:p></w:tc>
</w:tr>

</w:tbl>
  
<w:p>
<w:pPr>
<w:pStyle w:val="NoSpacing"/>
</w:pPr>
</w:p>  
<w:p>
<w:pPr>
<w:pStyle w:val="NoSpacing"/>
</w:pPr>
<w:r>
<w:t>Confirm all Identified defects have work order</w:t>
</w:r>
</w:p>
<w:tbl>
<w:tblPr>
<w:tblW w:w="5000" w:type="pct"/>
<w:tblBorders>
<w:top w:val="single" w:sz="4" wx:bdrwidth="10" w:space="0" w:color="auto"/>
<w:left w:val="single" w:sz="4" wx:bdrwidth="10" w:space="0" w:color="auto"/>
<w:bottom w:val="single" w:sz="4" wx:bdrwidth="10" w:space="0" w:color="auto"/>
<w:right w:val="single" w:sz="4" wx:bdrwidth="10" w:space="0" w:color="auto"/>
<w:insideH w:val="single" w:sz="4" wx:bdrwidth="10" w:space="0" w:color="auto"/>
<w:insideV w:val="single" w:sz="4" wx:bdrwidth="10" w:space="0" w:color="auto"/>
</w:tblBorders>
<w:tblLook w:val="04A0"/>
</w:tblPr>
<w:tblGrid>
<w:gridCol />
<w:gridCol />
<w:gridCol />
<w:gridCol />
</w:tblGrid>
<w:tr>
<w:tc>
<w:tcPr><w:trHeight w:val="320"/>
<w:tcW w:w="2977" w:type="dxa"/>
<w:shd w:val="clear" w:color="auto" w:fill="auto"/>
</w:tcPr>
<w:p>
<w:pPr>
<w:pStyle w:val="NoSpacing"/>
<w:rPr><w:b/></w:rPr></w:pPr>
<w:r>
<w:rPr><w:b/></w:rPr>
<w:t>Name</w:t>
</w:r>
</w:p>
</w:tc>
  
<w:tc>
<w:tcPr><w:trHeight w:val="320"/>
<w:shd w:val="clear" w:color="auto" w:fill="auto"/>
</w:tcPr>
<w:p>
<w:pPr>
<w:pStyle w:val="NoSpacing"/>
<w:rPr><w:b/></w:rPr>
</w:pPr>
<w:r>
<w:rPr><w:b/></w:rPr>
<w:t>Position</w:t>
</w:r>
</w:p>
</w:tc>
<w:tc>
<w:tcPr><w:trHeight w:val="320"/>
<w:tcW w:w="1843" w:type="dxa"/>
<w:shd w:val="clear" w:color="auto" w:fill="auto"/>
</w:tcPr>
<w:p>
<w:pPr>
<w:pStyle w:val="NoSpacing"/>
<w:rPr><w:b/></w:rPr>
</w:pPr>
<w:r>
<w:rPr><w:b/></w:rPr>
<w:t>Date</w:t>
</w:r>
</w:p>
</w:tc>
<w:tc>
<w:tcPr><w:trHeight w:val="320"/>
<w:tcW w:w="4252" w:type="dxa"/>
<w:shd w:val="clear" w:color="auto" w:fill="auto"/>
</w:tcPr>
<w:p>
<w:pPr>
<w:pStyle w:val="NoSpacing"/>
<w:rPr><w:b/></w:rPr>
</w:pPr>
<w:r>
<w:rPr><w:b/></w:rPr>
<w:t>Signature</w:t>
</w:r>
</w:p>
</w:tc>
</w:tr>
  
<w:tr>
  <w:tc><w:tcPr><w:trHeight w:val="320"/></w:tcPr><w:p><w:pPr><w:pStyle w:val="NoSpacing"/></w:pPr></w:p></w:tc>
  <w:tc><w:tcPr><w:trHeight w:val="320"/></w:tcPr><w:p><w:pPr><w:pStyle w:val="NoSpacing"/></w:pPr></w:p></w:tc>
  <w:tc><w:tcPr><w:trHeight w:val="320"/></w:tcPr><w:p><w:pPr><w:pStyle w:val="NoSpacing"/></w:pPr></w:p></w:tc>
  <w:tc><w:tcPr><w:trHeight w:val="320"/></w:tcPr><w:p><w:pPr><w:pStyle w:val="NoSpacing"/></w:pPr></w:p></w:tc>
</w:tr>
</w:tbl>
  
  
<w:p>
<w:pPr>
<w:pStyle w:val="NoSpacing"/>
</w:pPr>
</w:p>
<xsl:call-template name="Signatory">
 <xsl:with-param name="name">Supervisor / Coordinator - All NON Acceptable Limits and Additional Comments have been reviewed</xsl:with-param>
</xsl:call-template>
  
<w:p>
<w:pPr>
<w:pStyle w:val="NoSpacing"/>
</w:pPr>
</w:p>
<xsl:for-each select="WorkpackageExport/WorkpackageDetails/Signatories/Signatory">
 <xsl:call-template name="Signatory">
   <xsl:with-param name="name" select="Name" />
 </xsl:call-template>
</xsl:for-each>
  
<w:sectPr>
  <w:ftr w:type="odd">
  <xsl:call-template name="FooterTemplate" />
</w:ftr>
<w:ftr w:type="first">
  <xsl:call-template name="FooterTemplate" />
</w:ftr>
<w:pgSz w:w="11906" w:h="16838" w:code="9"/>
<w:pgMar w:top="425" w:right="400" w:bottom="1559" w:left="400" w:header="709" w:footer="295" w:gutter="0"/>
<w:cols w:space="708"/>
<w:titlePg/>
<w:docGrid w:line-pitch="360"/>
</w:sectPr>
</wx:sect>
</w:body>
      
      
</w:wordDocument>
</xsl:template>
  
<!-- 
This template is used for creating a dynamic 3 column wide grid used to display the 
symbols that have been loaded into the database for the user. It takes as parameters
the collection of symbols from the xml and a starting index.
Note: xsl uses a 1 based index
-->
<xsl:template name="SymbolTable">
  <xsl:param name="symbols"></xsl:param>
  <xsl:param name="startIndex"></xsl:param>
    <w:tr>
    <w:tc>
    <w:tcPr>
    <w:tcW w:w="3544" w:type="dxa"/>
    <!--<w:tcBorders>
    <w:top w:val="single" w:sz="4" wx:bdrwidth="10" w:space="0" w:color="auto"/>
    </w:tcBorders>-->
    <w:shd w:val="clear" w:color="auto" w:fill="auto"/>
    </w:tcPr>
    <!--Determine if we have an image to display based on the counts-->
    <xsl:choose>
      <xsl:when test="($startIndex) &lt;= count($symbols/Symbol)">
        <xsl:call-template name="Image">
          <xsl:with-param name="Image" select="$symbols/Symbol[position()=$startIndex]"></xsl:with-param>
          <xsl:with-param name="prefix" select="SYMBOL"></xsl:with-param>
          <xsl:with-param name="width">32</xsl:with-param>
          <xsl:with-param name="height">32</xsl:with-param>
          <xsl:with-param name="image_measurement">px</xsl:with-param>
          <xsl:with-param name="extension" select="jpeg"></xsl:with-param>
          <xsl:with-param name="flag_showname" select="1"></xsl:with-param>
        </xsl:call-template>
      </xsl:when>
      <xsl:otherwise>
        <w:p>
        <w:pPr>
        <w:pStyle w:val="NoSpacing"/>
        </w:pPr>
        </w:p>
      </xsl:otherwise>
    </xsl:choose>
    </w:tc>
    <w:tc>
    <w:tcPr>
    <w:tcW w:w="3544" w:type="dxa"/>
    <!--<w:tcBorders>
    <w:top w:val="single" w:sz="4" wx:bdrwidth="10" w:space="0" w:color="auto"/>
    </w:tcBorders>-->
    <w:shd w:val="clear" w:color="auto" w:fill="auto"/>
    </w:tcPr>    
    <xsl:choose>
      <xsl:when test="($startIndex + 1) &lt;= count($symbols/Symbol)">
        <xsl:call-template name="Image">
          <xsl:with-param name="Image" select="$symbols/Symbol[position()=($startIndex + 1)]"></xsl:with-param>
          <xsl:with-param name="prefix" select="SYMBOL"></xsl:with-param>
          <xsl:with-param name="width">32</xsl:with-param>
          <xsl:with-param name="height">32</xsl:with-param>
          <xsl:with-param name="image_measurement">px</xsl:with-param>
          <xsl:with-param name="extension" select="jpeg"></xsl:with-param>
          <xsl:with-param name="flag_showname" select="1"></xsl:with-param>
        </xsl:call-template>
      </xsl:when>
      <xsl:otherwise>
        <w:p>
        <w:pPr>
        <w:pStyle w:val="NoSpacing"/>
        </w:pPr>
        </w:p>
      </xsl:otherwise>
    </xsl:choose>
    </w:tc>
    <w:tc>
    <w:tcPr>
    <w:tcW w:w="3544" w:type="dxa"/>
    <!--<w:tcBorders>
    <w:top w:val="single" w:sz="4" wx:bdrwidth="10" w:space="0" w:color="auto"/>
    </w:tcBorders>-->
    <w:shd w:val="clear" w:color="auto" w:fill="auto"/>
    </w:tcPr>
    <xsl:choose>
      <xsl:when test="($startIndex + 2) &lt;= count($symbols/Symbol)">
        <xsl:call-template name="Image">
          <xsl:with-param name="Image" select="$symbols/Symbol[position()=($startIndex + 2)]"></xsl:with-param>
          <xsl:with-param name="prefix" select="SYMBOL"></xsl:with-param>
          <xsl:with-param name="width">32</xsl:with-param>
          <xsl:with-param name="height">32</xsl:with-param>
          <xsl:with-param name="image_measurement">px</xsl:with-param>
          <xsl:with-param name="extension" select="jpeg"></xsl:with-param>
          <xsl:with-param name="flag_showname" select="1"></xsl:with-param>
        </xsl:call-template>
      </xsl:when>
      <xsl:otherwise>
        <w:p>
        <w:pPr>
        <w:pStyle w:val="NoSpacing"/>
        </w:pPr>
        </w:p>
      </xsl:otherwise>
    </xsl:choose>
    </w:tc>
    </w:tr>

    <!--Determine if we have hit the end and if not recurse through the collection-->
    <xsl:if test ="($startIndex + 3) &lt;= count($symbols/Symbol)">
      <xsl:call-template name="SymbolTable">
        <xsl:with-param name="symbols" select="$symbols"></xsl:with-param>
        <xsl:with-param name="startIndex" select="$startIndex + 3"></xsl:with-param>
      </xsl:call-template>
    </xsl:if>
</xsl:template>
  
<!--
This method is called to subsitute all new line characters with paragraphs in word
to ensure that the job preparationa and post shutdown text boxes display as entered.
-->
<xsl:template name="substitute">
<xsl:param name="string" />
<xsl:param name="from" select="'&#xA;'" />
<w:p>
<xsl:choose>
  <xsl:when test="contains($string, $from)">
    <w:pPr><w:pStyle w:val="NoSpacing"/></w:pPr>
    <w:r>
      <w:t><xsl:value-of select="substring-before($string, $from)" /></w:t>
    </w:r>
    <xsl:call-template name="substitute">
      <xsl:with-param name="string"
                                              select="substring-after($string, $from)" />
      <xsl:with-param name="from" select="$from" />
    </xsl:call-template>
  </xsl:when>
  <xsl:otherwise>
    <xsl:choose>
      <xsl:when test="string-length($string) != 0">
        <w:pPr><w:pStyle w:val="NoSpacing"/></w:pPr>
        <w:r>
          <w:t><xsl:value-of select="$string" /></w:t>
        </w:r>
      </xsl:when>
    </xsl:choose>
  </xsl:otherwise>
</xsl:choose>
</w:p>
</xsl:template>
  
<!-- 
This method is called to display an image encoded in Base64 into the 
word document at the calling location. It takes as parameters:
Image               - The image xml node containing all the data
prefix              - Used in developing a unique naming covention
width               - Width of the image as a number
height              - Height of the image as a number
image_measurement   - Unit of measure for width and height. E.g. pt or px
extension           - Image type extension
flag_showname       - 0 hides the name or 1 shows name next to image
Align_Centre        - 0 is normal alignment or 1 is centre
-->
<xsl:template name="Image">
<xsl:param name="Image"></xsl:param>
<xsl:param name="prefix"></xsl:param>
<xsl:param name="width"></xsl:param>
<xsl:param name="height"></xsl:param>
<xsl:param name="image_measurement"></xsl:param>
<xsl:param name="extension"></xsl:param>
<xsl:param name="flag_showname"></xsl:param>
<xsl:param name="Align_Centre"></xsl:param>
  <w:p>
  <w:pPr>
  <w:pStyle w:val="NoSpacing"/>
  <xsl:choose>
    <xsl:when test="$Align_Centre = 1"><w:jc w:val="center"/></xsl:when>
  </xsl:choose>
  </w:pPr>
  <w:r>
  <w:rPr><w:noProof/><w:lang w:fareast="EN-AU"/></w:rPr>
  <w:pict>
    <xsl:variable name="generatedId" select="generate-id()"></xsl:variable>
    <xsl:variable name="url">wordml://<xsl:value-of select="$prefix"/>_<xsl:value-of select="$Image/Id"/>_<xsl:value-of select="$generatedId"/>.<xsl:value-of select="$extension"/></xsl:variable>
    <w:binData xml:space="preserve" w:name="{$url}"><xsl:value-of select="$Image/Base64Encoding"/></w:binData>
    <v:shape id="{$generatedId}" type="#_x0000_t75" style="width:{$width}{$image_measurement};height:{$height}{$image_measurement};visibility:visible;">
      <v:imagedata src="{$url}" o:title="{$prefix}"></v:imagedata>
      <w10:wrap type="square"/>
    </v:shape>
  </w:pict>
  </w:r>
  <xsl:choose>
    <xsl:when test="$flag_showname = 1"><w:r wsp:rsidR="00100B64"><w:t><xsl:value-of select="$Image/Name"/></w:t></w:r></xsl:when>
  </xsl:choose>
  </w:p>
</xsl:template>
  
<!--
This method is called to display task group header for the table of tasks.
It takes a workpackage task xml as a parameter
-->
<xsl:template name="TaskGroup">
  <xsl:param name ="WorkpackageTask"></xsl:param>
  <w:tr>
  <w:tc>
  <w:tcPr>
    <w:gridSpan w:val="5"/>
    <w:shd w:val="clear" w:color="auto" w:fill="auto"/>
  </w:tcPr>
  <w:p>
  <w:pPr>
    <w:pStyle w:val="NoSpacing"/>
    <w:rPr>
    <w:b/>
    <w:i/>
    <w:sz w:val="24"/>
    <w:sz-cs w:val="24"/>
    </w:rPr>
  </w:pPr>
  <w:r>
  <w:rPr>
    <w:b/>
    <w:i/>
    <w:sz w:val="24"/>
    <w:sz-cs w:val="24"/>
  </w:rPr>
    <xsl:variable name="groupNumber">
      <xsl:call-template name="GetGroupNumberText" />
    </xsl:variable>
  <w:t><xsl:value-of select="normalize-space($groupNumber)" />. <xsl:if test="string-length($WorkpackageTask/TaskGroupName) = 0"></xsl:if><xsl:value-of select="$WorkpackageTask/TaskGroupName" /></w:t>
  </w:r>
  </w:p>
  </w:tc>
  </w:tr>
</xsl:template>
  
  <!--
This method is called to display Equipment header for the table of tasks.
It takes a workpackage task xml as a parameter
-->
<xsl:template name="EquipmentEntity">
<xsl:param name ="WorkpackageTask"></xsl:param>
<xsl:variable name="NumberOfEquipment"
                          select="count(/WorkpackageExport/WorkpackageTasks/WorkpackageTask[not(EquipmentEntityId=preceding-sibling::WorkpackageTask/EquipmentEntityId)])"/>
<xsl:if test="$NumberOfEquipment>1">
  <w:tr>
  <w:tc>
  <w:tcPr>
    <w:gridSpan w:val="5"/>
    <w:shd w:val="clear" w:color="auto" w:fill="BFBFBF"/>
  </w:tcPr>
  <w:p>
  <w:pPr>
    <w:pStyle w:val="NoSpacing"/>
    <w:rPr>
    <w:b/>
    </w:rPr>
  </w:pPr>
  <w:r>
  <w:rPr>
    <w:b/>
  </w:rPr>
  <w:t><xsl:value-of select="$WorkpackageTask/EquipmentEntityName" />(<xsl:value-of select="$WorkpackageTask/EquipmentEntityCode" />)</w:t>
  </w:r>
  </w:p>
  </w:tc>
  </w:tr>
</xsl:if>
</xsl:template>
    
  <!--
This method is called to display entity header for the table of tasks.
It takes a workpackage task xml as a parameter
-->
<xsl:template name="Entity">
<xsl:param name ="WorkpackageTask"></xsl:param>
  <w:tr>
            
  <w:tc>
  <w:tcPr><w:shd w:val="clear" w:color="auto" w:fill="DDD9C3"/><w:tcW w:w="1035" w:type="dxa" /></w:tcPr>
  <w:p>
  <w:pPr><w:pStyle w:val="NoSpacing"/><w:rPr><w:b/></w:rPr></w:pPr>
  <w:r>
  <w:rPr>
    <w:b/>
  </w:rPr>
  <w:t>Symbol</w:t>
  </w:r>
  </w:p>
  </w:tc>
            
  <w:tc>
  <w:tcPr><w:shd w:val="clear" w:color="auto" w:fill="DDD9C3"/></w:tcPr>
  <w:p>
  <w:pPr><w:pStyle w:val="NoSpacing"/><w:rPr><w:b/></w:rPr></w:pPr>
  <w:r>
  <w:rPr>
    <w:b/>
  </w:rPr>
  <w:t><xsl:value-of select="$WorkpackageTask/EntityName" /> (<xsl:value-of select="$WorkpackageTask/EntityCode" />)</w:t>
  </w:r>
  </w:p>
  </w:tc>
            
  <w:tc>
  <w:tcPr><w:shd w:val="clear" w:color="auto" w:fill="DDD9C3"/><w:tcW w:w="2600" w:type="dxa" /></w:tcPr>
  <w:p>
  <w:pPr><w:pStyle w:val="NoSpacing"/><w:jc w:val="center"/><w:rPr>
  <w:b/>
  </w:rPr>
  </w:pPr>
  <w:r>
  <w:rPr>
  <w:b/>
  </w:rPr>
  <w:t>Acceptable Limits</w:t>
  </w:r>
  </w:p>
  </w:tc>
            
  <w:tc>
  <w:tcPr><w:shd w:val="clear" w:color="auto" w:fill="DDD9C3"/><w:tcW w:w="1300"  w:type="dxa" /></w:tcPr>
  <w:p>
  <w:pPr><w:pStyle w:val="NoSpacing"/><w:jc w:val="center"/><w:rPr><w:b/></w:rPr></w:pPr>
  <w:r>
  <w:rPr><w:b/></w:rPr>
  <w:t>Acceptable</w:t>
  </w:r>
  </w:p>
  </w:tc>
            
  <w:tc>
    <w:tcPr><w:shd w:val="clear" w:color="auto" w:fill="DDD9C3"/><w:tcW w:w="1300"  w:type="dxa" /></w:tcPr>
    <w:p>
    <w:pPr><w:pStyle w:val="NoSpacing"/><w:jc w:val="center"/><w:rPr><w:b/></w:rPr></w:pPr>
    <w:r>
    <w:rPr><w:b/></w:rPr>
    <w:t>Sign/Initial</w:t>
    </w:r>
  </w:p>
  </w:tc>
  </w:tr>
</xsl:template>

  <!-- 
  This template gets the group number using the current rowOrder
  it does this by calling a recursive function that selects each set of the same group
  for example if we have groups 1,1,1,2,etc the first recursive call finds that the sequence start with group 1, it then finds the row order where the group changes
  and calls itself with the change row number
  each call increments the numFound counter and this gives us the group number
  -->
  <xsl:template name="GetGroupNumberText">
    <xsl:call-template name="GroupNumber">
      <xsl:with-param name="currentRowOrder" select="0" />
      <xsl:with-param name="searchItemRowOrder" select="RowOrder" />
      <xsl:with-param name="numFound"  select="1" />
    </xsl:call-template>
  </xsl:template>

  <xsl:template name="GroupNumber">
  <xsl:param name="currentRowOrder" />
  <xsl:param name="searchItemRowOrder" select="0" />
  <xsl:param name="numFound" select="1" />

  <!-- get the first group after current row order that is before the search item -->
  <xsl:variable
            name="currentGroup"
            select="/WorkpackageExport/WorkpackageTasks/WorkpackageTask[ExcludeFromWorkpackage='false' and RowOrder&gt;=$currentRowOrder and RowOrder&lt;=$searchItemRowOrder][1]/TaskGroupId"
    />

  <!-- get the next row order that is for a different group but still before the search item -->
  <xsl:variable
            name="newRowOrder"
            select="/WorkpackageExport/WorkpackageTasks/WorkpackageTask[ExcludeFromWorkpackage='false' and RowOrder&gt;=$currentRowOrder and RowOrder&lt;=$searchItemRowOrder and TaskGroupId!=$currentGroup][1]/RowOrder"
    />

    <!-- go again if we found anything -->
  <xsl:choose>
    <xsl:when test="$newRowOrder>0">
      <xsl:call-template name="GroupNumber">
        <xsl:with-param name="currentRowOrder" select="$newRowOrder" />
        <xsl:with-param name="searchItemRowOrder" select="$searchItemRowOrder" />
        <xsl:with-param name="numFound" select="$numFound+1" />
      </xsl:call-template>
    </xsl:when>
    <xsl:otherwise>
      <xsl:value-of select="$numFound"/>
    </xsl:otherwise>
  </xsl:choose>

  </xsl:template>

  <!-- 
  This template gets the task number using the current rowOrder
  it does this by calling a recursive function that selects each set of the same group
  for example if we have groups 1,1,1,2,etc the first recursive call finds that the sequence start with group 1, it then finds the row order where the group changes
  and calls itself with the change row number
  each call increments the numFound counter and this gives us the group number
  -->
    <xsl:template name="GetTaskNumberText">
      <xsl:variable name="thisGroup" select="TaskGroupId" />
      <xsl:variable name="searchItemRowOrder" select="RowOrder" />
      <!-- get the row order of the last item of the previous group -->
      <xsl:variable
name="lastRowOrderOfPreviousGroup"
select="/WorkpackageExport/WorkpackageTasks/WorkpackageTask[ExcludeFromWorkpackage='false' and TaskGroupId!=$thisGroup and RowOrder&lt;$searchItemRowOrder][last()]/RowOrder"
        />
      
      <!-- get the number of items between the last item of the previous group and this item -->
      <xsl:variable
name="taskNumber"
select="count(/WorkpackageExport/WorkpackageTasks/WorkpackageTask[ExcludeFromWorkpackage='false' and TaskGroupId=$thisGroup and RowOrder&lt;=$searchItemRowOrder and (RowOrder&gt;=$lastRowOrderOfPreviousGroup or count($lastRowOrderOfPreviousGroup)=0)])"
        />

      <xsl:variable name="groupNumberText">
        <xsl:call-template name="GetGroupNumberText" />
      </xsl:variable>

      <!-- get the group number and combine -->
      <xsl:value-of select="normalize-space($groupNumberText)" />.<xsl:value-of select="normalize-space($taskNumber)" />.

    </xsl:template>

    <xsl:template name="Signatory">
      <xsl:param name="name" />
<w:tbl>
<w:tblPr>
<w:tblW w:w="5000" w:type="pct"/>
        
<w:tblBorders>
<w:top w:val="single" w:sz="4" wx:bdrwidth="10" w:space="0" w:color="auto"/>
<w:left w:val="single" w:sz="4" wx:bdrwidth="10" w:space="0" w:color="auto"/>
<w:bottom w:val="single" w:sz="4" wx:bdrwidth="10" w:space="0" w:color="auto"/>
<w:right w:val="single" w:sz="4" wx:bdrwidth="10" w:space="0" w:color="auto"/>
<w:insideH w:val="single" w:sz="4" wx:bdrwidth="10" w:space="0" w:color="auto"/>
<w:insideV w:val="single" w:sz="4" wx:bdrwidth="10" w:space="0" w:color="auto"/>
</w:tblBorders>
<w:tblLook w:val="04A0"/>
</w:tblPr>
<w:tblGrid>
<w:gridCol/>
<w:gridCol/>
<w:gridCol/>
<w:gridCol/>
<w:gridCol/>
</w:tblGrid>
  
<w:tr>
<w:tc>
<w:tcPr><w:gridSpan w:val="5"/><w:shd w:val="clear" w:color="auto" w:fill="auto"/>
</w:tcPr>
<w:p>
<w:pPr><w:pStyle w:val="NoSpacing"/><w:rPr><w:b/></w:rPr></w:pPr>
<w:r>
 <w:rPr><w:b/></w:rPr>
 <w:t><xsl:value-of select="$name"/></w:t>
</w:r>
</w:p>
</w:tc>
</w:tr>
  
<w:tr>
<w:tc>
<w:tcPr>
<w:tcW w:w="2977" w:type="dxa"/>
<w:shd w:val="clear" w:color="auto" w:fill="auto"/>
  <w:trHeight w:val="340"/>
</w:tcPr>
<w:p>
<w:pPr><w:pStyle w:val="NoSpacing"/><w:rPr><w:b/></w:rPr></w:pPr>
<w:r>
 <w:rPr><w:b/></w:rPr>
 <w:t>Name</w:t>
</w:r>
</w:p>
</w:tc>
<w:tc>
<w:tcPr><w:tcW w:w="2268" w:type="dxa"/><w:shd w:val="clear" w:color="auto" w:fill="auto"/><w:trHeight w:val="340"/></w:tcPr>
<w:p>
<w:pPr><w:pStyle w:val="NoSpacing"/><w:rPr><w:b/></w:rPr></w:pPr>
<w:r>
 <w:rPr><w:b/></w:rPr>
 <w:t>Position</w:t>
</w:r>
</w:p>
</w:tc>
<w:tc>
<w:tcPr><w:tcW w:w="1843" w:type="dxa"/><w:shd w:val="clear" w:color="auto" w:fill="auto"/><w:trHeight w:val="320"/></w:tcPr>
<w:p>
<w:pPr><w:pStyle w:val="NoSpacing"/><w:rPr><w:b/></w:rPr></w:pPr>
<w:r>
 <w:rPr><w:b/></w:rPr>
 <w:t>Date</w:t>
</w:r>
</w:p>
</w:tc>
<w:tc>
<w:tcPr><w:tcW w:w="3118" w:type="dxa"/><w:shd w:val="clear" w:color="auto" w:fill="auto"/><w:trHeight w:val="320"/></w:tcPr>
<w:p>
<w:pPr><w:pStyle w:val="NoSpacing"/><w:rPr><w:b/></w:rPr></w:pPr>
<w:r>
 <w:rPr><w:b/></w:rPr>
 <w:t>Signature</w:t>
</w:r>
</w:p>
</w:tc>
<w:tc>
<w:tcPr><w:tcW w:w="794" w:type="dxa"/><w:shd w:val="clear" w:color="auto" w:fill="auto"/><w:trHeight w:val="320"/></w:tcPr>
<w:p>
<w:pPr><w:pStyle w:val="NoSpacing"/><w:rPr><w:b/></w:rPr></w:pPr>
<w:r>
 <w:rPr><w:b/></w:rPr>
 <w:t>Approved</w:t>
</w:r>
</w:p>
</w:tc>
</w:tr>
  
<w:tr>
<w:tc><w:tcPr><w:trHeight w:val="320"/></w:tcPr><w:p><w:pPr><w:pStyle w:val="NoSpacing"/></w:pPr></w:p></w:tc>
<w:tc><w:tcPr><w:trHeight w:val="320"/></w:tcPr><w:p><w:pPr><w:pStyle w:val="NoSpacing"/></w:pPr></w:p></w:tc>
<w:tc><w:tcPr><w:trHeight w:val="320"/></w:tcPr><w:p><w:pPr><w:pStyle w:val="NoSpacing"/></w:pPr></w:p></w:tc>
<w:tc><w:tcPr><w:trHeight w:val="320"/></w:tcPr><w:p><w:pPr><w:pStyle w:val="NoSpacing"/></w:pPr></w:p></w:tc>

<w:tc>
<w:p>
<w:pPr><w:pStyle w:val="NoSpacing"/><w:jc w:val="center"/></w:pPr>
<w:r>
  <w:sym w:font="Wingdings" w:char="F071"/>
</w:r>
</w:p>
</w:tc>
</w:tr>
  
</w:tbl>
<w:p>
<w:pPr><w:pStyle w:val="NoSpacing"/></w:pPr>
</w:p>
    </xsl:template>
  
<xsl:template name="crlf-replace"><xsl:param name="subject"/><xsl:variable name="_crlf"><xsl:text>
</xsl:text></xsl:variable><xsl:variable name="crlf" select="string($_crlf)"/><xsl:choose>
<xsl:when test="contains($subject, $crlf)"><xsl:value-of select="substring-before($subject, $crlf)"/><w:br/><xsl:call-template name="crlf-replace"><xsl:with-param name="subject" select="substring-after($subject, $crlf)"/></xsl:call-template></xsl:when>
<xsl:otherwise><xsl:value-of select="$subject"/></xsl:otherwise>
</xsl:choose></xsl:template>

  <xsl:template name="FooterTemplate">
<w:tbl>
<w:tblPr><w:tblW w:w="5000" w:type="pct"/><w:tblLook w:val="04A0"/></w:tblPr>
<w:tr>
  
<w:tc>
<w:tcPr><w:tcW w:w="1500" w:type="dxa"/></w:tcPr>
<w:p>
<w:pPr><w:pStyle w:val="Footer"/></w:pPr>
<w:r><w:t>Page </w:t></w:r>
<w:r><w:fldChar w:fldCharType="begin"/></w:r>
<w:r><w:instrText> PAGE   \* MERGEFORMAT </w:instrText></w:r>
<w:r><w:fldChar w:fldCharType="separate"/></w:r>
<w:r><w:rPr><w:noProof/></w:rPr><w:t>2</w:t></w:r>
<w:r><w:rPr><w:noProof/></w:rPr><w:fldChar w:fldCharType="end"/></w:r>
<w:r><w:t> of </w:t></w:r><w:r><w:fldChar w:fldCharType="begin"/></w:r>
<w:r><w:instrText> NUMPAGES  \# "0"  \* MERGEFORMAT </w:instrText></w:r>
<w:r><w:fldChar w:fldCharType="separate"/></w:r>
<w:r><w:rPr><w:noProof/></w:rPr><w:t>3</w:t></w:r>
<w:r><w:fldChar w:fldCharType="end"/></w:r>
</w:p>
</w:tc>
  
<w:tc>
<w:tcPr><w:tcW w:w="0" w:type="auto"/></w:tcPr>
<w:p>
<w:pPr><w:pStyle w:val="Footer"/><w:jc w:val="center"/></w:pPr>
<w:r>
<w:t><xsl:for-each select="WorkpackageExport/WorkpackageDetails"><xsl:value-of select="Name"/> (<xsl:value-of select="Code"/>_<xsl:value-of select="SequenceNumber"/>)
</xsl:for-each></w:t>
</w:r>
</w:p>
</w:tc>
  
<w:tc>
<w:tcPr><w:tcW w:w="0" w:type="auto"/></w:tcPr>
<w:p>
<w:pPr><w:pStyle w:val="Footer"/><w:jc w:val="right"/></w:pPr>
<w:r>
<w:t><xsl:value-of  select="/WorkpackageExport/WorkpackageDetails/ExportDate"/></w:t>
</w:r>
</w:p>
</w:tc>
  
</w:tr>
</w:tbl>
  </xsl:template>
  
 <!--
 Footer for all task page details
 -->
<xsl:template name="TabledFooter">
<w:tbl>
<w:tblPr>
<w:tblW w:w="5000" w:type="pct"/>

<w:tblBorders>
<w:top w:val="single" w:sz="4" wx:bdrwidth="10" w:space="0" w:color="auto"/>
<w:left w:val="single" w:sz="4" wx:bdrwidth="10" w:space="0" w:color="auto"/>
<w:bottom w:val="single" w:sz="4" wx:bdrwidth="10" w:space="0" w:color="auto"/>
<w:right w:val="single" w:sz="4" wx:bdrwidth="10" w:space="0" w:color="auto"/>
<w:insideH w:val="single" w:sz="4" wx:bdrwidth="10" w:space="0" w:color="auto"/>
<w:insideV w:val="single" w:sz="4" wx:bdrwidth="10" w:space="0" w:color="auto"/>
</w:tblBorders>
<w:tblLook w:val="04A0"/>
</w:tblPr>
<w:tblGrid>
<w:gridCol w:w="2694"/>
<w:gridCol w:w="8646"/>
</w:tblGrid>
<w:tr>
  
<w:tc>
<w:tcPr>
  <w:tcW w:w="1035" w:type="dxa"/>
  <w:shd w:val="clear" w:color="auto" w:fill="auto"/>
</w:tcPr>
<w:p>
<w:pPr>
  <w:pStyle w:val="Footer"/>
  <w:rPr>
  <w:b/>
  </w:rPr>
</w:pPr>
<w:r>
  <w:rPr>
  <w:b/>
  </w:rPr>
  <w:t>Step No.</w:t>
</w:r>
</w:p>
</w:tc>
  
<w:tc>
<w:tcPr>
  <w:shd w:val="clear" w:color="auto" w:fill="auto"/>
</w:tcPr>
<w:p>
<w:pPr>
  <w:pStyle w:val="Footer"/>
  <w:rPr>
  <w:b/>
  </w:rPr>
</w:pPr>
<w:r>
  <w:rPr>
  <w:b/>
  </w:rPr>
  <w:t>Additional Comments - If any Acceptable Limit is defined as &quot;No&quot; Additional Comments must be added</w:t>
</w:r>
</w:p>
</w:tc>
  
</w:tr>
  
  
<w:tr>
<w:tc>
<w:tcPr>
<w:shd w:val="clear" w:color="auto" w:fill="auto"/>
</w:tcPr>
<w:p>
<w:pPr>
<w:pStyle w:val="Footer"/>
</w:pPr>
</w:p>
</w:tc>
<w:tc>
<w:tcPr>
<w:shd w:val="clear" w:color="auto" w:fill="auto"/>
</w:tcPr>
<w:p>
<w:pPr>
<w:pStyle w:val="Footer"/>
</w:pPr>
</w:p>
</w:tc>
</w:tr>
<w:tr>
<w:tc>
<w:tcPr>
<w:shd w:val="clear" w:color="auto" w:fill="auto"/>
</w:tcPr>
<w:p>
<w:pPr>
<w:pStyle w:val="Footer"/>
</w:pPr>
</w:p>
</w:tc>
<w:tc>
<w:tcPr>
<w:shd w:val="clear" w:color="auto" w:fill="auto"/>
</w:tcPr>
<w:p>
<w:pPr>
<w:pStyle w:val="Footer"/>
</w:pPr>
</w:p>
</w:tc>
</w:tr>
<w:tr>
<w:tc>
<w:tcPr>
<w:shd w:val="clear" w:color="auto" w:fill="auto"/>
</w:tcPr>
<w:p>
<w:pPr>
<w:pStyle w:val="Footer"/>
</w:pPr>
</w:p>
</w:tc>
<w:tc>
<w:tcPr>
<w:shd w:val="clear" w:color="auto" w:fill="auto"/>
</w:tcPr>
<w:p>
<w:pPr>
<w:pStyle w:val="Footer"/>
</w:pPr>
</w:p>
</w:tc>
</w:tr>
<w:tr>
<w:tc>
<w:tcPr>
<w:shd w:val="clear" w:color="auto" w:fill="auto"/>
</w:tcPr>
<w:p wsp:rsidP="00943DC5">
<w:pPr>
<w:pStyle w:val="Footer"/>
<w:tabs>
<w:tab w:val="clear" w:pos="9026"/>
<w:tab w:val="right" w:pos="11232"/>
</w:tabs>
</w:pPr>
</w:p>
</w:tc>
<w:tc>
<w:tcPr>
<w:shd w:val="clear" w:color="auto" w:fill="auto"/>
</w:tcPr>
<w:p>
<w:pPr>
<w:pStyle w:val="Footer"/>
</w:pPr>
</w:p>
</w:tc>
</w:tr>
</w:tbl>
<w:p>
<w:pPr>
<w:pStyle w:val="NoSpacing"/>
</w:pPr>
</w:p>
  <xsl:call-template name="FooterTemplate" />
</xsl:template>
  
  <!-- 
This template is used for creating a dynamic 2 column wide grid used to display the 
symbols that have been loaded into the database for the user. It takes as parameters
the collection of symbols from the xml and a starting index.
Note: xsl uses a 1 based index
-->
<xsl:template name="TaskImagesTable">
  <xsl:param name="TaskImages"></xsl:param>
  <xsl:param name="startIndex"></xsl:param>
    <w:tr wsp:rsidR="000079F0" wsp:rsidTr="000079F0">
    <w:tc>
    <w:tcPr>
    <w:tcW w:w="0" w:type="auto"/>
    <w:gridSpan w:val="2"/>
    <w:tcBorders>
    <w:right w:val="nil"/>
    </w:tcBorders>
    <w:shd w:val="clear" w:color="auto" w:fill="auto"/>
    <w:vAlign w:val="center"/>
    </w:tcPr>
    <!--Determine if we have an image to display based on the counts-->
    <xsl:choose>
      <xsl:when test="($startIndex) &lt;= count($TaskImages/TaskImage)">
        <xsl:call-template name="Image">
          <xsl:with-param name="Image" select="$TaskImages/TaskImage[position()=($startIndex)]"></xsl:with-param>
          <xsl:with-param name="prefix" select="Task_Image"></xsl:with-param>
          <xsl:with-param name="width">256</xsl:with-param>
          <xsl:with-param name="height"><xsl:value-of select="$TaskImages/TaskImage[position()=($startIndex)]/Height * (256 div $TaskImages/TaskImage[position()=($startIndex)]/Width)"/></xsl:with-param>
          <xsl:with-param name="image_measurement">px</xsl:with-param>
          <xsl:with-param name="extension" select="jpeg"></xsl:with-param>
          <xsl:with-param name="flag_showname" select="0"></xsl:with-param>
          <xsl:with-param name="Align_Centre" select="1"></xsl:with-param>
        </xsl:call-template>
      </xsl:when>
      <xsl:otherwise>
        <xsl:value-of select ="count($TaskImages/TaskImage)"/>
        <w:p>
        <w:pPr>
        <w:pStyle w:val="NoSpacing"/>
        </w:pPr>
        </w:p>
      </xsl:otherwise>
    </xsl:choose>
    </w:tc>
    <w:tc>
    <w:tcPr>
    <w:tcW w:w="0" w:type="auto"/>
    <w:gridSpan w:val="4"/>
    <w:tcBorders>
    <w:left w:val="nil"/>
    </w:tcBorders>
    <w:shd w:val="clear" w:color="auto" w:fill="auto"/>
    <w:vAlign w:val="center"/>
    </w:tcPr>    
    <xsl:choose>
      <xsl:when test="($startIndex + 1) &lt;= count($TaskImages/TaskImage)">
        <xsl:call-template name="Image">
          <xsl:with-param name="Image" select="$TaskImages/TaskImage[position()=($startIndex + 1)]"></xsl:with-param>
          <xsl:with-param name="prefix" select="Task_Image"></xsl:with-param>
          <xsl:with-param name="width">256</xsl:with-param>
          <xsl:with-param name="height"><xsl:value-of select="$TaskImages/TaskImage[position()=($startIndex + 1)]/Height * (256 div $TaskImages/TaskImage[position()=($startIndex + 1)]/Width)"/></xsl:with-param>
          <xsl:with-param name="image_measurement">px</xsl:with-param>
          <xsl:with-param name="extension" select="jpeg"></xsl:with-param>
          <xsl:with-param name="flag_showname" select="0"></xsl:with-param>
          <xsl:with-param name="Align_Centre" select="1"></xsl:with-param>
        </xsl:call-template>
      </xsl:when>
      <xsl:otherwise>
        <w:p>
        <w:pPr>
        <w:pStyle w:val="NoSpacing"/>
        </w:pPr>
        </w:p>
      </xsl:otherwise>
    </xsl:choose>
    </w:tc>
    </w:tr>

    <!--Determine if we have hit the end and if not recurse through the collection-->
    <xsl:if test ="($startIndex + 2) &lt;= count($TaskImages/TaskImage)">
      <xsl:call-template name="TaskImagesTable">
        <xsl:with-param name="TaskImages" select="$TaskImages"></xsl:with-param>
        <xsl:with-param name="startIndex" select="$startIndex + 2"></xsl:with-param>
      </xsl:call-template>
    </xsl:if>
</xsl:template>

  </xsl:stylesheet>