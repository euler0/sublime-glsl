// SYNTAX TEST "Packages/sublime-glsl/GLSL.sublime-syntax"
// <- comment.line.double-slash.glsl punctuation.definition.comment
//^ comment.line.double-slash
//                                              ^ comment.line.double-slash

#version 420 core
//<- meta.preprocessor.macro keyword.control.import.version
//^^^^^^ meta.preprocessor.macro keyword.control.import.version
#error some error message
// <- meta.preprocessor.diagnostic keyword.control.import.error
//     ^ meta.preprocessor.diagnostic string.unquoted
#warning // not a preprocessor token!!!
// <- - meta.preprocessor
#extension extension_name : require
// <- meta.preprocessor.macro keyword.control.import.extension
//         ^^^^^^^^^^^^^^ meta.preprocessor.macro string.unquoted
//                        ^ meta.preprocessor.macro punctuation.separator
//                          ^^^^^^^ variable.parameter
#extension all : require
// <- meta.preprocessor.macro keyword.control.import.extension
//         ^^^ meta.preprocessor.macro string.unquoted constant.language
//             ^ meta.preprocessor.macro punctuation.separator
//               ^^^^^^^ variable.parameter
#include <pbr/deffered/geometry_buffer.glsl>
//<- meta.preprocessor.include.glsl keyword.control.import.include
//       ^ meta.preprocessor.include string.quoted.other.lt-gt.include punctuation.definition.string.begin
//         ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ meta.preprocessor.include string.quoted.other.lt-gt.include
//                                         ^ meta.preprocessor.include string.quoted.other.lt-gt.include punctuation.definition.string.end
#include "uniforms.glsl"
//<- meta.preprocessor.include keyword.control.import.include
//       ^ meta.preprocessor.include string.quoted.double.include punctuation.definition.string.begin
//        ^^^^^^^^^^^^^ meta.preprocessor.include string.quoted.double.include
//                     ^ meta.preprocessor.include string.quoted.double.include punctuation.definition.string.end
uniform sampler2D basecolor_map;
//<- storage.modifier
//      ^^^^^^^^^ storage.type
//                             ^ punctuation.terminator
uniform int foo;
//      ^^^ storage.type
//             ^ punctuation.terminator
uniform float x;
//      ^^^^^ storage.type
//             ^ punctuation.terminator
uniform sampler2DArray bar;
//      ^^^^^^^^^^^^^^ storage.type
in ivec3 foo;
// ^^^^^ storage.type
//          ^ punctuation.terminator
const uint Invisible    = 0x00000001u;
//<- storage.modifier
//    ^^^^ storage.type
//                      ^ keyword.operator.assignment
//                        ^^^^^^^^^^^ constant.numeric
//                                   ^ punctuation.terminator
vec4 somefunction(inout vec4 foo)
//   ^^^^^^^^^^^^ meta.function.glsl entity.name.function
//                ^^^^^ meta.function.parameters meta.group storage.modifier
{
// <- meta.function meta.block punctuation.section.block.begin
    gl_MaxClipPlanes;
    // <- support.constant
    
    gl_Position = vec4(0.0f, 0.0f, 0.0f, 1.0f);
    // <- variable.language
};
// <- meta.function meta.block punctuation.section.block.end
 //<- punctuation.terminator
struct LightSource
// <- meta.struct storage.type
//     ^^^^^^^^^^^ meta.struct entity.name.struct
{
// <- meta.struct meta.block punctuation.section.block.begin
        int Type;
        // <- meta.struct meta.block storage.type
        //      ^ meta.struct meta.block punctuation.terminator
        vec3 Position;
        vec3 Attenuation;
        vec3 Direction;
        vec3 Color;
};
// <- meta.struct meta.block punctuation.section.block.end
 // <- punctuation.terminator

uniform LightSource Light[4];
//                       ^ meta.brackets punctuation.section.brackets.begin
//                        ^ meta.brackets constant.numeric
//                         ^ meta.brackets punctuation.section.brackets.end
//                          ^ punctuation.terminator
class hello {
// <- invalid.illegal.reserved-keyword
};
union whatever {
// <- invalid.illegal.reserved-keyword
};
enum foo {
// <- invalid.illegal.reserved-keyword
};

