//
// AllBinary Open License Version 1
// Copyright (c) 2011 AllBinary
// 
// By agreeing to this license you and any business entity you represent are
// legally bound to the AllBinary Open License Version 1 legal agreement.
// 
// You may obtain the AllBinary Open License Version 1 legal agreement from
// AllBinary or the root directory of AllBinary's AllBinary Platform repository.
// 
// Created By: Travis Berthelot
//  
// Generated Code Do Not Modify
// package org.allbinary.graphics.opengles

const std = @import("std");
const allocator = std.heap.page_allocator;
const String = @import("java/lang/String.zig").String;
const Object = @import("java/lang/Object.zig").Object;
const Inheritance = @import("zig/Inheritance.zig");
// const GL10 = @import("javax/microedition/khronos/opengles/GL10.zig").GL10;
// const GL11 = @import("javax/microedition/khronos/opengles/GL11.zig").GL11;
const AndroidUtil = @import("org/allbinary/AndroidUtil.zig").AndroidUtil;
const OpenGLESGL10ImageFactory = @import("org/allbinary/image/opengles/OpenGLESGL10ImageFactory.zig").OpenGLESGL10ImageFactory;
const OpenGLESGL11VBOImageFactory = @import("org/allbinary/image/opengles/OpenGLESGL11VBOImageFactory.zig").OpenGLESGL11VBOImageFactory;
const OpenGLImageSpecificFactory = @import("org/allbinary/image/opengles/OpenGLImageSpecificFactory.zig").OpenGLImageSpecificFactory;
const BasicArrayList = @import("org/allbinary/util/BasicArrayList.zig").BasicArrayList;
const BasicArrayListD = @import("org/allbinary/util/BasicArrayListD.zig").BasicArrayListD;
const CommonSeps = @import("org/allbinary/string/CommonSeps.zig").CommonSeps;
const CommonStrings = @import("org/allbinary/string/CommonStrings.zig").CommonStrings;
const StringMaker = @import("org/allbinary/logic/string/StringMaker.zig").StringMaker;
const StringUtil = @import("org/allbinary/logic/string/StringUtil.zig").StringUtil;
const Tokenizer = @import("org/allbinary/logic/string/tokens/Tokenizer.zig").Tokenizer;
const PreLogUtil = @import("org/allbinary/logic/communication/log/PreLogUtil.zig").PreLogUtil;
const Features = @import("org/allbinary/game/configuration/feature/Features.zig").Features;
const LogUtil = @import("org/allbinary/logic/communication/log/LogUtil.zig").LogUtil;
const OpenGLFeature = @import("org/allbinary/graphics/opengles/OpenGLFeature.zig").OpenGLFeature;
const OpenGLFeatureFactory = @import("org/allbinary/graphics/opengles/OpenGLFeatureFactory.zig").OpenGLFeatureFactory;
const Integer = @import("java/lang/Integer.zig").Integer;

