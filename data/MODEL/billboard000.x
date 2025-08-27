xof 0302txt 0064
template Header {
 <3D82AB43-62DA-11cf-AB39-0020AF71E433>
 WORD major;
 WORD minor;
 DWORD flags;
}

template Vector {
 <3D82AB5E-62DA-11cf-AB39-0020AF71E433>
 FLOAT x;
 FLOAT y;
 FLOAT z;
}

template Coords2d {
 <F6F23F44-7686-11cf-8F52-0040333594A3>
 FLOAT u;
 FLOAT v;
}

template Matrix4x4 {
 <F6F23F45-7686-11cf-8F52-0040333594A3>
 array FLOAT matrix[16];
}

template ColorRGBA {
 <35FF44E0-6C7C-11cf-8F52-0040333594A3>
 FLOAT red;
 FLOAT green;
 FLOAT blue;
 FLOAT alpha;
}

template ColorRGB {
 <D3E16E81-7835-11cf-8F52-0040333594A3>
 FLOAT red;
 FLOAT green;
 FLOAT blue;
}

template IndexedColor {
 <1630B820-7842-11cf-8F52-0040333594A3>
 DWORD index;
 ColorRGBA indexColor;
}

template Boolean {
 <4885AE61-78E8-11cf-8F52-0040333594A3>
 WORD truefalse;
}

template Boolean2d {
 <4885AE63-78E8-11cf-8F52-0040333594A3>
 Boolean u;
 Boolean v;
}

template MaterialWrap {
 <4885AE60-78E8-11cf-8F52-0040333594A3>
 Boolean u;
 Boolean v;
}

template TextureFilename {
 <A42790E1-7810-11cf-8F52-0040333594A3>
 STRING filename;
}

template Material {
 <3D82AB4D-62DA-11cf-AB39-0020AF71E433>
 ColorRGBA faceColor;
 FLOAT power;
 ColorRGB specularColor;
 ColorRGB emissiveColor;
 [...]
}

template MeshFace {
 <3D82AB5F-62DA-11cf-AB39-0020AF71E433>
 DWORD nFaceVertexIndices;
 array DWORD faceVertexIndices[nFaceVertexIndices];
}

template MeshFaceWraps {
 <4885AE62-78E8-11cf-8F52-0040333594A3>
 DWORD nFaceWrapValues;
 Boolean2d faceWrapValues;
}

template MeshTextureCoords {
 <F6F23F40-7686-11cf-8F52-0040333594A3>
 DWORD nTextureCoords;
 array Coords2d textureCoords[nTextureCoords];
}

template MeshMaterialList {
 <F6F23F42-7686-11cf-8F52-0040333594A3>
 DWORD nMaterials;
 DWORD nFaceIndexes;
 array DWORD faceIndexes[nFaceIndexes];
 [Material]
}

template MeshNormals {
 <F6F23F43-7686-11cf-8F52-0040333594A3>
 DWORD nNormals;
 array Vector normals[nNormals];
 DWORD nFaceNormals;
 array MeshFace faceNormals[nFaceNormals];
}

template MeshVertexColors {
 <1630B821-7842-11cf-8F52-0040333594A3>
 DWORD nVertexColors;
 array IndexedColor vertexColors[nVertexColors];
}

template Mesh {
 <3D82AB44-62DA-11cf-AB39-0020AF71E433>
 DWORD nVertices;
 array Vector vertices[nVertices];
 DWORD nFaces;
 array MeshFace faces[nFaces];
 [...]
}

Header{
1;
0;
1;
}

Mesh {
 12;
 -73.75000;84.37500;20.00000;,
 -55.25000;84.37500;10.00000;,
 -55.25000;-16.87500;10.00000;,
 -73.75000;-16.87500;20.00000;,
 -21.75000;84.37500;0.00000;,
 -21.75000;-16.87500;0.00000;,
 21.75000;84.37500;0.00000;,
 21.75000;-16.87500;-0.00000;,
 55.25000;84.37500;10.00000;,
 55.25000;-16.87500;10.00000;,
 73.75000;84.37500;25.00000;,
 73.75000;-16.87500;25.00000;;
 
 5;
 4;0,1,2,3;,
 4;1,4,5,2;,
 4;4,6,7,5;,
 4;6,8,9,7;,
 4;8,10,11,9;;
 
 MeshMaterialList {
  1;
  5;
  0,
  0,
  0,
  0,
  0;;
  Material {
   1.000000;1.000000;1.000000;1.000000;;
   100.000000;
   1.000000;1.000000;1.000000;;
   0.750000;0.750000;0.750000;;
   TextureFilename {
    "data\\TEXTURE\\screen000.png";
   }
  }
 }
 MeshNormals {
  6;
  -0.475517;0.000000;-0.879707;,
  -0.382794;0.000000;-0.923833;,
  -0.144535;0.000000;-0.989500;,
  0.144535;0.000000;-0.989500;,
  0.466821;0.000000;-0.884352;,
  0.629802;0.000000;-0.776756;;
  5;
  4;0,1,1,0;,
  4;1,2,2,1;,
  4;2,3,3,2;,
  4;3,4,4,3;,
  4;4,5,5,4;;
 }
 MeshTextureCoords {
  12;
  0.000000;0.000000;,
  0.200000;0.000000;,
  0.200000;1.000000;,
  0.000000;1.000000;,
  0.400000;0.000000;,
  0.400000;1.000000;,
  0.600000;0.000000;,
  0.600000;1.000000;,
  0.800000;0.000000;,
  0.800000;1.000000;,
  1.000000;0.000000;,
  1.000000;1.000000;;
 }
}
