#version 460

layout(location = 0) out vec2 out_uv;
layout(location = 1) out vec3 out_color;

void main() {
  // const vec3 positions[3] = vec3[3](vec3(1.f, 1.f, 0.0f), vec3(-1.f, 1.f,
  // 0.0f),
  //                                   vec3(0.f, -1.f, 0.0f));
  const vec3 positions[3] =
      vec3[3](vec3(0.25f, 0.25f, 0.0f), vec3(-0.25f, 0.25f, 0.0f),
              vec3(0.f, -0.25f, 0.0f));

  const vec3 colors[3] = vec3[3](vec3(1.0f, 0.0f, 0.0f), // red
                                 vec3(0.0f, 1.0f, 0.0f), // green
                                 vec3(00.f, 0.0f, 1.0f)  // blue
  );

  // output the position of each vertex
  gl_Position = vec4(positions[gl_VertexIndex], 1.0f);
  out_color = colors[gl_VertexIndex];

  // out_uv = vec2((gl_VertexIndex << 1) & 2, gl_VertexIndex & 2);
  // gl_Position = vec4(out_uv * 2.0f + -1.0f, 0.0, 1.0);
}
