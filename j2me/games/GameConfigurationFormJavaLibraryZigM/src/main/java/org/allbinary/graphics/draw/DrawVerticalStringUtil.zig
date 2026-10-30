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
// package org.allbinary.graphics.draw

const std = @import("std");
const allocator = std.heap.page_allocator;
const String = @import("java/lang/String.zig").String;
const Object = @import("java/lang/Object.zig").Object;
const Inheritance = @import("zig/Inheritance.zig");
// const Font = @import("javax/microedition/lcdui/Font.zig").Font;
// const Graphics = @import("javax/microedition/lcdui/Graphics.zig").Graphics;
const AndroidUtil = @import("org/allbinary/AndroidUtil.zig").AndroidUtil;
const J2MEUtil = @import("org/allbinary/J2MEUtil.zig").J2MEUtil;
const Anchor = @import("org/allbinary/graphics/Anchor.zig").Anchor;
const OpenGLFeatureUtil = @import("org/allbinary/graphics/opengles/OpenGLFeatureUtil.zig").OpenGLFeatureUtil;
const NullUtil = @import("org/allbinary/logic/NullUtil.zig").NullUtil;
const PreLogUtil = @import("org/allbinary/logic/communication/log/PreLogUtil.zig").PreLogUtil;
const StringMaker = @import("org/allbinary/logic/string/StringMaker.zig").StringMaker;
const StringUtil = @import("org/allbinary/logic/string/StringUtil.zig").StringUtil;

