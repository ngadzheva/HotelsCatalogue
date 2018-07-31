<?xml version="1.0"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:fo="http://www.w3.org/1999/XSL/Format">
<xsl:output method="xml" version="1.0" indent="yes"/>
<xsl:template match="/">
	<fo:root>
		<fo:layout-master-set>
			<fo:simple-page-master page-height="297mm" page-width="210mm"
				margin="5mm 25mm 5mm 25mm" master-name="page">
				<fo:region-body margin="20mm 0mm 20mm 0mm"/>
			</fo:simple-page-master>
		</fo:layout-master-set>

<!--===========================HeaderPage===============================-->
		
		<fo:page-sequence master-reference="page">
			<fo:flow flow-name="xsl-region-body">
				<fo:block-container position ="absolute" top="-2.5cm" left = "-2.5cm" >
					<fo:block position ="absolute" text-align ="center" font-weight="bold" margin-left="2cm"
					font-family="Monotype Corsiva" font-size="48pt" padding-before="50mm" color="black" >
						<fo:block margin-bottom="50mm">
							Каталог на хотелите в България
						</fo:block>
						<fo:external-graphic src="url('images/bulgaria.jpg')" margin-left="5cm" margin-bottom="15mm"></fo:external-graphic>
					</fo:block>
				</fo:block-container>
			</fo:flow>
		</fo:page-sequence>
		
<!--===============================AHotels=================================-->
		
		<fo:page-sequence master-reference="page">
			<fo:flow flow-name="xsl-region-body">
				<fo:block-container position ="absolute" top="-2.5cm" left = "-2.5cm">					
					<fo:block position="absolute" text-align = "center" padding-before = "12mm" margin-left="2cm" font-family="Monotype Corsiva" font-size="40pt" color="black">
						<xsl:value-of select="//chain[@chainID='A']/chain_name"/>
					</fo:block>
					
					<fo:block position="absolute" text-align = "center" padding-before = "10mm" margin-left="2cm">
						<xsl:apply-templates select="//chain[@chainID='A']/chain_logo/logo"/>
					</fo:block>
					
					<fo:block position="relative" font-family="Arial" font-weight="bold" font-size="15pt" color="black" 
					padding-before="5mm" margin-left="2cm">
						Описание: 
					</fo:block> 
					
					<fo:block position="relative" font-family="Arial"  font-size="14pt" color="black" start-indent ="5mm" end-indent="5mm" padding-before="0mm" margin-left="2.5cm" text-align = "justify">
						<xsl:value-of select="//chain[@chainID='A']/chain_description"/> 
					</fo:block> 
					
					<fo:block position="relative" font-family="Arial" font-weight="bold" font-size="15pt" color="black" 
					padding-before="5mm" margin-left="2cm">
						Хотели на  <xsl:value-of select="//chain[@chainID='A']/chain_name"/>:
					</fo:block> 
					
					<fo:block position="relative" font-family="Arial" font-size="15pt" color="black" 
					padding-before="5mm" margin-left="2.5cm">
						* Aronia Beach Hotel
					</fo:block>
						
					<fo:block position="relative" font-family="Arial" font-size="15pt" color="black" 
					padding-before="5mm" margin-left="2.5cm">
						* Astera Bansko Hotel &amp; SPA
					</fo:block>	
					
					<fo:block position="relative" font-family="Arial" font-size="15pt" color="black" 
					padding-before="5mm" margin-left="2.5cm">
						* Astera Golden Sands Hotel &amp; SPA
					</fo:block>
						
					<fo:block position="relative" font-family="Arial" font-size="15pt" color="black" 
					padding-before="5mm" margin-left="2.5cm">
						* Atlas Hotel
					</fo:block> 
					
					<fo:block position="relative" font-family="Arial" font-size="15pt" color="black" 
					padding-before="5mm" margin-left="2.5cm">
						* Azalia Hotel &amp; SPA
					</fo:block> 
					
				</fo:block-container>
			</fo:flow>
		</fo:page-sequence>
		
<!--===============================LionHotels=================================-->
		
		<fo:page-sequence master-reference="page">
			<fo:flow flow-name="xsl-region-body">
				<fo:block-container position ="absolute" top="-2.5cm" left = "-2.5cm">					
					<fo:block position="absolute" text-align = "center" padding-before = "12mm" margin-left="2cm" font-family="Monotype Corsiva" font-size="40pt" color="black">
						<xsl:value-of select="//chain[@chainID='Lion']/chain_name"/>
					</fo:block>
					
					<fo:block position="absolute" text-align = "center" padding-before = "10mm" margin-left="2cm">
						<xsl:apply-templates select="//chain[@chainID='Lion']/chain_logo/logo"/>
					</fo:block>
					
					<fo:block position="relative" font-family="Arial" font-weight="bold" font-size="15pt" color="black" 
					padding-before="5mm" margin-left="2cm">
						Описание: 
					</fo:block> 
					
					<fo:block position="relative" font-family="Arial"  font-size="14pt" color="black" start-indent ="5mm" end-indent="5mm" padding-before="0mm" margin-left="2.5cm" text-align = "justify">
						<xsl:value-of select="//chain[@chainID='Lion']/chain_description"/> 
					</fo:block> 
					
					<fo:block position="relative" font-family="Arial" font-weight="bold" font-size="15pt" color="black" 
					padding-before="5mm" margin-left="2cm">
						Хотели на  <xsl:value-of select="//chain[@chainID='Lion']/chain_name"/>:
					</fo:block> 
					
					<fo:block position="relative" font-family="Arial" font-size="15pt" color="black" 
					padding-before="5mm" margin-left="2.5cm">
						* Хотел Лион Банско
					</fo:block>
						
					<fo:block position="relative" font-family="Arial" font-size="15pt" color="black" 
					padding-before="5mm" margin-left="2.5cm">
						* Хотел Лион Боровец
					</fo:block>	
					
					<fo:block position="relative" font-family="Arial" font-size="15pt" color="black" 
					padding-before="5mm" margin-left="2.5cm">
						* Хотел Лион Слънчев бряг
					</fo:block>
						
					<fo:block position="relative" font-family="Arial" font-size="15pt" color="black" 
					padding-before="5mm" margin-left="2.5cm">
						* Хотел Лион София
					</fo:block> 
					
				</fo:block-container>
			</fo:flow>
		</fo:page-sequence>

