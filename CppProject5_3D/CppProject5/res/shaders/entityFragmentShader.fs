#version 330 core

in vec2 passTextureCoords;
// normals / lights
in vec3 passSurfaceNormal;
in vec3 passLightVector;

out vec4 outColor;

uniform sampler2D modelTexture;
uniform vec3 lightColor;

void main(){

    vec3 normalizedNormal = normalize(passSurfaceNormal);
    vec3 normalizedLightVector = normalize(passLightVector);

    float lightDotProduct = dot(normalizedNormal, normalizedLightVector); // - dot

    float lightBrightness = max(lightDotProduct, 0.1f);
    vec3 lightDiffusion = lightBrightness * lightColor;

    outColor = vec4(lightDiffusion, 1.0) * texture(modelTexture, passTextureCoords);
}