pub const DrawVerticalStringUtil = struct {
    const Self = @This();
    pub const java_name = "org.allbinary.graphics.draw.DrawVerticalStringUtil";
    EMPTY_STRING: ?*String = null,
    anchor: i32 = 0,
    charHeight: i32 = 0,
    offsetY: i32 = 0,
    offsetXArray: []i32 = &.{},
    var instance: ?*DrawVerticalStringUtil = undefined;

    // Static fields with runtime initializers: call staticInit once at startup
    pub fn staticInit() void {
        instance = DrawVerticalStringUtil.create();
    }

    fn initFields(this: *Self) void {
        this.EMPTY_STRING = Inheritance.upcast(?*String, StringUtil.getInstance().?.EMPTY_STRING);
        this.anchor = Anchor.TOP_LEFT;
        this.charHeight = 0;
        this.offsetY = 0;
        this.offsetXArray = NullUtil.getInstance().?.NULL_INT_ARRAY;
    }

    pub fn create() *Self {
        const this = allocator.create(Self) catch unreachable;
        this.* = .{};
        this.initFields();
        return this;
    }
    

    pub fn getInstance() ?*DrawVerticalStringUtil {
        return Inheritance.upcast(?*DrawVerticalStringUtil, DrawVerticalStringUtil.instance);
    }
    

    pub fn updateMeasurement(self: *Self, graphics: ?*Graphics, string: ?*String) void {
        const openGLFeatureUtil: ?*OpenGLFeatureUtil = Inheritance.upcast(?*OpenGLFeatureUtil, OpenGLFeatureUtil.getInstance());
        const font: ?*Font = Inheritance.upcast(?*Font, graphics.?.getFont());
        self.charHeight = font.?.getHeight();
        self.offsetY = 0;
        if (J2MEUtil.isHTML()) {
            self.charHeight += 1;
        } else if (openGLFeatureUtil.?.isAnyThreed()) {
            self.charHeight += 2;
            if (AndroidUtil.isAndroid()) {
            } else {
                self.offsetY = 2 + (@divTrunc(self.charHeight * 2, 3));
            }
        }
        const size: i32 = string.?.length();
        var aChar: u16 = 0;
        const offsetXArray: []i32 = array_N66609: { const array_N66609_array = allocator.alloc(i32, @intCast(size)) catch unreachable; @memset(array_N66609_array, 0); break :array_N66609 array_N66609_array; };
        {
            var index: i32 = size - 1;
            while (index >= 0) : (index -= 1) {
            aChar = Inheritance.call(string.?, "charAt", .{ index });
            if (openGLFeatureUtil.?.isAnyThreed()) {
                offsetXArray[@intCast(index)] = (divide_N66752: { const left_N66752 = Inheritance.call(font.?, "charWidth", .{ aChar }); const right_N66752 = 2; break :divide_N66752 if (comptime @typeInfo(@TypeOf(left_N66752)) == .int or @TypeOf(left_N66752) == comptime_int) @divTrunc(left_N66752, right_N66752) else left_N66752 / right_N66752; });
            }
            }
        }
        self.offsetXArray = offsetXArray;
    }
    

    pub fn paintVerticle(self: *Self, graphics: ?*Graphics, string: ?*String, x: i32, y: i32, anchor: i32) void {
        const size: i32 = string.?.length();
        var aChar: u16 = 0;
        {
            var index: i32 = size - 1;
            while (index >= 0) : (index -= 1) {
            aChar = Inheritance.call(string.?, "charAt", .{ index });
            _ = Inheritance.call(graphics.?, "drawChar", .{ aChar, x + self.offsetXArray[@intCast(index)], y + (self.charHeight * index) + self.offsetY, anchor });
            }
        }
    }
    

    pub fn drawCenterString(self: *Self, graphics: ?*Graphics, string: ?*String, offset: i32, length: i32, x: i32, y: i32) void {
        const width: i32 = (Inheritance.call(graphics.?.getFont().?, "substringWidth", .{ string, offset, length }) >> @intCast(1));
        { // try
            _ = Inheritance.call(graphics.?, "drawSubstring", .{ string, offset, length, x - width, y, self.anchor });
        }
        // catch (Exception e):
//             _ = Inheritance.callStatic(PreLogUtil, "put", .{ Object.toString(Object.of(Inheritance.call(Inheritance.call(Inheritance.call(Inheritance.call(Inheritance.call(Inheritance.call(StringMaker.create(), "append", .{ String.literal("Exception: stringLength: ") }).?, "appendint", .{ string.?.length() }).?, "append", .{ String.literal(" offset: ") }).?, "appendint", .{ offset }).?, "append", .{ String.literal(" currentLength: ") }).?, "appendint", .{ length }))), self, String.literal("drawCenterString") });
    }
    

    pub fn drawCenterStrings(self: *Self, graphics: ?*Graphics, stringArray: []?*String, maxWidth: i32, x: i32, y: i32) void {
        var extraLines: i32 = 0;
        {
            var index: i32 = 0;
            while (index < @as(i32, @intCast(stringArray.len))) : (index += 1) {
            const string: ?*String = Inheritance.upcast(?*String, stringArray[@intCast(index)]);
            if (!Object.same(string, self.EMPTY_STRING)) {
                const width: i32 = Inheritance.call(graphics.?.getFont().?, "stringWidth", .{ string });
                var minTotalLines: i32 = 1;
                if (width > maxWidth) {
                    minTotalLines = (@divTrunc(width, maxWidth)) + 1;
                }
                const linePortion: i32 = @divTrunc(string.?.length(), minTotalLines);
                var offset: i32 = 0;
                var currentLength: i32 = linePortion;
                const size: i32 = string.?.length();
                while (offset < size) {
                    if (offset + currentLength > size) {
                        currentLength = size - offset;
                    }
                    if (offset + currentLength != size) {
                        while (currentLength > 0 and Inheritance.call(stringArray[@intCast(index)].?, "charAt", .{ offset + currentLength }) != ' ') {
                            currentLength -= 1;
                        }
                        if (currentLength <= 4) {
                            currentLength = linePortion;
                        }
                    }
                    _ = Inheritance.call(self, "drawCenterString", .{ graphics, string, offset, currentLength, x, y + ((index + value_N68790: { const value_N68790_value = extraLines; extraLines += 1; break :value_N68790 value_N68790_value; }) * self.charHeight) });
                    offset = offset + currentLength;
                    currentLength = linePortion;
                }
                extraLines -= 1;
            }
            }
        }
    }
};