<!--===========================AroniaBeach===========================-->
		
		<fo:page-sequence master-reference="page">
			<fo:flow flow-name="xsl-region-body">
				<fo:block-container position ="absolute" top="-2.5cm" left = "-2.5cm">
					<fo:block position="absolute" text-align = "center" padding-before = "12mm" margin-left="2cm" font-family="Monotype Corsiva" font-size="40pt" color="black">
						<xsl:value-of select="//hotel[@hotelID='ARONIABeach']/hotel_name"/>
					</fo:block>
					
					<fo:block position="absolute" text-align = "center" padding-before = "10mm" margin-left="2cm">
						<xsl:apply-templates select="//hotel[@hotelID='ARONIABeach']/image/src"/>
					</fo:block>
					
					<fo:block position="relative" font-family="Arial" font-weight="bold" font-size="15pt" color="black" 
					padding-before="10mm" margin-left="2cm">
						Хотелска верига: 
						<fo:inline position="relative" padding-left="5mm" font-weight="normal" font-size="14pt">
							<xsl:value-of select="//chain[@chainID='A']/chain_name"/> 
						</fo:inline>
					</fo:block> 
					
					<fo:block position="relative" font-family="Arial" font-weight="bold" font-size="15pt" color="black" 
					padding-before="5mm" margin-left="2cm">
						Тип хотел: 
						<fo:inline position="relative" padding-left="25mm" font-weight="normal" font-size="14pt">
							<xsl:value-of select="//hotel[@hotelID='ARONIABeach']/hotel_type"/> 
						</fo:inline>
					</fo:block> 
					
					<fo:block position="relative" font-family="Arial" font-weight="bold" font-size="15pt" color="black" 
					padding-before="5mm" margin-left="2cm">
						Категория: 
						<fo:inline position="relative" padding-left="25mm" font-weight="normal" font-size="14pt">
							<xsl:value-of select="//hotel[@hotelID='ARONIABeach']/category"/> 
						</fo:inline>
					</fo:block> 

					<fo:block position="relative" font-family="Arial" font-weight="bold" font-size="15pt" color="black" 
					padding-before="5mm" margin-left="2cm">
						Описание: 
					</fo:block> 
					
					<fo:block position="relative" font-family="Arial"  font-size="14pt" color="black" start-indent ="5mm" end-indent="5mm" padding-before="0mm" margin-left="2.5cm" text-align = "justify">
						<xsl:value-of select="//hotel[@hotelID='ARONIABeach']/description"/> 
					</fo:block> 
					
					<fo:block position="relative" font-family="Arial" font-weight="bold" font-size="15pt" color="black" 
					padding-before="5mm" margin-left="2cm">
						Адрес:
						<fo:inline position="relative" padding-left="10mm" font-weight="normal" font-size="14pt">
							<xsl:value-of select="//hotel[@hotelID='ARONIABeach']/address"/> 
						</fo:inline>
					</fo:block> 
					
					<fo:block position="relative" font-family="Arial" font-weight="bold" font-size="15pt" color="black" 
					padding-before="5mm" margin-left="2cm">
						Телефон:
						<fo:inline position="relative" padding-left="5mm" font-weight="normal" font-size="14pt">
							<xsl:value-of select="//hotel[@hotelID='ARONIABeach']/phone"/> 
						</fo:inline>
					</fo:block> 
					
					<fo:block position="relative" font-family="Arial" font-weight="bold" font-size="15pt" color="black" 
					padding-before="5mm" margin-left="2cm">
						Email:
						<fo:inline position="relative" padding-left="15mm" font-weight="normal" font-size="14pt">
							<xsl:value-of select="//hotel[@hotelID='ARONIABeach']/email"/> 
						</fo:inline>
					</fo:block> 
					
					<fo:block position="relative" font-family="Arial" font-weight="bold" font-size="15pt" color="black" 
					padding-before="5mm" margin-left="2cm">
						Web Site:
						<fo:inline position="relative" padding-left="8mm" font-weight="normal" font-size="14pt">
							<xsl:value-of select="//hotel[@hotelID='ARONIABeach']/site"/> 
						</fo:inline>
					</fo:block> 
				</fo:block-container>
			</fo:flow>
		</fo:page-sequence>
		
<!--===============================AroniaBeachRooms=================================-->
		
		<fo:page-sequence master-reference="page">
			<fo:flow flow-name="xsl-region-body">
				<fo:block-container position ="absolute" top="-2.5cm" left = "-2.5cm">					
					<fo:block position="relative" font-family="Arial" font-weight="bold" font-size="15pt" color="black" 
					padding-before="12mm" margin-left="2cm">
						Стаи: 
					</fo:block> 
					
					<fo:block position="relative" font-family="Arial"  font-size="14pt" color="black" start-indent ="5mm" end-indent="5mm" padding-before="0mm" margin-left="2.5cm" text-align = "justify">
						<xsl:value-of select="//hotel[@hotelID='ARONIABeach']/rooms/rooms_description"/> 
					</fo:block> 
					
					<fo:block position="absolute" text-align = "center" padding-before = "5mm" padding-after = "5mm" margin-left="2cm">
						<xsl:apply-templates select="//hotel[@hotelID='ARONIABeach']/rooms/rooms_images/room_image[@type='1']/image_src"/>
						<fo:inline position="relative" padding-left="0mm">
							<xsl:apply-templates select="//hotel[@hotelID='ARONIABeach']/rooms/rooms_images/room_image[@type='2']/image_src"/>
						</fo:inline>
					</fo:block>
					
					<fo:block position="absolute" font-family="Arial" color="black" padding-before="0mm">
						<xsl:apply-templates select="//hotel[@hotelID='ARONIABeach']/rooms"/>
					</fo:block>
					
				</fo:block-container>
			</fo:flow>
		</fo:page-sequence>

<!--==============================AroniaBeachMoreInfo==============================-->
		
		<fo:page-sequence master-reference="page">
			<fo:flow flow-name="xsl-region-body">
				<fo:block-container position ="absolute" top="-2.5cm" left = "-2.5cm">					
					<fo:block position="relative" font-family="Arial" font-weight="bold" font-size="13pt" color="black" 
					padding-before="12mm" padding-after="5mm" margin-left="2cm">
						Допълнителна полезна информация за <xsl:value-of select="//hotel[@hotelID='ARONIABeach']/hotel_name"/>: 
					</fo:block> 
					
					<fo:block position="relative" font-family="Arial"  font-size="14pt" color="black" start-indent ="5mm" end-indent="5mm" padding-before="0mm" margin-left="2.5cm" text-align = "justify">
						<xsl:apply-templates select="//hotel[@hotelID='ARONIABeach']/more_info"/> 
					</fo:block> 
					
				</fo:block-container>
			</fo:flow>
		</fo:page-sequence>
		
<!--=============================AsteraHotel================================-->
		
		<fo:page-sequence master-reference="page">
			<fo:flow flow-name="xsl-region-body">
				<fo:block-container position ="absolute" top="-2.5cm" left = "-2.5cm">
					<fo:block position="absolute" text-align = "center" padding-before = "12mm" margin-left="2cm" font-family="Monotype Corsiva" font-size="40pt" color="black">
						<xsl:value-of select="//hotel[@hotelID='ASTERABan']/hotel_name"/>
					</fo:block>
					
					<fo:block position="absolute" text-align = "center" padding-before = "10mm" margin-left="2cm">
						<xsl:apply-templates select="//hotel[@hotelID='ASTERABan']/image/src"/>
					</fo:block>
					
					<fo:block position="relative" font-family="Arial" font-weight="bold" font-size="15pt" color="black" 
					padding-before="10mm" margin-left="2cm">
						Хотелска верига: 
						<fo:inline position="relative" padding-left="5mm" font-weight="normal" font-size="14pt">
							<xsl:value-of select="//chain[@chainID='A']/chain_name"/> 
						</fo:inline>
					</fo:block> 
					
					<fo:block position="relative" font-family="Arial" font-weight="bold" font-size="15pt" color="black" 
					padding-before="5mm" margin-left="2cm">
						Тип хотел: 
						<fo:inline position="relative" padding-left="25mm" font-weight="normal" font-size="14pt">
							<xsl:value-of select="//hotel[@hotelID='ASTERABan']/hotel_type"/> 
						</fo:inline>
					</fo:block> 
					
					<fo:block position="relative" font-family="Arial" font-weight="bold" font-size="15pt" color="black" 
					padding-before="5mm" margin-left="2cm">
						Категория: 
						<fo:inline position="relative" padding-left="25mm" font-weight="normal" font-size="14pt">
							<xsl:value-of select="//hotel[@hotelID='ASTERABan']/category"/> 
						</fo:inline>
					</fo:block> 

					<fo:block position="relative" font-family="Arial" font-weight="bold" font-size="15pt" color="black" 
					padding-before="5mm" margin-left="2cm">
						Описание: 
					</fo:block> 
					
					<fo:block position="relative" font-family="Arial"  font-size="14pt" color="black" start-indent ="5mm" end-indent="5mm" padding-before="0mm" margin-left="2.5cm" text-align = "justify">
						<xsl:value-of select="//hotel[@hotelID='ASTERABan']/description"/> 
					</fo:block> 
					
					<fo:block position="relative" font-family="Arial" font-weight="bold" font-size="15pt" color="black" 
					padding-before="5mm" margin-left="2cm">
						Адрес:
						<fo:inline position="relative" padding-left="10mm" font-weight="normal" font-size="14pt">
							<xsl:value-of select="//hotel[@hotelID='ASTERABan']/address"/> 
						</fo:inline>
					</fo:block> 
					
					<fo:block position="relative" font-family="Arial" font-weight="bold" font-size="15pt" color="black" 
					padding-before="5mm" margin-left="2cm">
						Телефон:
						<fo:inline position="relative" padding-left="5mm" font-weight="normal" font-size="14pt">
							<xsl:value-of select="//hotel[@hotelID='ASTERABan']/phone"/> 
						</fo:inline>
					</fo:block> 
					
					<fo:block position="relative" font-family="Arial" font-weight="bold" font-size="15pt" color="black" 
					padding-before="5mm" margin-left="2cm">
						Email:
						<fo:inline position="relative" padding-left="15mm" font-weight="normal" font-size="14pt">
							<xsl:value-of select="//hotel[@hotelID='ASTERABan']/email"/> 
						</fo:inline>
					</fo:block> 
					
					<fo:block position="relative" font-family="Arial" font-weight="bold" font-size="15pt" color="black" 
					padding-before="5mm" margin-left="2cm">
						Web Site:
						<fo:inline position="relative" padding-left="8mm" font-weight="normal" font-size="14pt">
							<xsl:value-of select="//hotel[@hotelID='ASTERABan']/site"/> 
						</fo:inline>
					</fo:block> 
				</fo:block-container>
			</fo:flow>
		</fo:page-sequence>
		
