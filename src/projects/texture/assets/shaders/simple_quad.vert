#version 440 core

out VS_OUT
{
    vec2 uv;
} vs_out;

void main()
{
  const vec2[4] positions = {{-0.5, -0.5},
                             {0.5, -0.5},
                             {-0.5, 0.5},
                             {0.5, 0.5}};

  vec2 position = positions[gl_VertexID].xy;
  vs_out.uv = position + 0.5;

  gl_Position = vec4(position, 0.0, 1.0);
}