in vec4 uv;
// <- storage.modifier
// ^^^^ storage.type
//        ^ punctuation.terminator
in vec4 position;
//<- storage.modifier
// ^^^^ storage.type
//              ^ punctuation.terminator
out vec4 finalColor;
//<- storage.modifier
//  ^^^^ storage.type
//                 ^ punctuation.terminator

void main()
// <- storage.type
//   ^^^^ meta.function entity.name.function
//       ^ meta.function.parameters meta.group punctuation.section.group.begin
//        ^ meta.function.parameters meta.group punctuation.section.group.end
{
//<- meta.function meta.block punctuation.section.block.begin
    surface s;
    //       ^ meta.function meta.block punctuation.terminator
    mat3 tbn = mat3(in_vertex.tangent, in_vertex.bitangent, in_vertex.normal);
    // <- meta.function meta.block storage.type
    //       ^ keyword.operator.assignment
    //         ^^^^ storage.type
    //             ^ meta.group punctuation.section.group.begin
    //                       ^ meta.group punctuation.accessor
    //                               ^ meta.group punctuation.separator
    //                                          ^ meta.group punctuation.accessor
    //                                                    ^ meta.group punctuation.separator
    //                                                                      ^ meta.group punctuation.section.group.end
    //                                                                       ^ punctuation.terminator
    //                                                                       
    s.diffuse = pow(atan(sin(cos((basecolor_map, in_vertex.texcoord).rgb, dvec3(1234)))));
     // <- punctuation.accessor
    //        ^ keyword.operator.assignment
    //          ^^^ meta.function-call support.function
    //              ^^^^ meta.function-call meta.group meta.function-call support.function
    //                   ^^^ meta.function-call meta.group meta.function-call meta.group meta.function-call support.function
    //                       ^^^ meta.function-call meta.group meta.function-call meta.group meta.function-call meta.group meta.function-call support.function
    //                                                                    ^^^^^ meta.function-call meta.group meta.function-call meta.group meta.function-call meta.group meta.function-call meta.group storage.type
    vec3 sample = texture(some_map, some_data.texcoord).xyz;
    //<- storage.type
    //          ^ keyword.operator.assignment
    //            ^^^^^^^ meta.function-call support.function
    //                   ^ meta.function-call meta.group punctuation.section.group.begin
    //                            ^ meta.function-call meta.group punctuation.separator
    //                                       ^ meta.function-call meta.group punctuation.accessor
    //                                                ^ meta.function-call meta.group punctuation.section.group.end
    //                                                 ^ punctuation.accessor
    foo.xyz = (bar.rgb) * 2.0 - 1.0;
    // ^ punctuation.accessor
    //      ^ keyword.operator.assignment
    //        ^ meta.group punctuation.section.group.begin
    //            ^ meta.group punctuation.accessor
    //                ^ meta.group punctuation.section.group.end
    //                  ^ keyword.operator
    //                    ^^^ constant.numeric
    //                        ^ keyword.operator.arithmetic
    //                          ^^^ constant.numeric
    //                             ^ punctuation.terminator
    foo = normalize(bar);
    //  ^ keyword.operator.assignment
    //    ^^^^^^^^^ meta.function-call support.function
    //             ^ meta.function-call meta.group punctuation.section.group.begin
    //                 ^ meta.function-call meta.group punctuation.section.group.end
    //                  ^ punctuation.terminator
    myfunc(s);
    //<- meta.function-call variable.function
    //    ^ meta.function-call meta.group punctuation.section.group.begin
    //      ^ meta.function-call meta.group punctuation.section.group.end
    //       ^ punctuation.terminator
    if (something)
    //<- meta.function meta.block keyword.control
    {
        discard;
        // <- keyword.control
    }
    else
    // <- meta.function meta.block keyword.control
    {
        finalColor = vec4(1.0f, 0.0f, 0.0f, 0.0f);
    }
    template foo;
    // <- invalid.illegal.reserved-keyword
    //          ^ punctuation.terminator
}
//<- meta.function meta.block punctuation.section.block.end

// <- - meta.function