<!--================================AsteraHotelRooms==================================-->
		
		<fo:page-sequence master-reference="page">
			<fo:flow flow-name="xsl-region-body">
				<fo:block-container position ="absolute" top="-2.5cm" left = "-2.5cm">					
					<fo:block position="relative" font-family="Arial" font-weight="bold" font-size="15pt" color="black" 
					padding-before="12mm" margin-left="2cm">
						Стаи: 
					</fo:block> 
					
					<fo:block position="relative" font-family="Arial"  font-size="14pt" color="black" start-indent ="5mm" end-indent="5mm" padding-before="0mm" margin-left="2.5cm" text-align = "justify">
						<xsl:value-of select="//hotel[@hotelID='ASTERABan']/rooms/rooms_description"/> 
					</fo:block> 
					
					<fo:block position="absolute" text-align = "center" padding-before = "5mm" padding-after = "5mm" margin-left="2cm">
						<xsl:apply-templates select="//hotel[@hotelID='ASTERABan']/rooms/rooms_images/room_image[@type='1']/image_src"/>
						<fo:inline position="relative" padding-left="0mm">
							<xsl:apply-templates select="//hotel[@hotelID='ASTERABan']/rooms/rooms_images/room_image[@type='2']/image_src"/>
						</fo:inline>
					</fo:block>
					
					<fo:block position="absolute" font-family="Arial" color="black" padding-before="0mm">
						<xsl:apply-templates select="//hotel[@hotelID='ASTERABan']/rooms"/>
					</fo:block>
					
				</fo:block-container>
			</fo:flow>
		</fo:page-sequence>
		
<!--==============================AsteraHotelMoreInfo==============================-->
		
		<fo:page-sequence master-reference="page">
			<fo:flow flow-name="xsl-region-body">
				<fo:block-container position ="absolute" top="-2.5cm" left = "-2.5cm">					
					<fo:block position="relative" font-family="Arial" font-weight="bold" font-size="13pt" color="black" 
					padding-before="12mm" padding-after="5mm" margin-left="2cm">
						Допълнителна полезна информация за <xsl:value-of select="//hotel[@hotelID='ASTERABan']/hotel_name"/>: 
					</fo:block> 
					
					<fo:block position="relative" font-family="Arial"  font-size="14pt" color="black" start-indent ="5mm" end-indent="5mm" padding-before="0mm" margin-left="2.5cm" text-align = "justify">
						<xsl:apply-templates select="//hotel[@hotelID='ASTERABan']/more_info"/> 
					</fo:block> 
					
				</fo:block-container>
			</fo:flow>
		</fo:page-sequence>
		
<!--==================================AtlasHotel==================================-->
		
		<fo:page-sequence master-reference="page">
			<fo:flow flow-name="xsl-region-body">
				<fo:block-container position ="absolute" top="-2.5cm" left = "-2.5cm">
					<fo:block position="absolute" text-align = "center" padding-before = "12mm" margin-left="2cm" font-family="Monotype Corsiva" font-size="40pt" color="black">
						<xsl:value-of select="//hotel[@hotelID='ATLASGS']/hotel_name"/>
					</fo:block>
					
					<fo:block position="absolute" text-align = "center" padding-before = "10mm" margin-left="2cm">
						<xsl:apply-templates select="//hotel[@hotelID='ATLASGS']/image/src"/>
					</fo:block>
					
					<fo:block position="relative" font-family="Arial" font-weight="bold" font-size="15pt" color="black" 
					padding-before="10mm" margin-left="2cm">
						Хотелска верига: 
						<fo:inline position="relative" padding-left="5mm" font-weight="normal" font-size="14pt">
							<xsl:value-of select="//chain[@chainID='A']/chain_name"/> 
						</fo:inline>
					</fo:block> 
					
					<fo:block position="relative" font-family="Arial" font-weight="bold" font-size="15pt" color="black" 
					padding-before="5mm" margin-left="2cm">
						Тип хотел: 
						<fo:inline position="relative" padding-left="25mm" font-weight="normal" font-size="14pt">
							<xsl:value-of select="//hotel[@hotelID='ATLASGS']/hotel_type"/> 
						</fo:inline>
					</fo:block> 
					
					<fo:block position="relative" font-family="Arial" font-weight="bold" font-size="15pt" color="black" 
					padding-before="5mm" margin-left="2cm">
						Категория: 
						<fo:inline position="relative" padding-left="25mm" font-weight="normal" font-size="14pt">
							<xsl:value-of select="//hotel[@hotelID='ATLASGS']/category"/> 
						</fo:inline>
					</fo:block> 

					<fo:block position="relative" font-family="Arial" font-weight="bold" font-size="15pt" color="black" 
					padding-before="5mm" margin-left="2cm">
						Описание: 
					</fo:block> 
					
					<fo:block position="relative" font-family="Arial"  font-size="14pt" color="black" start-indent ="5mm" end-indent="5mm" padding-before="0mm" margin-left="2.5cm" text-align = "justify">
						<xsl:value-of select="//hotel[@hotelID='ATLASGS']/description"/> 
					</fo:block> 
					
					<fo:block position="relative" font-family="Arial" font-weight="bold" font-size="15pt" color="black" 
					padding-before="5mm" margin-left="2cm">
						Адрес:
						<fo:inline position="relative" padding-left="10mm" font-weight="normal" font-size="14pt">
							<xsl:value-of select="//hotel[@hotelID='ATLASGS']/address"/> 
						</fo:inline>
					</fo:block> 
					
					<fo:block position="relative" font-family="Arial" font-weight="bold" font-size="15pt" color="black" 
					padding-before="5mm" margin-left="2cm">
						Телефон:
						<fo:inline position="relative" padding-left="5mm" font-weight="normal" font-size="14pt">
							<xsl:value-of select="//hotel[@hotelID='ATLASGS']/phone"/> 
						</fo:inline>
					</fo:block> 
					
					<fo:block position="relative" font-family="Arial" font-weight="bold" font-size="15pt" color="black" 
					padding-before="5mm" margin-left="2cm">
						Email:
						<fo:inline position="relative" padding-left="15mm" font-weight="normal" font-size="14pt">
							<xsl:value-of select="//hotel[@hotelID='ATLASGS']/email"/> 
						</fo:inline>
					</fo:block> 
					
					<fo:block position="relative" font-family="Arial" font-weight="bold" font-size="15pt" color="black" 
					padding-before="5mm" margin-left="2cm">
						Web Site:
						<fo:inline position="relative" padding-left="8mm" font-weight="normal" font-size="14pt">
							<xsl:value-of select="//hotel[@hotelID='ATLASGS']/site"/> 
						</fo:inline>
					</fo:block> 
				</fo:block-container>
			</fo:flow>
		</fo:page-sequence>
		
