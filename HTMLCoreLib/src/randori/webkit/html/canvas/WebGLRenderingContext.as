
/*******************************************************************************************************

  This file was auto generated with the tool "WebIDLParser"

  Content was generated from IDL file:
  http://trac.webkit.org/browser/trunk/Source/WebCore/html/canvas/WebGLRenderingContext.idl

  PLEASE DO *NOT* MODIFY THIS FILE! This file will be overridden next generation. If you need changes:
  - Regenerate the project with the newest IDL files.
  - or modify the WebIDLParser tool itself.

********************************************************************************************************

  Copyright (C) 2013 Sebastian Loncar, Web: http://loncar.de
  Copyright (C) 2009 Apple Inc. All Rights Reserved.

  Adapted to create Actionscript 3 classes by Roland Zwaga (roland@stackandheap.com) for the Randori
  framework for large enterprise Javascript applications.

  MIT License:

  Permission is hereby granted, free of charge, to any person obtaining a copy of this software and
  associated documentation files (the "Software"), to deal in the Software without restriction, 
  including without limitation the rights to use, copy, modify, merge, publish, distribute,
  sublicense, and/or sell copies of the Software, and to permit persons to whom the Software is
  furnished to do so, subject to the following conditions:

  The above copyright notice and this permission notice shall be included in all copies or substantial
  portions of the Software.

  THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR IMPLIED, INCLUDING BUT
  NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND
  NONINFRINGEMENT. IN NO EVENT SHALL THE AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES
  OR OTHER LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM, OUT OF OR IN
  CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE SOFTWARE.

*******************************************************************************************************/


