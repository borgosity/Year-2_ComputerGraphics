#version 330 core
layout (location = 0) in vec3 position;
layout (location = 1) in vec3 normal;
layout (location = 2) in vec2 texCoord;

out VS_OUT{
	vec3 Position;
	vec3 Normal;
	vec2 TexCoord;
} vs_out;

uniform mat4 model;
uniform mat4 view;
uniform mat4 projection;

void main()
{
    //gl_Position = vec4(position.x, position.y, 0.0f, 1.0f); 
    vs_out.TexCoord = texCoord;

	gl_Position = projection * view * model * vec4(position, 1.0f);
    //vs_out.Normal = mat3(transpose(inverse(model))) * normal;
    //vs_out.Position = vec3(model * vec4(position, 1.0f));
}
