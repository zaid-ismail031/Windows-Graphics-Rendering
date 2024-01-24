@echo off
mkdir build
pushd build
cl -Zi /std:c++20 /I"../linking/includes" /EHsc ../source/main.cpp ../source/glad.c ../source/shaders.cpp ../source/text.cpp ../source/textures.cpp ../source/globjectloader.cpp user32.lib gdi32.lib opengl32.lib ../linking/libs/freetype/freetype.lib
popd