pub const OpenGLCapabilities = struct {
    const Self = @This();
    pub const java_name = "org.allbinary.graphics.opengles.OpenGLCapabilities";
    logUtil: ?*LogUtil = null,
    CUSTOM_GL_SURFACE_VIEW: bool = false,
    stringUtil: ?*StringUtil = null,
    initialized: bool = false,
    glVersionString: ?*String = null,
    glShaderVersionString: ?*String = null,
    shaderVersion: i32 = 0,
    glRenderer: ?*String = null,
    glVendor: ?*String = null,
    glExtensions: ?*String = null,
    possiblyAccelerated: bool = false,
    acceleratedString: ?*String = null,
    maxTextureSize: i32 = 0,
    VERSION_1_0: ?*String = null,
    VERSION_1_1: ?*String = null,
    VERSION_2_0: ?*String = null,
    VERSION_3_0: ?*String = null,
    VERSION_3_1: ?*String = null,
    VERSION_3_2: ?*String = null,
    VERSION_HIGHER_THAN_EXISTS: ?*String = null,
    VERSION_UNK: ?*String = null,
    GL_EXT_GPU_SHADER_100: ?*String = null,
    GL_EXT_GPU_SHADER4: ?*String = null,
    glVersion: ?*String = null,
    glInstanceVersion: ?*String = null,
    glExtensionDrawTexture: bool = false,
    glThreedDrawTexture: bool = false,
    glExtensionGPUShader4: bool = false,
    glExtensionGPUShader100: bool = false,
    vertexBufferObjectSupport: bool = false,
    var instance: ?*OpenGLCapabilities = undefined;

    // Static fields with runtime initializers: call staticInit once at startup
    pub fn staticInit() void {
        instance = OpenGLCapabilities.create();
    }

    fn initFields(this: *Self) void {
        this.logUtil = Inheritance.upcast(?*LogUtil, LogUtil.getInstance());
        this.CUSTOM_GL_SURFACE_VIEW = true;
        this.stringUtil = Inheritance.upcast(?*StringUtil, StringUtil.getInstance());
        this.initialized = false;
        this.glVersionString = Inheritance.upcast(?*String, this.stringUtil.?.EMPTY_STRING);
        this.glShaderVersionString = Inheritance.upcast(?*String, this.stringUtil.?.EMPTY_STRING);
        this.shaderVersion = 0;
        this.glRenderer = Inheritance.upcast(?*String, this.stringUtil.?.EMPTY_STRING);
        this.glVendor = Inheritance.upcast(?*String, this.stringUtil.?.EMPTY_STRING);
        this.glExtensions = Inheritance.upcast(?*String, this.stringUtil.?.EMPTY_STRING);
        this.possiblyAccelerated = false;
        this.acceleratedString = Inheritance.upcast(?*String, this.stringUtil.?.EMPTY_STRING);
        this.maxTextureSize = 64;
        this.VERSION_1_0 = String.literal("1.0");
        this.VERSION_1_1 = String.literal("1.1");
        this.VERSION_2_0 = String.literal("2.0");
        this.VERSION_3_0 = String.literal("3.0");
        this.VERSION_3_1 = String.literal("3.1");
        this.VERSION_3_2 = String.literal("3.2");
        this.VERSION_HIGHER_THAN_EXISTS = String.literal("999.999");
        this.VERSION_UNK = String.literal("Unk");
        this.GL_EXT_GPU_SHADER_100 = String.literal("GL_ARB_shading_language_100");
        this.GL_EXT_GPU_SHADER4 = String.literal("GL_EXT_gpu_shader4");
        this.glVersion = this.glVersionString;
        this.glInstanceVersion = this.VERSION_UNK;
        this.glExtensionDrawTexture = false;
        this.glThreedDrawTexture = false;
        this.glExtensionGPUShader4 = false;
        this.glExtensionGPUShader100 = false;
        this.vertexBufferObjectSupport = false;
    }
    

    pub fn getInstance() ?*OpenGLCapabilities {
        return Inheritance.upcast(?*OpenGLCapabilities, OpenGLCapabilities.instance);
    }
    

    pub fn create() *Self {
        const this = allocator.create(Self) catch unreachable;
        this.* = .{};
        this.initFields();
        return this;
    }
    

    pub fn isInitialized(self: *Self) bool {
        return self.initialized;
    }
    

    pub fn requireInitialization(self: *Self) void {
        _ = self;
    }
    

    pub fn initCapabilities(self: *Self, gl: ?*GL10) void {
        const METHOD_NAME: ?*String = String.literal("initGLCapabilities");
        { // try
            const features: ?*Features = Inheritance.upcast(?*Features, Features.getInstance());
            const openGLFeatureFactory: ?*OpenGLFeatureFactory = Inheritance.upcast(?*OpenGLFeatureFactory, OpenGLFeatureFactory.getInstance());
            const openGLImageSpecificFactory: ?*OpenGLImageSpecificFactory = Inheritance.upcast(?*OpenGLImageSpecificFactory, OpenGLImageSpecificFactory.getInstance());
            const stringBuffer: ?*StringMaker = StringMaker.create();
            self.glVersionString = Inheritance.upcast(@TypeOf(self.glVersionString), Inheritance.call(gl.?, "glGetString", .{ GL10.GL_VERSION }));
            const GL_SHADING_LANGUAGE_VERSION: i32 = 0x8b8c;
            self.glShaderVersionString = Inheritance.upcast(@TypeOf(self.glShaderVersionString), Inheritance.call(gl.?, "glGetString", .{ GL_SHADING_LANGUAGE_VERSION }));
            if (self.glShaderVersionString == null) {
                self.glShaderVersionString = Inheritance.upcast(@TypeOf(self.glShaderVersionString), self.stringUtil.?.EMPTY_STRING);
            }
            { // try
                if (self.glShaderVersionString != null and Inheritance.call(self.glShaderVersionString.?, "indexOf", .{ '.' }) >= 0) {
                    const startIndex: i32 = Inheritance.call(self.glShaderVersionString.?, "lastIndexOf", .{ ' ' });
                    if (startIndex >= 0) {
                        self.glShaderVersionString = Inheritance.upcast(@TypeOf(self.glShaderVersionString), Inheritance.call(self.glShaderVersionString.?, "substring", .{ startIndex + 1 }));
                    }
                    self.shaderVersion = (std.fmt.parseInt(i32, Inheritance.call(self.glShaderVersionString.?, "replace", .{ CommonSeps.getInstance().?.PERIOD, StringUtil.getInstance().?.EMPTY_STRING }).?.bytes, 10) catch @panic("java.lang.NumberFormatException"));
                }
            }
            // catch (Exception e):
//                 const commonStrings: ?*CommonStrings = Inheritance.upcast(?*CommonStrings, CommonStrings.getInstance()); _ = commonStrings;
//                 _ = Inheritance.call(self.logUtil.?, "put", .{ commonStrings.?.EXCEPTION, self, METHOD_NAME, e });
            self.glRenderer = Inheritance.upcast(@TypeOf(self.glRenderer), Inheritance.call(gl.?, "glGetString", .{ GL10.GL_RENDERER }));
            self.glVendor = Inheritance.upcast(@TypeOf(self.glVendor), Inheritance.call(gl.?, "glGetString", .{ GL10.GL_VENDOR }));
            self.glExtensions = Inheritance.upcast(@TypeOf(self.glExtensions), Inheritance.call(gl.?, "glGetString", .{ GL10.GL_EXTENSIONS }));
            if (Inheritance.call(self.glExtensions.?, "indexOf", .{ self.GL_EXT_GPU_SHADER_100 }) >= 0) {
                self.glExtensionGPUShader100 = true;
            } else {
                self.glExtensionGPUShader100 = false;
            }
            if (Inheritance.call(self.glExtensions.?, "indexOf", .{ self.GL_EXT_GPU_SHADER4 }) >= 0) {
                self.glExtensionGPUShader4 = true;
            } else {
                self.glExtensionGPUShader4 = false;
            }
            if (self.glRenderer == null) {
                self.glRenderer = Inheritance.upcast(@TypeOf(self.glRenderer), self.stringUtil.?.EMPTY_STRING);
            }
            if (Inheritance.call(self.glRenderer.?.toLowerCase().?, "indexOf", .{ String.literal("pixelflinger") }) >= 0) {
                self.acceleratedString = Inheritance.upcast(@TypeOf(self.acceleratedString), String.plus(String.literal("Probably Not for "), self.glRenderer));
                self.possiblyAccelerated = false;
            } else {
                self.acceleratedString = Inheritance.upcast(@TypeOf(self.acceleratedString), String.plus(String.literal("Probably for "), self.glRenderer));
                self.possiblyAccelerated = true;
            }
            self.glExtensionDrawTexture = false;
            if (self.glVersionString == null) {
                self.glVersionString = Inheritance.upcast(@TypeOf(self.glVersionString), self.stringUtil.?.EMPTY_STRING);
                self.glVersion = self.VERSION_UNK;
            } else if (Inheritance.call(self.glVersionString.?, "indexOf", .{ String.literal(" 1.0") }) >= 0) {
                self.glVersion = self.VERSION_1_0;
            } else if (Inheritance.call(self.glVersionString.?, "indexOf", .{ String.literal(" 1.1") }) >= 0) {
                self.glVersion = self.VERSION_1_1;
            } else {
                self.glVersion = self.VERSION_UNK;
            }
            if (Object.instanceOf(Object.of(gl), GL11)) {
                self.glInstanceVersion = self.VERSION_1_1;
            } else if (Object.instanceOf(Object.of(gl), GL10)) {
                self.glInstanceVersion = self.VERSION_1_0;
            }
            if (self.glVendor == null) {
                self.glVendor = Inheritance.upcast(@TypeOf(self.glVendor), self.stringUtil.?.EMPTY_STRING);
            }
            if (self.glExtensions == null) {
                self.glExtensions = Inheritance.upcast(@TypeOf(self.glExtensions), self.stringUtil.?.EMPTY_STRING);
            }
            if (self.possiblyAccelerated) {
                _ = Inheritance.callStatic(PreLogUtil, "put", .{ Object.toString(Object.of(Inheritance.call(Inheritance.call(Inheritance.call(Inheritance.call(StringMaker.create(), "append", .{ String.literal("VBO:?") }).?, "appendboolean", .{ (Object.same(self.glInstanceVersion, self.VERSION_1_1)) }).?, "append", .{ String.literal("||") }).?, "appendboolean", .{ Inheritance.call(self, "isExtension", .{ openGLFeatureFactory.?.OPENGL_VERTEX_BUFFER_OBJECT }) }))), self, METHOD_NAME });
                if ((Object.same(self.glInstanceVersion, self.VERSION_1_1) or Inheritance.call(self, "isExtension", .{ openGLFeatureFactory.?.OPENGL_VERTEX_BUFFER_OBJECT }))) {
                    if (AndroidUtil.isAndroid()) {
                        _ = Inheritance.callStatic(PreLogUtil, "put", .{ String.literal("VBO implementation was detected, but disabled by default for Android"), self, METHOD_NAME });
                    } else {
                        _ = Inheritance.callStatic(PreLogUtil, "put", .{ String.literal("VBO implementation was detected, but disabled for now"), self, METHOD_NAME });
                    }
                }
            }
            const stringUtil: ?*StringUtil = Inheritance.upcast(?*StringUtil, StringUtil.getInstance());
            if (Inheritance.call(features.?, "isDefault", .{ openGLFeatureFactory.?.OPENGL_AUTO_SELECT })) {
                if (self.vertexBufferObjectSupport) {
                    _ = Inheritance.call(openGLImageSpecificFactory.?, "setImageFactory", .{ OpenGLESGL11VBOImageFactory.create() });
                } else {
                    _ = Inheritance.call(stringBuffer.?, "append", .{ String.literal("OpenGL is on but ") });
                    _ = Inheritance.call(stringBuffer.?, "append", .{ Inheritance.call(stringUtil.?, "toString", .{ openGLFeatureFactory.?.OPENGL_DRAW_TEXTURE }) });
                    _ = Inheritance.call(stringBuffer.?, "append", .{ String.literal(" was not available") });
                    _ = Inheritance.callStatic(PreLogUtil, "put", .{ Object.toString(Object.of(stringBuffer)), self, METHOD_NAME });
                    _ = Inheritance.call(openGLImageSpecificFactory.?, "setImageFactory", .{ OpenGLESGL10ImageFactory.create() });
                }
            } else {
                _ = Inheritance.call(stringBuffer.?, "append", .{ Inheritance.call(stringUtil.?, "toString", .{ openGLFeatureFactory.?.OPENGL_AUTO_SELECT }) });
                _ = Inheritance.call(stringBuffer.?, "append", .{ String.literal(" is not on") });
                _ = Inheritance.callStatic(PreLogUtil, "put", .{ Object.toString(Object.of(stringBuffer)), self, METHOD_NAME });
                _ = Inheritance.call(openGLImageSpecificFactory.?, "setImageFactory", .{ OpenGLESGL10ImageFactory.create() });
            }
            const maxTextureSizeArray: []i32 = array_N70471: { const array_N70471_array = allocator.alloc(i32, @intCast(1)) catch unreachable; @memset(array_N70471_array, 0); break :array_N70471 array_N70471_array; };
            _ = Inheritance.call(gl.?, "glGetIntegerv", .{ GL10.GL_MAX_TEXTURE_SIZE, maxTextureSizeArray, 0 });
            self.maxTextureSize = maxTextureSizeArray[@intCast(0)];
            self.initialized = true;
        }
        // catch (Exception e):
//             const commonStrings: ?*CommonStrings = Inheritance.upcast(?*CommonStrings, CommonStrings.getInstance()); _ = commonStrings;
//             _ = Inheritance.call(self.logUtil.?, "put", .{ commonStrings.?.EXCEPTION, self, METHOD_NAME, e });
    }
    

    pub fn isExtension(self: *Self, gameFeature: ?*OpenGLFeature) bool {
        const index: i32 = Inheritance.call(self.glExtensions.?, "indexOf", .{ Inheritance.receiver(gameFeature.?, "getName").getName() });
        if (index >= 0) {
            return true;
        } else {
            return false;
        }
    }
    

    pub fn isGlExtensionDrawTexture(self: *Self) bool {
        _ = self.requireInitialization();
        return self.glExtensionDrawTexture;
    }
    

    pub fn isGlExtensionGPUShader100(self: *Self) bool {
        return self.glExtensionGPUShader100;
    }
    

    pub fn isGlExtensionGPUShader4(self: *Self) bool {
        _ = self.requireInitialization();
        return self.glExtensionGPUShader4;
    }
    

    pub fn getGlVersion(self: *Self) ?*String {
        _ = self.requireInitialization();
        return self.glVersion;
    }
    

    pub fn getGlVersionString(self: *Self) ?*String {
        _ = self.requireInitialization();
        return self.glVersionString;
    }
    

    pub fn getGlShaderVersion(self: *Self) ?*String {
        _ = self.requireInitialization();
        return self.glShaderVersionString;
    }
    

    pub fn isGlThreedDrawTexture(self: *Self) bool {
        _ = self.requireInitialization();
        return self.glThreedDrawTexture;
    }
    

    pub fn getGlRenderer(self: *Self) ?*String {
        _ = self.requireInitialization();
        return self.glRenderer;
    }
    

    pub fn isVertexBufferObjectSupport(self: *Self) bool {
        _ = self.requireInitialization();
        return self.vertexBufferObjectSupport;
    }
    

    pub fn isTextureSizeValid(self: *Self, widthAndHeight: i32) bool {
        _ = self.requireInitialization();
        if (self.maxTextureSize >= widthAndHeight) {
            return true;
        }
        return false;
    }
    

    pub fn toString(self: *Self) ?*String {
        const commonSeps: ?*CommonSeps = Inheritance.upcast(?*CommonSeps, CommonSeps.getInstance());
        const stringBuffer: ?*StringMaker = StringMaker.create();
        _ = Inheritance.call(stringBuffer.?, "append", .{ String.literal("GL_VERSION: ") });
        _ = Inheritance.call(stringBuffer.?, "append", .{ self.glVersionString });
        _ = Inheritance.call(stringBuffer.?, "append", .{ String.literal(" GL_SHADING_LANGUAGE_VERSION: ") });
        _ = Inheritance.call(stringBuffer.?, "append", .{ self.glShaderVersionString });
        _ = Inheritance.call(stringBuffer.?, "append", .{ String.literal(" GL_RENDERER: ") });
        _ = Inheritance.call(stringBuffer.?, "append", .{ self.glRenderer });
        _ = Inheritance.call(stringBuffer.?, "append", .{ String.literal(" GL_VENDOR: ") });
        _ = Inheritance.call(stringBuffer.?, "append", .{ self.glVendor });
        _ = Inheritance.call(stringBuffer.?, "append", .{ commonSeps.?.NEW_LINE });
        _ = Inheritance.call(stringBuffer.?, "append", .{ String.literal(" Is Accelerated: ") });
        _ = Inheritance.call(stringBuffer.?, "append", .{ self.acceleratedString });
        _ = Inheritance.call(stringBuffer.?, "append", .{ commonSeps.?.NEW_LINE });
        _ = Inheritance.call(stringBuffer.?, "append", .{ String.literal(" VBO Support: ") });
        _ = Inheritance.call(stringBuffer.?, "appendboolean", .{ self.isVertexBufferObjectSupport() });
        _ = Inheritance.call(stringBuffer.?, "append", .{ commonSeps.?.NEW_LINE });
        _ = Inheritance.call(stringBuffer.?, "append", .{ String.literal(" Max Texture Size: ") });
        _ = Inheritance.call(stringBuffer.?, "appendint", .{ self.maxTextureSize });
        _ = Inheritance.call(stringBuffer.?, "append", .{ commonSeps.?.NEW_LINE });
        _ = Inheritance.call(stringBuffer.?, "append", .{ String.literal(" GL_EXTENSIONS: ") });
        { // try
            const tokenizer: ?*Tokenizer = Inheritance.callStatic(Tokenizer, "create1", .{ commonSeps.?.SPACE });
            const list: ?*BasicArrayList = Inheritance.upcast(?*BasicArrayList, Inheritance.call(tokenizer.?, "getTokensFromString", .{ self.glExtensions, BasicArrayListD.create() }));
            const size: i32 = list.?.size();
            {
                var index: i32 = 0;
                while (index < size) : (index += 1) {
                _ = Inheritance.call(stringBuffer.?, "append", .{ commonSeps.?.NEW_LINE });
                _ = Inheritance.call(stringBuffer.?, "append", .{ Inheritance.call(self.stringUtil.?, "toString", .{ list.?.objectArray[@intCast(index)] }) });
                }
            }
        }
        // catch (Exception e):
//             const commonStrings: ?*CommonStrings = Inheritance.upcast(?*CommonStrings, CommonStrings.getInstance()); _ = commonStrings;
//             _ = Inheritance.callStatic(PreLogUtil, "putOE", .{ commonStrings.?.EXCEPTION, self, commonStrings.?.TOSTRING, e });
        return Inheritance.upcast(?*String, Object.toString(Object.of(stringBuffer)));
    }
};

