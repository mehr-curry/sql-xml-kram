﻿use Spielplatz

 create xml schema collection dbo.simple as 
 N'<xs:schema targetNamespace="http://tempuri.org/simple.xsd"
    elementFormDefault="qualified"
    xmlns="http://tempuri.org/XMLSchema.xsd"
    xmlns:mstns="http://tempuri.org/XMLSchema.xsd"
    xmlns:xs="http://www.w3.org/2001/XMLSchema"
>
  <xs:element name="root">
    <xs:complexType>
      <xs:sequence>
        <xs:element name="layer1">
          <xs:complexType>
            <xs:attribute name="id" type="xs:string" />
          </xs:complexType>
        </xs:element>
      </xs:sequence>
    </xs:complexType>
  </xs:element>
</xs:schema>'