<!--===============================AtlasHotelRooms==============================-->
		
		<fo:page-sequence master-reference="page">
			<fo:flow flow-name="xsl-region-body">
				<fo:block-container position ="absolute" top="-2.5cm" left = "-2.5cm">					
					<fo:block position="relative" font-family="Arial" font-weight="bold" font-size="15pt" color="black" 
					padding-before="12mm" margin-left="2cm">
						Стаи: 
					</fo:block> 
					
					<fo:block position="relative" font-family="Arial"  font-size="14pt" color="black" start-indent ="5mm" end-indent="5mm" padding-before="0mm" margin-left="2.5cm" text-align = "justify">
						<xsl:value-of select="//hotel[@hotelID='ATLASGS']/rooms/rooms_description"/> 
					</fo:block> 
					
					<fo:block position="absolute" text-align = "center" padding-before = "5mm" padding-after = "5mm" margin-left="2cm">
						<xsl:apply-templates select="//hotel[@hotelID='ATLASGS']/rooms/rooms_images/room_image[@type='1']/image_src"/>
						<fo:inline position="relative" padding-left="0mm">
							<xsl:apply-templates select="//hotel[@hotelID='ATLASGS']/rooms/rooms_images/room_image[@type='2']/image_src"/>
						</fo:inline>
					</fo:block>
					
					<fo:block position="absolute" font-family="Arial" color="black" padding-before="0mm">
						<xsl:apply-templates select="//hotel[@hotelID='ATLASGS']/rooms"/>
					</fo:block>
					
				</fo:block-container>
			</fo:flow>
		</fo:page-sequence>

<!--==============================AtlasHotelMoreInfo==============================-->
		
		<fo:page-sequence master-reference="page">
			<fo:flow flow-name="xsl-region-body">
				<fo:block-container position ="absolute" top="-2.5cm" left = "-2.5cm">					
					<fo:block position="relative" font-family="Arial" font-weight="bold" font-size="13pt" color="black" 
					padding-before="12mm" padding-after="5mm" margin-left="2cm">
						Допълнителна полезна информация за <xsl:value-of select="//hotel[@hotelID='ATLASGS']/hotel_name"/>: 
					</fo:block> 
					
					<fo:block position="relative" font-family="Arial"  font-size="14pt" color="black" start-indent ="5mm" end-indent="5mm" padding-before="0mm" margin-left="2.5cm" text-align = "justify">
						<xsl:apply-templates select="//hotel[@hotelID='ATLASGS']/more_info"/> 
					</fo:block> 
					
				</fo:block-container>
			</fo:flow>
		</fo:page-sequence>
		
<!--===========================HotelRestaurantHistory=============================-->
		
		<fo:page-sequence master-reference="page">
			<fo:flow flow-name="xsl-region-body">
				<fo:block-container position ="absolute" top="-2.5cm" left = "-2.5cm">
					<fo:block position="absolute" text-align = "center" padding-before = "12mm" margin-left="2cm" font-family="Monotype Corsiva" font-size="40pt" color="black">
						<xsl:value-of select="//hotel[@hotelID='Hist']/hotel_name"/>
					</fo:block>
					
					<fo:block position="absolute" text-align = "center" padding-before = "10mm" margin-left="2cm">
						<xsl:apply-templates select="//hotel[@hotelID='Hist']/image/src"/>
					</fo:block>
					 
					<fo:block position="relative" font-family="Arial" font-weight="bold" font-size="15pt" color="black" 
					padding-before="5mm" margin-left="2cm">
						Тип хотел: 
						<fo:inline position="relative" padding-left="25mm" font-weight="normal" font-size="14pt">
							<xsl:value-of select="//hotel[@hotelID='Hist']/hotel_type"/> 
						</fo:inline>
					</fo:block> 
					
					<fo:block position="relative" font-family="Arial" font-weight="bold" font-size="15pt" color="black" 
					padding-before="5mm" margin-left="2cm">
						Категория: 
						<fo:inline position="relative" padding-left="25mm" font-weight="normal" font-size="14pt">
							<xsl:value-of select="//hotel[@hotelID='Hist']/category"/> 
						</fo:inline>
					</fo:block> 

					<fo:block position="relative" font-family="Arial" font-weight="bold" font-size="15pt" color="black" 
					padding-before="5mm" margin-left="2cm">
						Описание: 
					</fo:block> 
					
					<fo:block position="relative" font-family="Arial"  font-size="14pt" color="black" start-indent ="5mm" end-indent="5mm" padding-before="0mm" margin-left="2.5cm" text-align = "justify">
						<xsl:value-of select="//hotel[@hotelID='Hist']/description"/> 
					</fo:block> 
					
					<fo:block position="relative" font-family="Arial" font-weight="bold" font-size="15pt" color="black" 
					padding-before="5mm" margin-left="2cm">
						Адрес:
						<fo:inline position="relative" padding-left="10mm" font-weight="normal" font-size="14pt">
							<xsl:value-of select="//hotel[@hotelID='Hist']/address"/> 
						</fo:inline>
					</fo:block> 
					
					<fo:block position="relative" font-family="Arial" font-weight="bold" font-size="15pt" color="black" 
					padding-before="5mm" margin-left="2cm">
						Телефон:
						<fo:inline position="relative" padding-left="5mm" font-weight="normal" font-size="14pt">
							<xsl:value-of select="//hotel[@hotelID='Hist']/phone"/> 
						</fo:inline>
					</fo:block> 
					
					<fo:block position="relative" font-family="Arial" font-weight="bold" font-size="15pt" color="black" 
					padding-before="5mm" margin-left="2cm">
						Email:
						<fo:inline position="relative" padding-left="15mm" font-weight="normal" font-size="14pt">
							<xsl:value-of select="//hotel[@hotelID='Hist']/email"/> 
						</fo:inline>
					</fo:block> 
					
					<fo:block position="relative" font-family="Arial" font-weight="bold" font-size="15pt" color="black" 
					padding-before="5mm" margin-left="2cm">
						Web Site:
						<fo:inline position="relative" padding-left="8mm" font-weight="normal" font-size="14pt">
							-
						</fo:inline>
					</fo:block> 
				</fo:block-container>
			</fo:flow>
		</fo:page-sequence>
		
<!--==============================HotelRestaurantHistoryRooms==============================-->
		
		<fo:page-sequence master-reference="page">
			<fo:flow flow-name="xsl-region-body">
				<fo:block-container position ="absolute" top="-2.5cm" left = "-2.5cm">					
					<fo:block position="relative" font-family="Arial" font-weight="bold" font-size="15pt" color="black" 
					padding-before="12mm" margin-left="2cm">
						Стаи: 
					</fo:block> 
					
					<fo:block position="relative" font-family="Arial"  font-size="14pt" color="black" start-indent ="5mm" end-indent="5mm" padding-before="0mm" margin-left="2.5cm" text-align = "justify">
						<xsl:value-of select="//hotel[@hotelID='Hist']/rooms/rooms_description"/> 
					</fo:block> 
					
					<fo:block position="absolute" text-align = "center" padding-before = "10mm" padding-after = "5mm" margin-left="2cm">
						<xsl:apply-templates select="//hotel[@hotelID='Hist']/rooms/rooms_images/room_image[@type='1']/image_src"/>
						<fo:inline position="relative" padding-left="6mm">
							<xsl:apply-templates select="//hotel[@hotelID='Hist']/rooms/rooms_images/room_image[@type='2']/image_src"/>
						</fo:inline>
					</fo:block>
					
					<fo:block position="absolute" font-family="Arial" color="black" padding-before="0mm">
						<xsl:apply-templates select="//hotel[@hotelID='Hist']/rooms" mode="all"/>
					</fo:block>
					
				</fo:block-container>
			</fo:flow>
		</fo:page-sequence>
		
<!--==============================HotelRestaurantHistoryMoreInfo==============================-->
		
		<fo:page-sequence master-reference="page">
			<fo:flow flow-name="xsl-region-body">
				<fo:block-container position ="absolute" top="-2.5cm" left = "-2.5cm">					
					<fo:block position="relative" font-family="Arial" font-weight="bold" font-size="13pt" color="black" 
					padding-before="12mm" padding-after="5mm" margin-left="2cm">
						Допълнителна полезна информация за <xsl:value-of select="//hotel[@hotelID='Hist']/hotel_name"/>: 
					</fo:block> 
					
					<fo:block position="relative" font-family="Arial"  font-size="14pt" color="black" start-indent ="5mm" end-indent="5mm" padding-before="0mm" margin-left="2.5cm" text-align = "justify">
						<xsl:apply-templates select="//hotel[@hotelID='Hist']/more_info"/> 
					</fo:block> 
					
				</fo:block-container>
			</fo:flow>
		</fo:page-sequence>
		
