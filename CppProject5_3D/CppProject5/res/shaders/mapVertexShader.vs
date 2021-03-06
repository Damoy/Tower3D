#version 330 core

layout (location = 0) in vec3 position;
layout (location = 1) in vec2 textureCoords;
layout (location = 2) in vec3 normal;

out vec2 passTextureCoords;
out vec3 passSurfaceNormal;
out vec3 passLightVector;


uniform mat4 transformationMatrix;
// NEW 11 11 17 23H11
uniform mat4 projectionMatrix;
// NEW 12 11 17 11h34
uniform mat4 viewMatrix;
uniform vec3 lightPosition;

void main(){

	vec4 worldPosition = transformationMatrix * vec4(position, 1.0);
    gl_Position = projectionMatrix * viewMatrix * worldPosition;

	// (textureCoords * value) to avoid the map texture to be stretched over the whole terrain,
	// increasing the texture coordinates makes openGL reset the textureCoordinates to 0
	passTextureCoords = textureCoords * 30.0;

	// xyz to get only 3 first components of the vec4
	passSurfaceNormal = (transformationMatrix * vec4(normal, 0.0)).xyz;
	passLightVector = lightPosition - worldPosition.xyz;

}