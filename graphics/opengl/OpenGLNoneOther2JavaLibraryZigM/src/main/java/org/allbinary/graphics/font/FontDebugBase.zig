// Generated Code Do Not Modify
// package org.allbinary.graphics.font

const std = @import("std");
const allocator = std.heap.page_allocator;
const String = @import("java/lang/String.zig").String;
const Object = @import("java/lang/Object.zig").Object;
const Inheritance = @import("zig/Inheritance.zig");
// const Font = @import("javax/microedition/lcdui/Font.zig").Font;
const StringMaker = @import("org/allbinary/logic/string/StringMaker.zig").StringMaker;

//OpenGLNoneOther2JavaLibrary
pub const FontDebugBase = struct {
    const Self = @This();
    pub const java_name = "org.allbinary.graphics.font.FontDebugBase";
    SET_FONT: ?*String = null,
    var instanceBase: ?*FontDebugBase = undefined;

    // Static fields with runtime initializers: call staticInit once at startup
    pub fn staticInit() void {
        instanceBase = FontDebugBase.create();
    }

    fn initFields(this: *Self) void {
        this.SET_FONT = String.literal("setFont");
    }

    pub fn create() *Self {
        const this = allocator.create(Self) catch unreachable;
        this.* = .{};
        this.initFields();
        return this;
    }
    

    pub fn getInstance() ?*FontDebugBase {
        return Inheritance.upcast(?*FontDebugBase, FontDebugBase.instanceBase);
    }
    

    pub fn debugMetrics(self: *Self, currentFont: ?*Font, convertedTextSize: f32, displayMetrics: ?Object, stringBuffer: ?*StringMaker) void {
        _ = currentFont;
        _ = convertedTextSize;
        _ = displayMetrics;
        _ = stringBuffer;
        _ = self;
    }
    

    pub fn debugDpi(self: *Self, densityDpi: i32, stringBuffer: ?*StringMaker) void {
        _ = densityDpi;
        _ = stringBuffer;
        _ = self;
    }
    

    pub fn debugDimension(self: *Self, currentFont: ?*Font, convertedTextSize: f32, longestDimensionTotalPixels: i32, stringBuffer: ?*StringMaker) void {
        _ = currentFont;
        _ = convertedTextSize;
        _ = longestDimensionTotalPixels;
        _ = stringBuffer;
        _ = self;
    }
};