<!--==============================LionBansko===================================-->
		
		<fo:page-sequence master-reference="page">
			<fo:flow flow-name="xsl-region-body">
				<fo:block-container position ="absolute" top="-2.5cm" left = "-2.5cm">
					<fo:block position="absolute" text-align = "center" padding-before = "12mm" margin-left="2cm" font-family="Monotype Corsiva" font-size="40pt" color="black">
						<xsl:value-of select="//hotel[@hotelID='LionBansko']/hotel_name"/>
					</fo:block>
					
					<fo:block position="absolute" text-align = "center" padding-before = "10mm" margin-left="2cm">
						<xsl:apply-templates select="//hotel[@hotelID='LionBansko']/image/src"/>
					</fo:block>
					
					<fo:block position="relative" font-family="Arial" font-weight="bold" font-size="15pt" color="black" 
					padding-before="10mm" margin-left="2cm">
						Хотелска верига: 
						<fo:inline position="relative" padding-left="5mm" font-weight="normal" font-size="14pt">
							<xsl:value-of select="//chain[@chainID='Lion']/chain_name"/> 
						</fo:inline>
					</fo:block> 
					
					<fo:block position="relative" font-family="Arial" font-weight="bold" font-size="15pt" color="black" 
					padding-before="5mm" margin-left="2cm">
						Тип хотел: 
						<fo:inline position="relative" padding-left="25mm" font-weight="normal" font-size="14pt">
							<xsl:value-of select="//hotel[@hotelID='LionBansko']/hotel_type"/> 
						</fo:inline>
					</fo:block> 
					
					<fo:block position="relative" font-family="Arial" font-weight="bold" font-size="15pt" color="black" 
					padding-before="5mm" margin-left="2cm">
						Категория: 
						<fo:inline position="relative" padding-left="25mm" font-weight="normal" font-size="14pt">
							<xsl:value-of select="//hotel[@hotelID='LionBansko']/category"/> 
						</fo:inline>
					</fo:block> 

					<fo:block position="relative" font-family="Arial" font-weight="bold" font-size="15pt" color="black" 
					padding-before="5mm" margin-left="2cm">
						Описание: 
					</fo:block> 
					
					<fo:block position="relative" font-family="Arial"  font-size="14pt" color="black" start-indent ="5mm" end-indent="5mm" padding-before="0mm" margin-left="2.5cm" text-align = "justify">
						<xsl:value-of select="//hotel[@hotelID='LionBansko']/description"/> 
					</fo:block> 
					
					<fo:block position="relative" font-family="Arial" font-weight="bold" font-size="15pt" color="black" 
					padding-before="5mm" margin-left="2cm">
						Адрес:
						<fo:inline position="relative" padding-left="10mm" font-weight="normal" font-size="14pt">
							<xsl:value-of select="//hotel[@hotelID='LionBansko']/address"/> 
						</fo:inline>
					</fo:block> 
					
					<fo:block position="relative" font-family="Arial" font-weight="bold" font-size="15pt" color="black" 
					padding-before="5mm" margin-left="2cm">
						Телефон:
						<fo:inline position="relative" padding-left="5mm" font-weight="normal" font-size="14pt">
							<xsl:value-of select="//hotel[@hotelID='LionBansko']/phone"/> 
						</fo:inline>
					</fo:block> 
					
					<fo:block position="relative" font-family="Arial" font-weight="bold" font-size="15pt" color="black" 
					padding-before="5mm" margin-left="2cm">
						Email:
						<fo:inline position="relative" padding-left="15mm" font-weight="normal" font-size="14pt">
							<xsl:value-of select="//hotel[@hotelID='LionBansko']/email"/> 
						</fo:inline>
					</fo:block> 
					
					<fo:block position="relative" font-family="Arial" font-weight="bold" font-size="15pt" color="black" 
					padding-before="5mm" margin-left="2cm">
						Web Site:
						<fo:inline position="relative" padding-left="8mm" font-weight="normal" font-size="14pt">
							<xsl:value-of select="//hotel[@hotelID='LionBansko']/site"/> 
						</fo:inline>
					</fo:block> 
				</fo:block-container>
			</fo:flow>
		</fo:page-sequence>
		
<!--===============================LionBanskoRooms=================================-->
		
		<fo:page-sequence master-reference="page">
			<fo:flow flow-name="xsl-region-body">
				<fo:block-container position ="absolute" top="-2.5cm" left = "-2.5cm">					
					<fo:block position="relative" font-family="Arial" font-weight="bold" font-size="15pt" color="black" 
					padding-before="12mm" margin-left="2cm">
						Стаи: 
					</fo:block> 
					
					<fo:block position="relative" font-family="Arial"  font-size="14pt" color="black" start-indent ="5mm" end-indent="5mm" padding-before="0mm" margin-left="2.5cm" text-align = "justify">
						<xsl:value-of select="//hotel[@hotelID='LionBansko']/rooms/rooms_description"/> 
					</fo:block> 
					
					<fo:block position="absolute" text-align = "center" padding-before = "5mm" padding-after = "5mm" margin-left="2cm">
						<xsl:apply-templates select="//hotel[@hotelID='LionBansko']/rooms/rooms_images/room_image[@type='1']/image_src"/>
						<fo:inline position="relative" padding-left="0mm">
							<xsl:apply-templates select="//hotel[@hotelID='LionBansko']/rooms/rooms_images/room_image[@type='2']/image_src"/>
						</fo:inline>
					</fo:block>
					
					<fo:block position="absolute" font-family="Arial" color="black" padding-before="0mm">
						<xsl:apply-templates select="//hotel[@hotelID='LionBansko']/rooms"/>
					</fo:block>
					
				</fo:block-container>
			</fo:flow>
		</fo:page-sequence>
		
<!--==============================LionBanskoMoreInfo==============================-->
		
		<fo:page-sequence master-reference="page">
			<fo:flow flow-name="xsl-region-body">
				<fo:block-container position ="absolute" top="-2.5cm" left = "-2.5cm">					
					<fo:block position="relative" font-family="Arial" font-weight="bold" font-size="13pt" color="black" 
					padding-before="12mm" padding-after="5mm" margin-left="2cm">
						Допълнителна полезна информация за <xsl:value-of select="//hotel[@hotelID='LionBansko']/hotel_name"/>: 
					</fo:block> 
					
					<fo:block position="relative" font-family="Arial"  font-size="14pt" color="black" start-indent ="5mm" end-indent="5mm" padding-before="0mm" margin-left="2.5cm" text-align = "justify">
						<xsl:apply-templates select="//hotel[@hotelID='LionBansko']/more_info"/> 
					</fo:block> 
					
				</fo:block-container>
			</fo:flow>
		</fo:page-sequence>
		
