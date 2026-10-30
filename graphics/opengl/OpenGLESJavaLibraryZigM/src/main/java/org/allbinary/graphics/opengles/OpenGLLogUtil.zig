// Generated Code Do Not Modify
// package org.allbinary.graphics.opengles

const std = @import("std");
const allocator = std.heap.page_allocator;
const String = @import("java/lang/String.zig").String;
const Object = @import("java/lang/Object.zig").Object;
const Inheritance = @import("zig/Inheritance.zig");
// const GL10 = @import("javax/microedition/khronos/opengles/GL10.zig").GL10;
// const Image = @import("javax/microedition/lcdui/Image.zig").Image;
const OpenGLStrings = @import("org/allbinary/image/opengles/OpenGLStrings.zig").OpenGLStrings;
const StringMaker = @import("org/allbinary/logic/string/StringMaker.zig").StringMaker;
const ForcedLogUtil = @import("org/allbinary/logic/communication/log/ForcedLogUtil.zig").ForcedLogUtil;
const PreLogUtil = @import("org/allbinary/logic/communication/log/PreLogUtil.zig").PreLogUtil;

pub const OpenGLLogUtil = struct {
    const Self = @This();
    pub const java_name = "org.allbinary.graphics.opengles.OpenGLLogUtil";
    MAX_TEXTURE: ?*String = null,
    LOG_ERROR: ?*String = null,
    IMAGE: ?*String = null,
    var instance: ?*OpenGLLogUtil = undefined;

    // Static fields with runtime initializers: call staticInit once at startup
    pub fn staticInit() void {
        instance = OpenGLLogUtil.create();
    }

    fn initFields(this: *Self) void {
        this.MAX_TEXTURE = String.literal(" Max Texture Size: ");
        this.LOG_ERROR = String.literal("logError");
        this.IMAGE = String.literal(" Image: ");
    }

    pub fn create() *Self {
        const this = allocator.create(Self) catch unreachable;
        this.* = .{};
        this.initFields();
        return this;
    }
    

    pub fn getInstance() ?*OpenGLLogUtil {
        return Inheritance.upcast(?*OpenGLLogUtil, OpenGLLogUtil.instance);
    }
    

    pub fn logError(self: *Self, gl: ?*GL10) void {
        const @"error": i32 = Inheritance.receiver(gl.?, "glGetError").glGetError();
        if (@"error" != GL10.GL_NO_ERROR) {
            const stringBuffer: ?*StringMaker = StringMaker.create();
            _ = Inheritance.call(stringBuffer.?, "append", .{ OpenGLStrings.getInstance().?.GL_ERROR_LABEL });
            _ = Inheritance.call(stringBuffer.?, "appendint", .{ @"error" });
            if (@"error" == 1281) {
                _ = Inheritance.call(stringBuffer.?, "append", .{ self.MAX_TEXTURE });
                const maxTextureSize: []i32 = array_N66202: { const array_N66202_array = allocator.alloc(i32, @intCast(1)) catch unreachable; @memset(array_N66202_array, 0); break :array_N66202 array_N66202_array; };
                _ = Inheritance.call(gl.?, "glGetIntegerv", .{ GL10.GL_MAX_TEXTURE_SIZE, maxTextureSize, 0 });
                _ = Inheritance.call(stringBuffer.?, "appendint", .{ maxTextureSize[@intCast(0)] });
            }
            if (@"error" == 1280) {
                _ = Inheritance.callStatic(PreLogUtil, "put", .{ Object.toString(Object.of(stringBuffer)), self, OpenGLStrings.getInstance().?.SET });
            } else {
                _ = Inheritance.callStatic(ForcedLogUtil, "log", .{ Object.toString(Object.of(stringBuffer)), self });
            }
        }
    }
    

    pub fn logError2(self: *Self, gl: ?*GL10, image: ?*Image) void {
        const @"error": i32 = Inheritance.receiver(gl.?, "glGetError").glGetError();
        if (@"error" != GL10.GL_NO_ERROR) {
            const stringBuffer: ?*StringMaker = StringMaker.create();
            _ = Inheritance.call(stringBuffer.?, "append", .{ OpenGLStrings.getInstance().?.GL_ERROR_LABEL });
            _ = Inheritance.call(stringBuffer.?, "appendint", .{ @"error" });
            if (@"error" == 1281) {
                _ = Inheritance.call(stringBuffer.?, "append", .{ self.MAX_TEXTURE });
                const maxTextureSize: []i32 = array_N66889: { const array_N66889_array = allocator.alloc(i32, @intCast(1)) catch unreachable; @memset(array_N66889_array, 0); break :array_N66889 array_N66889_array; };
                _ = Inheritance.call(gl.?, "glGetIntegerv", .{ GL10.GL_MAX_TEXTURE_SIZE, maxTextureSize, 0 });
                _ = Inheritance.call(stringBuffer.?, "appendint", .{ maxTextureSize[@intCast(0)] });
            }
            _ = Inheritance.call(stringBuffer.?, "append", .{ self.IMAGE });
            _ = Inheritance.call(stringBuffer.?, "append", .{ Object.toString(Object.of(image)) });
            _ = Inheritance.callStatic(PreLogUtil, "put", .{ Object.toString(Object.of(stringBuffer)), self, self.LOG_ERROR });
        }
    }
};

