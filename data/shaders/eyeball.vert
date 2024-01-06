#version 330 core

// Input vertex data.
layout(location = 0) in vec3 aPos;

uniform mat4 model;
uniform mat4 view;
uniform mat4 projection;

void main(){
    // Calculate the ModelViewProjection Matrix
    mat4 MVP = projection * view * model; 

    // Transform the vertex into clipping space
    gl_Position =  MVP * vec4(aPos, 1);
}