<!--=====================================LionSofia================================-->
		
		<fo:page-sequence master-reference="page">
			<fo:flow flow-name="xsl-region-body">
				<fo:block-container position ="absolute" top="-2.5cm" left = "-2.5cm">
					<fo:block position="absolute" text-align = "center" padding-before = "12mm" margin-left="2cm" font-family="Monotype Corsiva" font-size="40pt" color="black">
						<xsl:value-of select="//hotel[@hotelID='LionSof']/hotel_name"/>
					</fo:block>
					
					<fo:block position="absolute" text-align = "center" padding-before = "10mm" margin-left="2cm">
						<xsl:apply-templates select="//hotel[@hotelID='LionSof']/image/src"/>
					</fo:block>
					
					<fo:block position="relative" font-family="Arial" font-weight="bold" font-size="15pt" color="black" 
					padding-before="10mm" margin-left="2cm">
						Хотелска верига: 
						<fo:inline position="relative" padding-left="5mm" font-weight="normal" font-size="14pt">
							<xsl:value-of select="//chain[@chainID='Lion']/chain_name"/> 
						</fo:inline>
					</fo:block> 
					
					<fo:block position="relative" font-family="Arial" font-weight="bold" font-size="15pt" color="black" 
					padding-before="5mm" margin-left="2cm">
						Тип хотел: 
						<fo:inline position="relative" padding-left="25mm" font-weight="normal" font-size="14pt">
							<xsl:value-of select="//hotel[@hotelID='LionSof']/hotel_type"/> 
						</fo:inline>
					</fo:block> 
					
					<fo:block position="relative" font-family="Arial" font-weight="bold" font-size="15pt" color="black" 
					padding-before="5mm" margin-left="2cm">
						Категория: 
						<fo:inline position="relative" padding-left="25mm" font-weight="normal" font-size="14pt">
							<xsl:value-of select="//hotel[@hotelID='LionSof']/category"/> 
						</fo:inline>
					</fo:block> 

					<fo:block position="relative" font-family="Arial" font-weight="bold" font-size="15pt" color="black" 
					padding-before="5mm" margin-left="2cm">
						Описание: 
					</fo:block> 
					
					<fo:block position="relative" font-family="Arial"  font-size="14pt" color="black" start-indent ="5mm" end-indent="5mm" padding-before="0mm" margin-left="2.5cm" text-align = "justify">
						<xsl:value-of select="//hotel[@hotelID='LionSof']/description"/> 
					</fo:block> 
					
					<fo:block position="relative" font-family="Arial" font-weight="bold" font-size="15pt" color="black" 
					padding-before="5mm" margin-left="2cm">
						Адрес:
						<fo:inline position="relative" padding-left="10mm" font-weight="normal" font-size="14pt">
							<xsl:value-of select="//hotel[@hotelID='LionSof']/address"/> 
						</fo:inline>
					</fo:block> 
					
					<fo:block position="relative" font-family="Arial" font-weight="bold" font-size="15pt" color="black" 
					padding-before="5mm" margin-left="2cm">
						Телефон:
						<fo:inline position="relative" padding-left="5mm" font-weight="normal" font-size="14pt">
							<xsl:value-of select="//hotel[@hotelID='LionSof']/phone"/> 
						</fo:inline>
					</fo:block> 
					
					<fo:block position="relative" font-family="Arial" font-weight="bold" font-size="15pt" color="black" 
					padding-before="5mm" margin-left="2cm">
						Email:
						<fo:inline position="relative" padding-left="15mm" font-weight="normal" font-size="14pt">
							<xsl:value-of select="//hotel[@hotelID='LionSof']/email"/> 
						</fo:inline>
					</fo:block> 
					
					<fo:block position="relative" font-family="Arial" font-weight="bold" font-size="15pt" color="black" 
					padding-before="5mm" margin-left="2cm">
						Web Site:
						<fo:inline position="relative" padding-left="8mm" font-weight="normal" font-size="14pt">
							<xsl:value-of select="//hotel[@hotelID='LionSof']/site"/> 
						</fo:inline>
					</fo:block> 
				</fo:block-container>
			</fo:flow>
		</fo:page-sequence>
		
<!--=====================================LionSofiaRooms==================================-->
		
		<fo:page-sequence master-reference="page">
			<fo:flow flow-name="xsl-region-body">
				<fo:block-container position ="absolute" top="-2.5cm" left = "-2.5cm">					
					<fo:block position="relative" font-family="Arial" font-weight="bold" font-size="15pt" color="black" 
					padding-before="12mm" margin-left="2cm">
						Стаи: 
					</fo:block> 
					
					<fo:block position="relative" font-family="Arial"  font-size="14pt" color="black" start-indent ="5mm" end-indent="5mm" padding-before="0mm" margin-left="2.5cm" text-align = "justify">
						<xsl:value-of select="//hotel[@hotelID='LionSof']/rooms/rooms_description"/> 
					</fo:block> 
					
					<fo:block position="absolute" text-align = "center" padding-before = "5mm" padding-after = "5mm" margin-left="2cm">
						<xsl:apply-templates select="//hotel[@hotelID='LionSof']/rooms/rooms_images/room_image[@type='1']/image_src"/>
						<fo:inline position="relative" padding-left="0mm">
							<xsl:apply-templates select="//hotel[@hotelID='LionSof']/rooms/rooms_images/room_image[@type='2']/image_src"/>
						</fo:inline>
					</fo:block>
					
					<fo:block position="absolute" font-family="Arial" color="black" padding-before="0mm">
						<xsl:apply-templates select="//hotel[@hotelID='LionSof']/rooms" mode="all"/>
					</fo:block>
					
				</fo:block-container>
			</fo:flow>
		</fo:page-sequence>
		
<!--==============================LionSofiaMoreInfo==============================-->
		
		<fo:page-sequence master-reference="page">
			<fo:flow flow-name="xsl-region-body">
				<fo:block-container position ="absolute" top="-2.5cm" left = "-2.5cm">					
					<fo:block position="relative" font-family="Arial" font-weight="bold" font-size="13pt" color="black" 
					padding-before="12mm" padding-after="5mm" margin-left="2cm">
						Допълнителна полезна информация за <xsl:value-of select="//hotel[@hotelID='LionSof']/hotel_name"/>: 
					</fo:block> 
					
					<fo:block position="relative" font-family="Arial"  font-size="14pt" color="black" start-indent ="5mm" end-indent="5mm" padding-before="0mm" margin-left="2.5cm" text-align = "justify">
						<xsl:apply-templates select="//hotel[@hotelID='LionSof']/more_info"/> 
					</fo:block> 
					
				</fo:block-container>
			</fo:flow>
		</fo:page-sequence>

<!--=================================LionSunnyBeach=============================-->
		
		<fo:page-sequence master-reference="page">
			<fo:flow flow-name="xsl-region-body">
				<fo:block-container position ="absolute" top="-2.5cm" left = "-2.5cm">
					<fo:block position="absolute" text-align = "center" padding-before = "12mm" margin-left="2cm" font-family="Monotype Corsiva" font-size="40pt" color="black">
						<xsl:value-of select="//hotel[@hotelID='LionSunnyBeach']/hotel_name"/>
					</fo:block>
					
					<fo:block position="absolute" text-align = "center" padding-before = "10mm" margin-left="2cm">
						<xsl:apply-templates select="//hotel[@hotelID='LionSunnyBeach']/image/src"/>
					</fo:block>
					
					<fo:block position="relative" font-family="Arial" font-weight="bold" font-size="15pt" color="black" 
					padding-before="10mm" margin-left="2cm">
						Хотелска верига: 
						<fo:inline position="relative" padding-left="5mm" font-weight="normal" font-size="14pt">
							<xsl:value-of select="//chain[@chainID='Lion']/chain_name"/> 
						</fo:inline>
					</fo:block> 
					
					<fo:block position="relative" font-family="Arial" font-weight="bold" font-size="15pt" color="black" 
					padding-before="5mm" margin-left="2cm">
						Тип хотел: 
						<fo:inline position="relative" padding-left="25mm" font-weight="normal" font-size="14pt">
							<xsl:value-of select="//hotel[@hotelID='LionSunnyBeach']/hotel_type"/> 
						</fo:inline>
					</fo:block> 
					
					<fo:block position="relative" font-family="Arial" font-weight="bold" font-size="15pt" color="black" 
					padding-before="5mm" margin-left="2cm">
						Категория: 
						<fo:inline position="relative" padding-left="25mm" font-weight="normal" font-size="14pt">
							<xsl:value-of select="//hotel[@hotelID='LionSunnyBeach']/category"/> 
						</fo:inline>
					</fo:block> 

					<fo:block position="relative" font-family="Arial" font-weight="bold" font-size="15pt" color="black" 
					padding-before="5mm" margin-left="2cm">
						Описание: 
					</fo:block> 
					
					<fo:block position="relative" font-family="Arial"  font-size="14pt" color="black" start-indent ="5mm" end-indent="5mm" padding-before="0mm" margin-left="2.5cm" text-align = "justify">
						<xsl:value-of select="//hotel[@hotelID='LionSunnyBeach']/description"/> 
					</fo:block> 
					
					<fo:block position="relative" font-family="Arial" font-weight="bold" font-size="15pt" color="black" 
					padding-before="5mm" margin-left="2cm">
						Адрес:
						<fo:inline position="relative" padding-left="10mm" font-weight="normal" font-size="14pt">
							<xsl:value-of select="//hotel[@hotelID='LionSunnyBeach']/address"/> 
						</fo:inline>
					</fo:block> 
					
					<fo:block position="relative" font-family="Arial" font-weight="bold" font-size="15pt" color="black" 
					padding-before="5mm" margin-left="2cm">
						Телефон:
						<fo:inline position="relative" padding-left="5mm" font-weight="normal" font-size="14pt">
							<xsl:value-of select="//hotel[@hotelID='LionSunnyBeach']/phone"/> 
						</fo:inline>
					</fo:block> 
					
					<fo:block position="relative" font-family="Arial" font-weight="bold" font-size="15pt" color="black" 
					padding-before="5mm" margin-left="2cm">
						Email:
						<fo:inline position="relative" padding-left="15mm" font-weight="normal" font-size="14pt">
							<xsl:value-of select="//hotel[@hotelID='LionSunnyBeach']/email"/> 
						</fo:inline>
					</fo:block> 
					
					<fo:block position="relative" font-family="Arial" font-weight="bold" font-size="15pt" color="black" 
					padding-before="5mm" margin-left="2cm">
						Web Site:
						<fo:inline position="relative" padding-left="8mm" font-weight="normal" font-size="14pt">
							<xsl:value-of select="//hotel[@hotelID='LionSunnyBeach']/site"/> 
						</fo:inline>
					</fo:block> 
				</fo:block-container>
			</fo:flow>
		</fo:page-sequence>
		