package randori.webkit.html.canvas
{


[Javascript(export="false", nativecondition="WEBGL", name="WebGLRenderingContext")]
/**
 *  @author RandoriAS Web IDL Parser
 *  @version 1.0
 *  @see randori.webkit.html.canvas.CanvasRenderingContext
 */
public class WebGLRenderingContext extends CanvasRenderingContext
{
	public static const DEPTH_BUFFER_BIT:uint = 0x00000100;
	public static const STENCIL_BUFFER_BIT:uint = 0x00000400;
	public static const COLOR_BUFFER_BIT:uint = 0x00004000;
	public static const POINTS:uint = 0x0000;
	public static const LINES:uint = 0x0001;
	public static const LINE_LOOP:uint = 0x0002;
	public static const LINE_STRIP:uint = 0x0003;
	public static const TRIANGLES:uint = 0x0004;
	public static const TRIANGLE_STRIP:uint = 0x0005;
	public static const TRIANGLE_FAN:uint = 0x0006;
	public static const ZERO:uint = 0;
	public static const ONE:uint = 1;
	public static const SRC_COLOR:uint = 0x0300;
	public static const ONE_MINUS_SRC_COLOR:uint = 0x0301;
	public static const SRC_ALPHA:uint = 0x0302;
	public static const ONE_MINUS_SRC_ALPHA:uint = 0x0303;
	public static const DST_ALPHA:uint = 0x0304;
	public static const ONE_MINUS_DST_ALPHA:uint = 0x0305;
	public static const DST_COLOR:uint = 0x0306;
	public static const ONE_MINUS_DST_COLOR:uint = 0x0307;
	public static const SRC_ALPHA_SATURATE:uint = 0x0308;
	public static const FUNC_ADD:uint = 0x8006;
	public static const BLEND_EQUATION:uint = 0x8009;
	public static const BLEND_EQUATION_RGB:uint = 0x8009;
	public static const BLEND_EQUATION_ALPHA:uint = 0x883D;
	public static const FUNC_SUBTRACT:uint = 0x800A;
	public static const FUNC_REVERSE_SUBTRACT:uint = 0x800B;
	public static const BLEND_DST_RGB:uint = 0x80C8;
	public static const BLEND_SRC_RGB:uint = 0x80C9;
	public static const BLEND_DST_ALPHA:uint = 0x80CA;
	public static const BLEND_SRC_ALPHA:uint = 0x80CB;
	public static const CONSTANT_COLOR:uint = 0x8001;
	public static const ONE_MINUS_CONSTANT_COLOR:uint = 0x8002;
	public static const CONSTANT_ALPHA:uint = 0x8003;
	public static const ONE_MINUS_CONSTANT_ALPHA:uint = 0x8004;
	public static const BLEND_COLOR:uint = 0x8005;
	public static const ARRAY_BUFFER:uint = 0x8892;
	public static const ELEMENT_ARRAY_BUFFER:uint = 0x8893;
	public static const ARRAY_BUFFER_BINDING:uint = 0x8894;
	public static const ELEMENT_ARRAY_BUFFER_BINDING:uint = 0x8895;
	public static const STREAM_DRAW:uint = 0x88E0;
	public static const STATIC_DRAW:uint = 0x88E4;
	public static const DYNAMIC_DRAW:uint = 0x88E8;
	public static const BUFFER_SIZE:uint = 0x8764;
	public static const BUFFER_USAGE:uint = 0x8765;
	public static const CURRENT_VERTEX_ATTRIB:uint = 0x8626;
	public static const FRONT:uint = 0x0404;
	public static const BACK:uint = 0x0405;
	public static const FRONT_AND_BACK:uint = 0x0408;
	public static const TEXTURE_2D:uint = 0x0DE1;
	public static const CULL_FACE:uint = 0x0B44;
	public static const BLEND:uint = 0x0BE2;
	public static const DITHER:uint = 0x0BD0;
	public static const STENCIL_TEST:uint = 0x0B90;
	public static const DEPTH_TEST:uint = 0x0B71;
	public static const SCISSOR_TEST:uint = 0x0C11;
	public static const POLYGON_OFFSET_FILL:uint = 0x8037;
	public static const SAMPLE_ALPHA_TO_COVERAGE:uint = 0x809E;
	public static const SAMPLE_COVERAGE:uint = 0x80A0;
	public static const NO_ERROR:uint = 0;
	public static const INVALID_ENUM:uint = 0x0500;
	public static const INVALID_VALUE:uint = 0x0501;
	public static const INVALID_OPERATION:uint = 0x0502;
	public static const OUT_OF_MEMORY:uint = 0x0505;
	public static const CW:uint = 0x0900;
	public static const CCW:uint = 0x0901;
	public static const LINE_WIDTH:uint = 0x0B21;
	public static const ALIASED_POINT_SIZE_RANGE:uint = 0x846D;
	public static const ALIASED_LINE_WIDTH_RANGE:uint = 0x846E;
	public static const CULL_FACE_MODE:uint = 0x0B45;
	public static const FRONT_FACE:uint = 0x0B46;
	public static const DEPTH_RANGE:uint = 0x0B70;
	public static const DEPTH_WRITEMASK:uint = 0x0B72;
	public static const DEPTH_CLEAR_VALUE:uint = 0x0B73;
	public static const DEPTH_FUNC:uint = 0x0B74;
	public static const STENCIL_CLEAR_VALUE:uint = 0x0B91;
	public static const STENCIL_FUNC:uint = 0x0B92;
	public static const STENCIL_FAIL:uint = 0x0B94;
	public static const STENCIL_PASS_DEPTH_FAIL:uint = 0x0B95;
	public static const STENCIL_PASS_DEPTH_PASS:uint = 0x0B96;
	public static const STENCIL_REF:uint = 0x0B97;
	public static const STENCIL_VALUE_MASK:uint = 0x0B93;
	public static const STENCIL_WRITEMASK:uint = 0x0B98;
	public static const STENCIL_BACK_FUNC:uint = 0x8800;
	public static const STENCIL_BACK_FAIL:uint = 0x8801;
	public static const STENCIL_BACK_PASS_DEPTH_FAIL:uint = 0x8802;
	public static const STENCIL_BACK_PASS_DEPTH_PASS:uint = 0x8803;
	public static const STENCIL_BACK_REF:uint = 0x8CA3;
	public static const STENCIL_BACK_VALUE_MASK:uint = 0x8CA4;
	public static const STENCIL_BACK_WRITEMASK:uint = 0x8CA5;
	public static const VIEWPORT:uint = 0x0BA2;
	public static const SCISSOR_BOX:uint = 0x0C10;
	public static const COLOR_CLEAR_VALUE:uint = 0x0C22;
	public static const COLOR_WRITEMASK:uint = 0x0C23;
	public static const UNPACK_ALIGNMENT:uint = 0x0CF5;
	public static const PACK_ALIGNMENT:uint = 0x0D05;
	public static const MAX_TEXTURE_SIZE:uint = 0x0D33;
	public static const MAX_VIEWPORT_DIMS:uint = 0x0D3A;
	public static const SUBPIXEL_BITS:uint = 0x0D50;
	public static const RED_BITS:uint = 0x0D52;
	public static const GREEN_BITS:uint = 0x0D53;
	public static const BLUE_BITS:uint = 0x0D54;
	public static const ALPHA_BITS:uint = 0x0D55;
	public static const DEPTH_BITS:uint = 0x0D56;
	public static const STENCIL_BITS:uint = 0x0D57;
	public static const POLYGON_OFFSET_UNITS:uint = 0x2A00;
	public static const POLYGON_OFFSET_FACTOR:uint = 0x8038;
	public static const TEXTURE_BINDING_2D:uint = 0x8069;
	public static const SAMPLE_BUFFERS:uint = 0x80A8;
	public static const SAMPLES:uint = 0x80A9;
	public static const SAMPLE_COVERAGE_VALUE:uint = 0x80AA;
	public static const SAMPLE_COVERAGE_INVERT:uint = 0x80AB;
	public static const COMPRESSED_TEXTURE_FORMATS:uint = 0x86A3;
	public static const DONT_CARE:uint = 0x1100;
	public static const FASTEST:uint = 0x1101;
	public static const NICEST:uint = 0x1102;
	public static const GENERATE_MIPMAP_HINT:uint = 0x8192;
	public static const BYTE:uint = 0x1400;
	public static const UNSIGNED_BYTE:uint = 0x1401;
	public static const SHORT:uint = 0x1402;
	public static const UNSIGNED_SHORT:uint = 0x1403;
	public static const INT:uint = 0x1404;
	public static const UNSIGNED_INT:uint = 0x1405;
	public static const FLOAT:uint = 0x1406;
	public static const DEPTH_COMPONENT:uint = 0x1902;
	public static const ALPHA:uint = 0x1906;
	public static const RGB:uint = 0x1907;
	public static const RGBA:uint = 0x1908;
	public static const LUMINANCE:uint = 0x1909;
	public static const LUMINANCE_ALPHA:uint = 0x190A;
	public static const UNSIGNED_SHORT_4_4_4_4:uint = 0x8033;
	public static const UNSIGNED_SHORT_5_5_5_1:uint = 0x8034;
	public static const UNSIGNED_SHORT_5_6_5:uint = 0x8363;
	public static const FRAGMENT_SHADER:uint = 0x8B30;
	public static const VERTEX_SHADER:uint = 0x8B31;
	public static const MAX_VERTEX_ATTRIBS:uint = 0x8869;
	public static const MAX_VERTEX_UNIFORM_VECTORS:uint = 0x8DFB;
	public static const MAX_VARYING_VECTORS:uint = 0x8DFC;
	public static const MAX_COMBINED_TEXTURE_IMAGE_UNITS:uint = 0x8B4D;
	public static const MAX_VERTEX_TEXTURE_IMAGE_UNITS:uint = 0x8B4C;
	public static const MAX_TEXTURE_IMAGE_UNITS:uint = 0x8872;
	public static const MAX_FRAGMENT_UNIFORM_VECTORS:uint = 0x8DFD;
	public static const SHADER_TYPE:uint = 0x8B4F;
	public static const DELETE_STATUS:uint = 0x8B80;
	public static const LINK_STATUS:uint = 0x8B82;
	public static const VALIDATE_STATUS:uint = 0x8B83;
	public static const ATTACHED_SHADERS:uint = 0x8B85;
	public static const ACTIVE_UNIFORMS:uint = 0x8B86;
	public static const ACTIVE_ATTRIBUTES:uint = 0x8B89;
	public static const SHADING_LANGUAGE_VERSION:uint = 0x8B8C;
	public static const CURRENT_PROGRAM:uint = 0x8B8D;
	public static const NEVER:uint = 0x0200;
	public static const LESS:uint = 0x0201;
	public static const EQUAL:uint = 0x0202;
	public static const LEQUAL:uint = 0x0203;
	public static const GREATER:uint = 0x0204;
	public static const NOTEQUAL:uint = 0x0205;
	public static const GEQUAL:uint = 0x0206;
	public static const ALWAYS:uint = 0x0207;
	public static const KEEP:uint = 0x1E00;
	public static const REPLACE:uint = 0x1E01;
	public static const INCR:uint = 0x1E02;
	public static const DECR:uint = 0x1E03;
	public static const INVERT:uint = 0x150A;
	public static const INCR_WRAP:uint = 0x8507;
	public static const DECR_WRAP:uint = 0x8508;
	public static const VENDOR:uint = 0x1F00;
	public static const RENDERER:uint = 0x1F01;
	public static const VERSION:uint = 0x1F02;
	public static const NEAREST:uint = 0x2600;
	public static const LINEAR:uint = 0x2601;
	public static const NEAREST_MIPMAP_NEAREST:uint = 0x2700;
	public static const LINEAR_MIPMAP_NEAREST:uint = 0x2701;
	public static const NEAREST_MIPMAP_LINEAR:uint = 0x2702;
	public static const LINEAR_MIPMAP_LINEAR:uint = 0x2703;
	public static const TEXTURE_MAG_FILTER:uint = 0x2800;
	public static const TEXTURE_MIN_FILTER:uint = 0x2801;
	public static const TEXTURE_WRAP_S:uint = 0x2802;
	public static const TEXTURE_WRAP_T:uint = 0x2803;
	public static const TEXTURE:uint = 0x1702;
	public static const TEXTURE_CUBE_MAP:uint = 0x8513;
	public static const TEXTURE_BINDING_CUBE_MAP:uint = 0x8514;
	public static const TEXTURE_CUBE_MAP_POSITIVE_X:uint = 0x8515;
	public static const TEXTURE_CUBE_MAP_NEGATIVE_X:uint = 0x8516;
	public static const TEXTURE_CUBE_MAP_POSITIVE_Y:uint = 0x8517;
	public static const TEXTURE_CUBE_MAP_NEGATIVE_Y:uint = 0x8518;
	public static const TEXTURE_CUBE_MAP_POSITIVE_Z:uint = 0x8519;
	public static const TEXTURE_CUBE_MAP_NEGATIVE_Z:uint = 0x851A;
	public static const MAX_CUBE_MAP_TEXTURE_SIZE:uint = 0x851C;
	public static const TEXTURE0:uint = 0x84C0;
	public static const TEXTURE1:uint = 0x84C1;
	public static const TEXTURE2:uint = 0x84C2;
	public static const TEXTURE3:uint = 0x84C3;
	public static const TEXTURE4:uint = 0x84C4;
	public static const TEXTURE5:uint = 0x84C5;
	public static const TEXTURE6:uint = 0x84C6;
	public static const TEXTURE7:uint = 0x84C7;
	public static const TEXTURE8:uint = 0x84C8;
	public static const TEXTURE9:uint = 0x84C9;
	public static const TEXTURE10:uint = 0x84CA;
	public static const TEXTURE11:uint = 0x84CB;
	public static const TEXTURE12:uint = 0x84CC;
	public static const TEXTURE13:uint = 0x84CD;
	public static const TEXTURE14:uint = 0x84CE;
	public static const TEXTURE15:uint = 0x84CF;
	public static const TEXTURE16:uint = 0x84D0;
	public static const TEXTURE17:uint = 0x84D1;
	public static const TEXTURE18:uint = 0x84D2;
	public static const TEXTURE19:uint = 0x84D3;
	public static const TEXTURE20:uint = 0x84D4;
	public static const TEXTURE21:uint = 0x84D5;
	public static const TEXTURE22:uint = 0x84D6;
	public static const TEXTURE23:uint = 0x84D7;
	public static const TEXTURE24:uint = 0x84D8;
	public static const TEXTURE25:uint = 0x84D9;
	public static const TEXTURE26:uint = 0x84DA;
	public static const TEXTURE27:uint = 0x84DB;
	public static const TEXTURE28:uint = 0x84DC;
	public static const TEXTURE29:uint = 0x84DD;
	public static const TEXTURE30:uint = 0x84DE;
	public static const TEXTURE31:uint = 0x84DF;
	public static const ACTIVE_TEXTURE:uint = 0x84E0;
	public static const REPEAT:uint = 0x2901;
	public static const CLAMP_TO_EDGE:uint = 0x812F;
	public static const MIRRORED_REPEAT:uint = 0x8370;
	public static const FLOAT_VEC2:uint = 0x8B50;
	public static const FLOAT_VEC3:uint = 0x8B51;
	public static const FLOAT_VEC4:uint = 0x8B52;
	public static const INT_VEC2:uint = 0x8B53;
	public static const INT_VEC3:uint = 0x8B54;
	public static const INT_VEC4:uint = 0x8B55;
	public static const BOOL:uint = 0x8B56;
	public static const BOOL_VEC2:uint = 0x8B57;
	public static const BOOL_VEC3:uint = 0x8B58;
	public static const BOOL_VEC4:uint = 0x8B59;
	public static const FLOAT_MAT2:uint = 0x8B5A;
	public static const FLOAT_MAT3:uint = 0x8B5B;
	public static const FLOAT_MAT4:uint = 0x8B5C;
	public static const SAMPLER_2D:uint = 0x8B5E;
	public static const SAMPLER_CUBE:uint = 0x8B60;
	public static const VERTEX_ATTRIB_ARRAY_ENABLED:uint = 0x8622;
	public static const VERTEX_ATTRIB_ARRAY_SIZE:uint = 0x8623;
	public static const VERTEX_ATTRIB_ARRAY_STRIDE:uint = 0x8624;
	public static const VERTEX_ATTRIB_ARRAY_TYPE:uint = 0x8625;
	public static const VERTEX_ATTRIB_ARRAY_NORMALIZED:uint = 0x886A;
	public static const VERTEX_ATTRIB_ARRAY_POINTER:uint = 0x8645;
	public static const VERTEX_ATTRIB_ARRAY_BUFFER_BINDING:uint = 0x889F;
	public static const COMPILE_STATUS:uint = 0x8B81;
	public static const LOW_FLOAT:uint = 0x8DF0;
	public static const MEDIUM_FLOAT:uint = 0x8DF1;
	public static const HIGH_FLOAT:uint = 0x8DF2;
	public static const LOW_INT:uint = 0x8DF3;
	public static const MEDIUM_INT:uint = 0x8DF4;
	public static const HIGH_INT:uint = 0x8DF5;
	public static const FRAMEBUFFER:uint = 0x8D40;
	public static const RENDERBUFFER:uint = 0x8D41;
	public static const RGBA4:uint = 0x8056;
	public static const RGB5_A1:uint = 0x8057;
	public static const RGB565:uint = 0x8D62;
	public static const DEPTH_COMPONENT16:uint = 0x81A5;
	public static const STENCIL_INDEX:uint = 0x1901;
	public static const STENCIL_INDEX8:uint = 0x8D48;
	public static const DEPTH_STENCIL:uint = 0x84F9;
	public static const RENDERBUFFER_WIDTH:uint = 0x8D42;
	public static const RENDERBUFFER_HEIGHT:uint = 0x8D43;
	public static const RENDERBUFFER_INTERNAL_FORMAT:uint = 0x8D44;
	public static const RENDERBUFFER_RED_SIZE:uint = 0x8D50;
	public static const RENDERBUFFER_GREEN_SIZE:uint = 0x8D51;
	public static const RENDERBUFFER_BLUE_SIZE:uint = 0x8D52;
	public static const RENDERBUFFER_ALPHA_SIZE:uint = 0x8D53;
	public static const RENDERBUFFER_DEPTH_SIZE:uint = 0x8D54;
	public static const RENDERBUFFER_STENCIL_SIZE:uint = 0x8D55;
	public static const FRAMEBUFFER_ATTACHMENT_OBJECT_TYPE:uint = 0x8CD0;
	public static const FRAMEBUFFER_ATTACHMENT_OBJECT_NAME:uint = 0x8CD1;
	public static const FRAMEBUFFER_ATTACHMENT_TEXTURE_LEVEL:uint = 0x8CD2;
	public static const FRAMEBUFFER_ATTACHMENT_TEXTURE_CUBE_MAP_FACE:uint = 0x8CD3;
	public static const COLOR_ATTACHMENT0:uint = 0x8CE0;
	public static const DEPTH_ATTACHMENT:uint = 0x8D00;
	public static const STENCIL_ATTACHMENT:uint = 0x8D20;
	public static const DEPTH_STENCIL_ATTACHMENT:uint = 0x821A;
	public static const NONE:uint = 0;
	public static const FRAMEBUFFER_COMPLETE:uint = 0x8CD5;
	public static const FRAMEBUFFER_INCOMPLETE_ATTACHMENT:uint = 0x8CD6;
	public static const FRAMEBUFFER_INCOMPLETE_MISSING_ATTACHMENT:uint = 0x8CD7;
	public static const FRAMEBUFFER_INCOMPLETE_DIMENSIONS:uint = 0x8CD9;
	public static const FRAMEBUFFER_UNSUPPORTED:uint = 0x8CDD;
	public static const FRAMEBUFFER_BINDING:uint = 0x8CA6;
	public static const RENDERBUFFER_BINDING:uint = 0x8CA7;
	public static const MAX_RENDERBUFFER_SIZE:uint = 0x84E8;
	public static const INVALID_FRAMEBUFFER_OPERATION:uint = 0x0506;
	public static const UNPACK_FLIP_Y_WEBGL:uint = 0x9240;
	public static const UNPACK_PREMULTIPLY_ALPHA_WEBGL:uint = 0x9241;
	public static const CONTEXT_LOST_WEBGL:uint = 0x9242;
	public static const UNPACK_COLORSPACE_CONVERSION_WEBGL:uint = 0x9243;
	public static const BROWSER_DEFAULT_WEBGL:uint = 0x9244;

	public function get drawingBufferWidth():uint { return 0; }

	public function get drawingBufferHeight():uint { return 0; }
	/**
	*  @param texture
	*/
	public function activeTexture(texture:uint):void {}
	/**
	*  @param program
	*  @param shader
	*/
	public function attachShader(program:WebGLProgram, shader:WebGLShader):void {}
	/**
	*  @param program
	*  @param index
	*  @param name
	*/
	public function bindAttribLocation(program:WebGLProgram, index:uint, name:String):void {}
	/**
	*  @param target
	*  @param buffer
	*/
	public function bindBuffer(target:uint, buffer:WebGLBuffer):void {}
	/**
	*  @param target
	*  @param framebuffer
	*/
	public function bindFramebuffer(target:uint, framebuffer:WebGLFramebuffer):void {}
	/**
	*  @param target
	*  @param renderbuffer
	*/
	public function bindRenderbuffer(target:uint, renderbuffer:WebGLRenderbuffer):void {}
	/**
	*  @param target
	*  @param texture
	*/
	public function bindTexture(target:uint, texture:WebGLTexture):void {}
	/**
	*  @param red
	*  @param green
	*  @param blue
	*  @param alpha
	*/
	public function blendColor(red:Number, green:Number, blue:Number, alpha:Number):void {}
	/**
	*  @param mode
	*/
	public function blendEquation(mode:uint):void {}
	/**
	*  @param modeRGB
	*  @param modeAlpha
	*/
	public function blendEquationSeparate(modeRGB:uint, modeAlpha:uint):void {}
	/**
	*  @param sfactor
	*  @param dfactor
	*/
	public function blendFunc(sfactor:uint, dfactor:uint):void {}
	/**
	*  @param srcRGB
	*  @param dstRGB
	*  @param srcAlpha
	*  @param dstAlpha
	*/
	public function blendFuncSeparate(srcRGB:uint, dstRGB:uint, srcAlpha:uint, dstAlpha:uint):void {}
	/**
	*  @param target
	*  @param data
	*  @param usage
	*/
	public function bufferData(target:uint, data:ArrayBuffer, usage:uint):void {}
	/**
	*  @param target
	*  @param offset
	*  @param data
	*/
	public function bufferSubData(target:uint, offset:Number, data:ArrayBuffer):void {}
	/**
	*  @param target
	*  @return A <code>uint</code> instance.
	*/
	public function checkFramebufferStatus(target:uint):uint { return 0;}
	/**
	*  @param mask
	*/
	public function clear(mask:uint):void {}
	/**
	*  @param red
	*  @param green
	*  @param blue
	*  @param alpha
	*/
	public function clearColor(red:Number, green:Number, blue:Number, alpha:Number):void {}
	/**
	*  @param depth
	*/
	public function clearDepth(depth:Number):void {}
	/**
	*  @param s
	*/
	public function clearStencil(s:uint):void {}
	/**
	*  @param red
	*  @param green
	*  @param blue
	*  @param alpha
	*/
	public function colorMask(red:Boolean, green:Boolean, blue:Boolean, alpha:Boolean):void {}
	/**
	*  @param shader
	*/
	public function compileShader(shader:WebGLShader):void {}
	/**
	*  @param target
	*  @param level
	*  @param internalformat
	*  @param width
	*  @param height
	*  @param border
	*  @param data
	*/
	public function compressedTexImage2D(target:uint, level:uint, internalformat:uint, width:uint, height:uint, border:uint, data:ArrayBufferView):void {}
	/**
	*  @param target
	*  @param level
	*  @param xoffset
	*  @param yoffset
	*  @param width
	*  @param height
	*  @param format
	*  @param data
	*/
	public function compressedTexSubImage2D(target:uint, level:uint, xoffset:uint, yoffset:uint, width:uint, height:uint, format:uint, data:ArrayBufferView):void {}
	/**
	*  @param target
	*  @param level
	*  @param internalformat
	*  @param x
	*  @param y
	*  @param width
	*  @param height
	*  @param border
	*/
	public function copyTexImage2D(target:uint, level:uint, internalformat:uint, x:uint, y:uint, width:uint, height:uint, border:uint):void {}
	/**
	*  @param target
	*  @param level
	*  @param xoffset
	*  @param yoffset
	*  @param x
	*  @param y
	*  @param width
	*  @param height
	*/
	public function copyTexSubImage2D(target:uint, level:uint, xoffset:uint, yoffset:uint, x:uint, y:uint, width:uint, height:uint):void {}
	/**
	*  @return A <code>WebGLBuffer</code> instance.
	*/
	public function createBuffer():WebGLBuffer { return null;}
	/**
	*  @return A <code>WebGLFramebuffer</code> instance.
	*/
	public function createFramebuffer():WebGLFramebuffer { return null;}
	/**
	*  @return A <code>WebGLProgram</code> instance.
	*/
	public function createProgram():WebGLProgram { return null;}
	/**
	*  @return A <code>WebGLRenderbuffer</code> instance.
	*/
	public function createRenderbuffer():WebGLRenderbuffer { return null;}
	/**
	*  @param type
	*  @return A <code>WebGLShader</code> instance.
	*/
	public function createShader(type:uint):WebGLShader { return null;}
	/**
	*  @return A <code>WebGLTexture</code> instance.
	*/
	public function createTexture():WebGLTexture { return null;}
	/**
	*  @param mode
	*/
	public function cullFace(mode:uint):void {}
	/**
	*  @param buffer
	*/
	public function deleteBuffer(buffer:WebGLBuffer):void {}
	/**
	*  @param framebuffer
	*/
	public function deleteFramebuffer(framebuffer:WebGLFramebuffer):void {}
	/**
	*  @param program
	*/
	public function deleteProgram(program:WebGLProgram):void {}
	/**
	*  @param renderbuffer
	*/
	public function deleteRenderbuffer(renderbuffer:WebGLRenderbuffer):void {}
	/**
	*  @param shader
	*/
	public function deleteShader(shader:WebGLShader):void {}
	/**
	*  @param texture
	*/
	public function deleteTexture(texture:WebGLTexture):void {}
	/**
	*  @param func
	*/
	public function depthFunc(func:uint):void {}
	/**
	*  @param flag
	*/
	public function depthMask(flag:Boolean):void {}
	/**
	*  @param zNear
	*  @param zFar
	*/
	public function depthRange(zNear:Number, zFar:Number):void {}
	/**
	*  @param program
	*  @param shader
	*/
	public function detachShader(program:WebGLProgram, shader:WebGLShader):void {}
	/**
	*  @param cap
	*/
	public function disable(cap:uint):void {}
	/**
	*  @param index
	*/
	public function disableVertexAttribArray(index:uint):void {}
	/**
	*  @param mode
	*  @param first
	*  @param count
	*/
	public function drawArrays(mode:uint, first:uint, count:uint):void {}
	/**
	*  @param mode
	*  @param count
	*  @param type
	*  @param offset
	*/
	public function drawElements(mode:uint, count:uint, type:uint, offset:Number):void {}
	/**
	*  @param cap
	*/
	public function enable(cap:uint):void {}
	/**
	*  @param index
	*/
	public function enableVertexAttribArray(index:uint):void {}
	public function finish():void {}
	public function flush():void {}
	/**
	*  @param target
	*  @param attachment
	*  @param renderbuffertarget
	*  @param renderbuffer
	*/
	public function framebufferRenderbuffer(target:uint, attachment:uint, renderbuffertarget:uint, renderbuffer:WebGLRenderbuffer):void {}
	/**
	*  @param target
	*  @param attachment
	*  @param textarget
	*  @param texture
	*  @param level
	*/
	public function framebufferTexture2D(target:uint, attachment:uint, textarget:uint, texture:WebGLTexture, level:uint):void {}
	/**
	*  @param mode
	*/
	public function frontFace(mode:uint):void {}
	/**
	*  @param target
	*/
	public function generateMipmap(target:uint):void {}
	/**
	*  @param program
	*  @param index
	*  @return A <code>WebGLActiveInfo</code> instance.
	*/
	public function getActiveAttrib(program:WebGLProgram, index:uint):WebGLActiveInfo { return null;}
	/**
	*  @param program
	*  @param index
	*  @return A <code>WebGLActiveInfo</code> instance.
	*/
	public function getActiveUniform(program:WebGLProgram, index:uint):WebGLActiveInfo { return null;}
	/**
	*  @param program
	*/
	public function getAttachedShaders(program:WebGLProgram):void {}
	/**
	*  @param program
	*  @param name
	*  @return A <code>int</code> instance.
	*/
	public function getAttribLocation(program:WebGLProgram, name:String):int { return 0;}
	public function getBufferParameter():void {}
	/**
	*  @return A <code>WebGLContextAttributes</code> instance.
	*/
	public function getContextAttributes():WebGLContextAttributes { return null;}
	/**
	*  @return A <code>uint</code> instance.
	*/
	public function getError():uint { return 0;}
	/**
	*  @param name
	*  @return A <code>any</code> instance.
	*/
	public function getExtension(name:String):* { return null;}
	public function getFramebufferAttachmentParameter():void {}
	public function getParameter():void {}
	public function getProgramParameter():void {}
	/**
	*  @param program
	*  @return A <code>String</code> instance.
	*/
	public function getProgramInfoLog(program:WebGLProgram):String { return '';}
	public function getRenderbufferParameter():void {}
	public function getShaderParameter():void {}
	/**
	*  @param shader
	*  @return A <code>String</code> instance.
	*/
	public function getShaderInfoLog(shader:WebGLShader):String { return '';}
	/**
	*  @param shadertype
	*  @param precisiontype
	*  @return A <code>WebGLShaderPrecisionFormat</code> instance.
	*/
	public function getShaderPrecisionFormat(shadertype:uint, precisiontype:uint):WebGLShaderPrecisionFormat { return null;}
	/**
	*  @param shader
	*  @return A <code>String</code> instance.
	*/
	public function getShaderSource(shader:WebGLShader):String { return '';}
	/**
	*  @return A <code>sequence</code> instance.
	*/
	public function getSupportedExtensions():Vector.<String> { return null;}
	public function getTexParameter():void {}
	public function getUniform():void {}
	/**
	*  @param program
	*  @param name
	*  @return A <code>WebGLUniformLocation</code> instance.
	*/
	public function getUniformLocation(program:WebGLProgram, name:String):WebGLUniformLocation { return null;}
	public function getVertexAttrib():void {}
	/**
	*  @param index
	*  @param pname
	*  @return A <code>Number</code> instance.
	*/
	public function getVertexAttribOffset(index:uint, pname:uint):Number { return 0;}
	/**
	*  @param target
	*  @param mode
	*/
	public function hint(target:uint, mode:uint):void {}
	/**
	*  @param buffer
	*  @return A <code>Boolean</code> instance.
	*/
	public function isBuffer(buffer:WebGLBuffer):Boolean { return false;}
	/**
	*  @return A <code>Boolean</code> instance.
	*/
	public function isContextLost():Boolean { return false;}
	/**
	*  @param cap
	*  @return A <code>Boolean</code> instance.
	*/
	public function isEnabled(cap:uint):Boolean { return false;}
	/**
	*  @param framebuffer
	*  @return A <code>Boolean</code> instance.
	*/
	public function isFramebuffer(framebuffer:WebGLFramebuffer):Boolean { return false;}
	/**
	*  @param program
	*  @return A <code>Boolean</code> instance.
	*/
	public function isProgram(program:WebGLProgram):Boolean { return false;}
	/**
	*  @param renderbuffer
	*  @return A <code>Boolean</code> instance.
	*/
	public function isRenderbuffer(renderbuffer:WebGLRenderbuffer):Boolean { return false;}
	/**
	*  @param shader
	*  @return A <code>Boolean</code> instance.
	*/
	public function isShader(shader:WebGLShader):Boolean { return false;}
	/**
	*  @param texture
	*  @return A <code>Boolean</code> instance.
	*/
	public function isTexture(texture:WebGLTexture):Boolean { return false;}
	/**
	*  @param width
	*/
	public function lineWidth(width:Number):void {}
	/**
	*  @param program
	*/
	public function linkProgram(program:WebGLProgram):void {}
	/**
	*  @param pname
	*  @param param
	*/
	public function pixelStorei(pname:uint, param:uint):void {}
	/**
	*  @param factor
	*  @param units
	*/
	public function polygonOffset(factor:Number, units:Number):void {}
	/**
	*  @param x
	*  @param y
	*  @param width
	*  @param height
	*  @param format
	*  @param type
	*  @param pixels
	*/
	public function readPixels(x:uint, y:uint, width:uint, height:uint, format:uint, type:uint, pixels:ArrayBufferView):void {}
	public function releaseShaderCompiler():void {}
	/**
	*  @param target
	*  @param internalformat
	*  @param width
	*  @param height
	*/
	public function renderbufferStorage(target:uint, internalformat:uint, width:uint, height:uint):void {}
	/**
	*  @param value
	*  @param invert
	*/
	public function sampleCoverage(value:Number, invert:Boolean):void {}
	/**
	*  @param x
	*  @param y
	*  @param width
	*  @param height
	*/
	public function scissor(x:uint, y:uint, width:uint, height:uint):void {}
	/**
	*  @param shader
	*  @param string
	*/
	public function shaderSource(shader:WebGLShader, string:String):void {}
	/**
	*  @param func
	*  @param ref
	*  @param mask
	*/
	public function stencilFunc(func:uint, ref:uint, mask:uint):void {}
	/**
	*  @param face
	*  @param func
	*  @param ref
	*  @param mask
	*/
	public function stencilFuncSeparate(face:uint, func:uint, ref:uint, mask:uint):void {}
	/**
	*  @param mask
	*/
	public function stencilMask(mask:uint):void {}
	/**
	*  @param face
	*  @param mask
	*/
	public function stencilMaskSeparate(face:uint, mask:uint):void {}
	/**
	*  @param fail
	*  @param zfail
	*  @param zpass
	*/
	public function stencilOp(fail:uint, zfail:uint, zpass:uint):void {}
	/**
	*  @param face
	*  @param fail
	*  @param zfail
	*  @param zpass
	*/
	public function stencilOpSeparate(face:uint, fail:uint, zfail:uint, zpass:uint):void {}
	/**
	*  @param target
	*  @param pname
	*  @param param
	*/
	public function texParameterf(target:uint, pname:uint, param:Number):void {}
	/**
	*  @param target
	*  @param pname
	*  @param param
	*/
	public function texParameteri(target:uint, pname:uint, param:uint):void {}
	/**
	*  @param target
	*  @param level
	*  @param internalformat
	*  @param width
	*  @param height
	*  @param border
	*  @param format
	*  @param type
	*  @param pixels
	*/
	public function texImage2D(target:uint, level:uint, internalformat:uint, width:uint, height:uint, border:uint, format:uint, type:uint, pixels:ArrayBufferView):void {}
	/**
	*  @param target
	*  @param level
	*  @param xoffset
	*  @param yoffset
	*  @param width
	*  @param height
	*  @param format
	*  @param type
	*  @param pixels
	*/
	public function texSubImage2D(target:uint, level:uint, xoffset:uint, yoffset:uint, width:uint, height:uint, format:uint, type:uint, pixels:ArrayBufferView):void {}
	/**
	*  @param location
	*  @param x
	*/
	public function uniform1f(location:WebGLUniformLocation, x:Number):void {}
	/**
	*  @param location
	*  @param v
	*/
	public function uniform1fv(location:WebGLUniformLocation, v:Object):void {}
	/**
	*  @param location
	*  @param x
	*/
	public function uniform1i(location:WebGLUniformLocation, x:uint):void {}
	/**
	*  @param location
	*  @param v
	*/
	public function uniform1iv(location:WebGLUniformLocation, v:Object):void {}
	/**
	*  @param location
	*  @param x
	*  @param y
	*/
	public function uniform2f(location:WebGLUniformLocation, x:Number, y:Number):void {}
	/**
	*  @param location
	*  @param v
	*/
	public function uniform2fv(location:WebGLUniformLocation, v:Object):void {}
	/**
	*  @param location
	*  @param x
	*  @param y
	*/
	public function uniform2i(location:WebGLUniformLocation, x:uint, y:uint):void {}
	/**
	*  @param location
	*  @param v
	*/
	public function uniform2iv(location:WebGLUniformLocation, v:Object):void {}
	/**
	*  @param location
	*  @param x
	*  @param y
	*  @param z
	*/
	public function uniform3f(location:WebGLUniformLocation, x:Number, y:Number, z:Number):void {}
	/**
	*  @param location
	*  @param v
	*/
	public function uniform3fv(location:WebGLUniformLocation, v:Object):void {}
	/**
	*  @param location
	*  @param x
	*  @param y
	*  @param z
	*/
	public function uniform3i(location:WebGLUniformLocation, x:uint, y:uint, z:uint):void {}
	/**
	*  @param location
	*  @param v
	*/
	public function uniform3iv(location:WebGLUniformLocation, v:Object):void {}
	/**
	*  @param location
	*  @param x
	*  @param y
	*  @param z
	*  @param w
	*/
	public function uniform4f(location:WebGLUniformLocation, x:Number, y:Number, z:Number, w:Number):void {}
	/**
	*  @param location
	*  @param v
	*/
	public function uniform4fv(location:WebGLUniformLocation, v:Object):void {}
	/**
	*  @param location
	*  @param x
	*  @param y
	*  @param z
	*  @param w
	*/
	public function uniform4i(location:WebGLUniformLocation, x:uint, y:uint, z:uint, w:uint):void {}
	/**
	*  @param location
	*  @param v
	*/
	public function uniform4iv(location:WebGLUniformLocation, v:Object):void {}
	/**
	*  @param location
	*  @param transpose
	*  @param array
	*/
	public function uniformMatrix2fv(location:WebGLUniformLocation, transpose:Boolean, array:Object):void {}
	/**
	*  @param location
	*  @param transpose
	*  @param array
	*/
	public function uniformMatrix3fv(location:WebGLUniformLocation, transpose:Boolean, array:Object):void {}
	/**
	*  @param location
	*  @param transpose
	*  @param array
	*/
	public function uniformMatrix4fv(location:WebGLUniformLocation, transpose:Boolean, array:Object):void {}
	/**
	*  @param program
	*/
	public function useProgram(program:WebGLProgram):void {}
	/**
	*  @param program
	*/
	public function validateProgram(program:WebGLProgram):void {}
	/**
	*  @param indx
	*  @param x
	*/
	public function vertexAttrib1f(indx:uint, x:Number):void {}
	/**
	*  @param indx
	*  @param values
	*/
	public function vertexAttrib1fv(indx:uint, values:Object):void {}
	/**
	*  @param indx
	*  @param x
	*  @param y
	*/
	public function vertexAttrib2f(indx:uint, x:Number, y:Number):void {}
	/**
	*  @param indx
	*  @param values
	*/
	public function vertexAttrib2fv(indx:uint, values:Object):void {}
	/**
	*  @param indx
	*  @param x
	*  @param y
	*  @param z
	*/
	public function vertexAttrib3f(indx:uint, x:Number, y:Number, z:Number):void {}
	/**
	*  @param indx
	*  @param values
	*/
	public function vertexAttrib3fv(indx:uint, values:Object):void {}
	/**
	*  @param indx
	*  @param x
	*  @param y
	*  @param z
	*  @param w
	*/
	public function vertexAttrib4f(indx:uint, x:Number, y:Number, z:Number, w:Number):void {}
	/**
	*  @param indx
	*  @param values
	*/
	public function vertexAttrib4fv(indx:uint, values:Object):void {}
	/**
	*  @param indx
	*  @param size
	*  @param type
	*  @param normalized
	*  @param stride
	*  @param offset
	*/
	public function vertexAttribPointer(indx:uint, size:uint, type:uint, normalized:Boolean, stride:uint, offset:Number):void {}
	/**
	*  @param x
	*  @param y
	*  @param width
	*  @param height
	*/
	public function viewport(x:uint, y:uint, width:uint, height:uint):void {}
}

}