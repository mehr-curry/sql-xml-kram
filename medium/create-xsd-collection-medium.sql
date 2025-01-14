﻿use Spielplatz

create xml schema collection dbo.medium as 
 N'<xs:schema targetNamespace="http://tempuri.org/medium.xsd"
    elementFormDefault="qualified"
    xmlns="http://tempuri.org/XMLSchema.xsd"
    xmlns:mstns="http://tempuri.org/XMLSchema.xsd"
    xmlns:xs="http://www.w3.org/2001/XMLSchema"
>
  <xs:element name="root">
    <xs:complexType>
      <xs:sequence>
        <xs:element name="layer1" minOccurs="0" maxOccurs="unbounded">
          <xs:complexType>
            <xs:sequence>
              <xs:element name="layer2" minOccurs="0" maxOccurs="unbounded">
                <xs:complexType>
                  <xs:attribute name="id" type="xs:string" />
                  <xs:attribute name="name" type="xs:string" />
                  <xs:attribute name="someFloat" type="xs:float" />
                  <xs:attribute name="someEnum">
                    <xs:simpleType>
                      <xs:restriction base="xs:int">
                        <xs:enumeration id="enum1" value="1" />
                        <xs:enumeration id="enum2" value="2" />
                        <xs:enumeration id="enum3" value="3" />
                      </xs:restriction>
                    </xs:simpleType>
                  </xs:attribute>
                </xs:complexType>
              </xs:element>
            </xs:sequence>
            <xs:attribute name="id" type="xs:string" />
            <xs:attribute name="name" type="xs:string" />
            <xs:attribute name="someFloat" type="xs:float" />
          </xs:complexType>
        </xs:element>
      </xs:sequence>
    </xs:complexType>
  </xs:element>
</xs:schema>'