<!--============================LionSunnyBeachRooms==============================-->
		
		<fo:page-sequence master-reference="page">
			<fo:flow flow-name="xsl-region-body">
				<fo:block-container position ="absolute" top="-2.5cm" left = "-2.5cm">					
					<fo:block position="relative" font-family="Arial" font-weight="bold" font-size="15pt" color="black" 
					padding-before="12mm" margin-left="2cm">
						Стаи: 
					</fo:block> 
					
					<fo:block position="relative" font-family="Arial"  font-size="14pt" color="black" start-indent ="5mm" end-indent="5mm" padding-before="0mm" margin-left="2.5cm" text-align = "justify">
						<xsl:value-of select="//hotel[@hotelID='LionSunnyBeach']/rooms/rooms_description"/> 
					</fo:block> 
					
					<fo:block position="absolute" text-align = "center" padding-before = "5mm" padding-after = "5mm" margin-left="2cm">
						<xsl:apply-templates select="//hotel[@hotelID='LionSunnyBeach']/rooms/rooms_images/room_image[@type='1']/image_src"/>
						<fo:inline position="relative" padding-left="0mm">
							<xsl:apply-templates select="//hotel[@hotelID='LionSunnyBeach']/rooms/rooms_images/room_image[@type='2']/image_src"/>
						</fo:inline>
					</fo:block>
					
					<fo:block position="absolute" font-family="Arial" color="black" padding-before="0mm">
						<xsl:apply-templates select="//hotel[@hotelID='LionSunnyBeach']/rooms"/>
					</fo:block>
					
				</fo:block-container>
			</fo:flow>
		</fo:page-sequence>
		
<!--==============================LionSunnyBeachMoreInfo==============================-->
		
		<fo:page-sequence master-reference="page">
			<fo:flow flow-name="xsl-region-body">
				<fo:block-container position ="absolute" top="-2.5cm" left = "-2.5cm">					
					<fo:block position="relative" font-family="Arial" font-weight="bold" font-size="13pt" color="black" 
					padding-before="12mm" padding-after="5mm" margin-left="2cm">
						Допълнителна полезна информация за <xsl:value-of select="//hotel[@hotelID='LionSunnyBeach']/hotel_name"/>: 
					</fo:block> 
					
					<fo:block position="relative" font-family="Arial"  font-size="14pt" color="black" start-indent ="5mm" end-indent="5mm" padding-before="0mm" margin-left="2.5cm" text-align = "justify">
						<xsl:apply-templates select="//hotel[@hotelID='LionSunnyBeach']/more_info"/> 
					</fo:block> 
					
				</fo:block-container>
			</fo:flow>
		</fo:page-sequence>

		
<!--=================================RostovHotel===============================-->
		
		<fo:page-sequence master-reference="page">
			<fo:flow flow-name="xsl-region-body">
				<fo:block-container position ="absolute" top="-2.5cm" left = "-2.5cm">
					<fo:block position="absolute" text-align = "center" padding-before = "12mm" margin-left="2cm" font-family="Monotype Corsiva" font-size="40pt" color="black">
						<xsl:value-of select="//hotel[@hotelID='ROSTOVPle']/hotel_name"/>
					</fo:block>
					
					<fo:block position="absolute" text-align = "center" padding-before = "10mm" margin-left="2cm">
						<xsl:apply-templates select="//hotel[@hotelID='ROSTOVPle']/image/src"/>
					</fo:block>
					
					<fo:block position="relative" font-family="Arial" font-weight="bold" font-size="15pt" color="black" 
					padding-before="5mm" margin-left="2cm">
						Тип хотел: 
						<fo:inline position="relative" padding-left="25mm" font-weight="normal" font-size="14pt">
							<xsl:value-of select="//hotel[@hotelID='ROSTOVPle']/hotel_type"/> 
						</fo:inline>
					</fo:block> 
					
					<fo:block position="relative" font-family="Arial" font-weight="bold" font-size="15pt" color="black" 
					padding-before="5mm" margin-left="2cm">
						Категория: 
						<fo:inline position="relative" padding-left="25mm" font-weight="normal" font-size="14pt">
							<xsl:value-of select="//hotel[@hotelID='ROSTOVPle']/category"/> 
						</fo:inline>
					</fo:block> 

					<fo:block position="relative" font-family="Arial" font-weight="bold" font-size="15pt" color="black" 
					padding-before="5mm" margin-left="2cm">
						Описание: 
					</fo:block> 
					
					<fo:block position="relative" font-family="Arial"  font-size="14pt" color="black" start-indent ="5mm" end-indent="5mm" padding-before="0mm" margin-left="2.5cm" text-align = "justify">
						<xsl:value-of select="//hotel[@hotelID='ROSTOVPle']/description"/> 
					</fo:block> 
					
					<fo:block position="relative" font-family="Arial" font-weight="bold" font-size="15pt" color="black" 
					padding-before="5mm" margin-left="2cm">
						Адрес:
						<fo:inline position="relative" padding-left="10mm" font-weight="normal" font-size="14pt">
							<xsl:value-of select="//hotel[@hotelID='ROSTOVPle']/address"/> 
						</fo:inline>
					</fo:block> 
					
					<fo:block position="relative" font-family="Arial" font-weight="bold" font-size="15pt" color="black" 
					padding-before="5mm" margin-left="2cm">
						Телефон:
						<fo:inline position="relative" padding-left="5mm" font-weight="normal" font-size="14pt">
							<xsl:value-of select="//hotel[@hotelID='ROSTOVPle']/phone"/> 
						</fo:inline>
					</fo:block> 
					
					<fo:block position="relative" font-family="Arial" font-weight="bold" font-size="15pt" color="black" 
					padding-before="5mm" margin-left="2cm">
						Email:
						<fo:inline position="relative" padding-left="15mm" font-weight="normal" font-size="14pt">
							<xsl:value-of select="//hotel[@hotelID='ROSTOVPle']/email"/> 
						</fo:inline>
					</fo:block> 
					
					<fo:block position="relative" font-family="Arial" font-weight="bold" font-size="15pt" color="black" 
					padding-before="5mm" margin-left="2cm">
						Web Site:
						<fo:inline position="relative" padding-left="8mm" font-weight="normal" font-size="14pt">
							<xsl:value-of select="//hotel[@hotelID='ROSTOVPle']/site"/> 
						</fo:inline>
					</fo:block> 
				</fo:block-container>
			</fo:flow>
		</fo:page-sequence>
		
<!--==============================RostovHotelRooms================================-->
		
		<fo:page-sequence master-reference="page">
			<fo:flow flow-name="xsl-region-body">
				<fo:block-container position ="absolute" top="-2.5cm" left = "-2.5cm">					
					<fo:block position="relative" font-family="Arial" font-weight="bold" font-size="15pt" color="black" 
					padding-before="12mm" margin-left="2cm">
						Стаи: 
					</fo:block> 
					
					<fo:block position="relative" font-family="Arial"  font-size="14pt" color="black" start-indent ="5mm" end-indent="5mm" padding-before="0mm" margin-left="2.5cm" text-align = "justify">
						<xsl:value-of select="//hotel[@hotelID='ROSTOVPle']/rooms/rooms_description"/> 
					</fo:block> 
					
					<fo:block position="absolute" text-align = "center" padding-before = "5mm" padding-after = "5mm" margin-left="2cm">
						<xsl:apply-templates select="//hotel[@hotelID='ROSTOVPle']/rooms/rooms_images/room_image[@type='1']/image_src"/>
						<fo:inline position="relative" padding-left="0mm">
							<xsl:apply-templates select="//hotel[@hotelID='ROSTOVPle']/rooms/rooms_images/room_image[@type='2']/image_src"/>
						</fo:inline>
					</fo:block>
					
					<fo:block position="absolute" font-family="Arial" color="black" padding-before="0mm">
						
						<xsl:apply-templates select="//hotel[@hotelID='ROSTOVPle']/rooms" mode="all"/>
						
					</fo:block>
					
				</fo:block-container>
			</fo:flow>
		</fo:page-sequence>
		
<!--==============================RostovHotelMoreInfo==============================-->
		
		<fo:page-sequence master-reference="page">
			<fo:flow flow-name="xsl-region-body">
				<fo:block-container position ="absolute" top="-2.5cm" left = "-2.5cm">					
					<fo:block position="relative" font-family="Arial" font-weight="bold" font-size="13pt" color="black" 
					padding-before="12mm" padding-after="5mm" margin-left="2cm">
						Допълнителна полезна информация за <xsl:value-of select="//hotel[@hotelID='ROSTOVPle']/hotel_name"/>: 
					</fo:block> 
					
					<fo:block position="relative" font-family="Arial"  font-size="14pt" color="black" start-indent ="5mm" end-indent="5mm" padding-before="0mm" margin-left="2.5cm" text-align = "justify">
						<xsl:apply-templates select="//hotel[@hotelID='ROSTOVPle']/more_info"/> 
					</fo:block> 
					
				</fo:block-container>
			</fo:flow>
		</fo:page-sequence>
		
	</fo:root>
</xsl:template>

<!--===============================LogoTemplate===========================-->

<xsl:template match="logo">
	<fo:external-graphic src="{unparsed-entity-uri(@href)}" content-height="250" content-width="350"/>
</xsl:template>

<!--===============================HotelPhotoTemplate===========================-->

<xsl:template match="src">
	<fo:external-graphic src="{unparsed-entity-uri(@href)}" content-height="250" content-width="350"/>
</xsl:template>

<!--===============================RoomsPhotoTemplate===========================-->

<xsl:template match="image_src">
	<fo:external-graphic src="{unparsed-entity-uri(@href)}" content-height="150" content-width="250"/>
</xsl:template>

<!--================================TableTemplate===========================-->

<xsl:template match="rooms">
  <fo:table margin-left="2cm" height="200px" width="500px">
	<fo:table-header>
		<fo:table-row>
			<fo:table-cell border="solid" padding-right="20mm" font-weight="bold" text-align="center">
				<fo:block>Тип стая</fo:block>
			</fo:table-cell>
			<fo:table-cell border="solid" padding-right="30mm" font-weight="bold" text-align="center">
				<fo:block>Нисък сезон</fo:block>
			</fo:table-cell>
			<fo:table-cell border="solid" padding-right="30mm" font-weight="bold" text-align="center">
				<fo:block>Междинен сезон 1</fo:block>
			</fo:table-cell>
			<fo:table-cell border="solid" padding-right="30mm" font-weight="bold" text-align="center">
				<fo:block>Междинен сезон 2</fo:block>
			</fo:table-cell>
			<fo:table-cell border="solid" padding-right="30mm" font-weight="bold" text-align="center">
				<fo:block>Висок сезон</fo:block>
			</fo:table-cell>
		</fo:table-row>
	</fo:table-header>
    <fo:table-body>
		<xsl:for-each select="./room">
		<fo:table-row>
			<fo:table-cell border="solid" padding-right="30mm" padding-before="5mm" padding-after="5mm">
				<fo:block font-weight="bold" text-align="center">
					<xsl:value-of select="./type"/>
				</fo:block>
			</fo:table-cell>
			<fo:table-cell border="solid" padding-right="30mm" padding-before="5mm" padding-after="5mm">
				<fo:block text-align="center">
					<xsl:value-of select=".//low"/>
				</fo:block>
			</fo:table-cell>
			<fo:table-cell border="solid" padding-right="30mm" padding-before="5mm" padding-after="5mm">
				<fo:block text-align="center">
					<xsl:value-of select=".//medium[@type='1']"/>
				</fo:block>
			</fo:table-cell>
			<fo:table-cell border="solid" padding-right="30mm" padding-before="5mm" padding-after="5mm">
				<fo:block text-align="center">
					<xsl:choose>
						<xsl:when test="count(.//medium[@type='2']) = 1">
							<xsl:value-of select=".//medium[@type='2']"/>
						</xsl:when>
						<xsl:otherwise>
							-
						</xsl:otherwise>
					</xsl:choose>
					
				</fo:block>
			</fo:table-cell>
			<fo:table-cell border="solid" padding-right="30mm" padding-before="5mm" padding-after="5mm">
				<fo:block text-align="center">
					<xsl:value-of select=".//high"/>
				</fo:block>
			</fo:table-cell>
		</fo:table-row>
		</xsl:for-each>
    </fo:table-body>
  </fo:table>
</xsl:template>

<!--============================TableTemplate===============================-->

<xsl:template match="rooms" mode="all">
  <fo:table margin-left="2cm" height="200px" width="500px">
	<fo:table-header>
		<fo:table-row>
			<fo:table-cell border="solid" padding-right="20mm" font-weight="bold" text-align="center">
				<fo:block>Тип стая</fo:block>
			</fo:table-cell>
			<fo:table-cell border="solid" padding-right="30mm" font-weight="bold" text-align="center">
				<fo:block>Цена</fo:block>
			</fo:table-cell>
		</fo:table-row>
	</fo:table-header>
    <fo:table-body>
		<xsl:for-each select="./room">
		<fo:table-row>
			<fo:table-cell border="solid" padding-right="30mm" padding-before="5mm" padding-after="5mm">
				<fo:block font-weight="bold" text-align="center">
					<xsl:value-of select="./type"/>
				</fo:block>
			</fo:table-cell>
			<fo:table-cell border="solid" padding-right="30mm" padding-before="5mm" padding-after="5mm">
				<fo:block text-align="center">
					<xsl:value-of select=".//all"/>
				</fo:block>
			</fo:table-cell>
		</fo:table-row>
		</xsl:for-each>
    </fo:table-body>
  </fo:table>
</xsl:template>

<!--===================MoreInfoTemplate==============================-->

<xsl:template match="more_info">
	<xsl:for-each select="./service">
		<fo:block position="relative" font-family="Arial"  font-size="12pt" color="black" start-indent ="5mm" end-indent="5mm" padding-before="0mm"  font-weight="bold" margin-left="0.2cm">
			<xsl:value-of select="text()"/>
		</fo:block>
		
		<xsl:for-each select="./characteristic">
			<xsl:choose>
				<xsl:when test="count(@type) = 1">
					<xsl:choose>
						<xsl:when test="@type = 'free'">
							<fo:block position="relative" font-family="Arial"  font-size="10pt" color="green" start-indent ="5mm" end-indent="5mm" padding-before="0mm" margin-left="0.5cm">
								*<xsl:value-of select="text()"/>
							</fo:block>
						</xsl:when>
						<xsl:otherwise>
							<fo:block position="relative" font-family="Arial"  font-size="10pt" color="red" start-indent ="5mm" end-indent="5mm" padding-before="0mm" margin-left="0.5cm">
								*<xsl:value-of select="text()"/>
							</fo:block>
						</xsl:otherwise>
					</xsl:choose>
					
				</xsl:when>
				<xsl:otherwise>
					<fo:block position="relative" font-family="Arial"  font-size="10pt" color="black" start-indent ="5mm" end-indent="5mm" padding-before="0mm" margin-left="0.5cm">
						*<xsl:value-of select="text()"/>
					</fo:block>
				</xsl:otherwise>
			</xsl:choose>
		</xsl:for-each>
	</xsl:for-each>
</xsl:template>

</xsl:stylesheet>