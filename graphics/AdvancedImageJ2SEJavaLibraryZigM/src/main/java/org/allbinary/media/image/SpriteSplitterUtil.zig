// 
// AllBinary Open License Version 1 
// Copyright (c) 2022 AllBinary 
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
// package org.allbinary.media.image

const std = @import("std");
const allocator = std.heap.page_allocator;
const String = @import("java/lang/String.zig").String;
const Object = @import("java/lang/Object.zig").Object;
const Inheritance = @import("zig/Inheritance.zig");
// const BufferedImage = @import("java/awt/image/BufferedImage.zig").BufferedImage;
const LogUtil = @import("org/allbinary/logic/communication/log/LogUtil.zig").LogUtil;
const StringMaker = @import("org/allbinary/logic/string/StringMaker.zig").StringMaker;
const CommonSeps = @import("org/allbinary/string/CommonSeps.zig").CommonSeps;
const CommonStrings = @import("org/allbinary/string/CommonStrings.zig").CommonStrings;
const ImageProcessedVisitor = @import("org/allbinary/media/image/ImageProcessedVisitor.zig").ImageProcessedVisitor;
const ImageProcessorInput = @import("org/allbinary/media/image/ImageProcessorInput.zig").ImageProcessorInput;
const ImageUnifierCell = @import("org/allbinary/media/image/ImageUnifierCell.zig").ImageUnifierCell;
const ImageUnifierProperties = @import("org/allbinary/media/image/ImageUnifierProperties.zig").ImageUnifierProperties;
const ImageUnifierUtil = @import("org/allbinary/media/image/ImageUnifierUtil.zig").ImageUnifierUtil;
const ImageUtil = @import("org/allbinary/media/image/ImageUtil.zig").ImageUtil;
const Integer = @import("java/lang/Integer.zig").Integer;

pub const SpriteSplitterUtil = struct {
    const Self = @This();
    pub const java_name = "org.allbinary.media.image.SpriteSplitterUtil";
    logUtil: ?*LogUtil = null,
    commonSeps: ?*CommonSeps = null,
    commonStrings: ?*CommonStrings = null,
    ANIMATIONS_LABELS: []?*String = &.{},
    DIRECTIONAL_ANIMATIONS: ?*String = null,
    HORIZONTAL_ANIMATIONS: ?*String = null,
    HORIZONTAL_SPRITE: ?*String = null,
    ROW_NAME: []?*String = &.{},
    _ROW: ?*String = null,
    var instance: ?*SpriteSplitterUtil = undefined;

    // Static fields with runtime initializers: call staticInit once at startup
    pub fn staticInit() void {
        instance = SpriteSplitterUtil.create();
    }

    fn initFields(this: *Self) void {
        this.logUtil = Inheritance.upcast(?*LogUtil, LogUtil.getInstance());
        this.commonSeps = Inheritance.upcast(?*CommonSeps, CommonSeps.getInstance());
        this.commonStrings = Inheritance.upcast(?*CommonStrings, CommonStrings.getInstance());
        this.ANIMATIONS_LABELS = @constCast(&[_]?*String{ String.literal("Row Total:"), String.literal("Column Total:"), String.literal("Column Total:"), String.literal("Row Total:"), String.literal("Column Total:"), String.literal("Row Total:") })[0..];
        this.DIRECTIONAL_ANIMATIONS = String.literal("Directional DLRU");
        this.HORIZONTAL_ANIMATIONS = String.literal("Horizontal Animations");
        this.HORIZONTAL_SPRITE = String.literal("Horizontal A=R=Y F=C=X");
        this.ROW_NAME = @constCast(&[_]?*String{ String.literal("idle"), String.literal("walk"), String.literal("attack"), String.literal("defeat") })[0..];
        this._ROW = String.literal("_row");
    }

    pub fn create() *Self {
        const this = allocator.create(Self) catch unreachable;
        this.* = .{};
        this.initFields();
        return this;
    }
    

    pub fn getInstance() ?*SpriteSplitterUtil {
        return Inheritance.upcast(?*SpriteSplitterUtil, SpriteSplitterUtil.instance);
    }
    

    // throws Exception
    pub fn process(self: *Self, imageProcessorInput: ?*ImageProcessorInput, totalFrames: i32, totalAnimations: i32, widthReduction: i32, heightReduction: i32, increaseWidth: i32, increaseHeight: i32, spriteType: ?*String, visitor: ?*ImageProcessedVisitor) void {
        var bufferedImage: ?*BufferedImage = null;
        var generatedBufferedImageArray: [][]?*BufferedImage = &.{};
        const bufferedImageArray: []?*BufferedImage = imageProcessorInput.?.getBufferedImageArray();
        {
            var index: i32 = 0;
            while (index < @as(i32, @intCast(bufferedImageArray.len))) : (index += 1) {
            bufferedImage = Inheritance.upcast(@TypeOf(bufferedImage), bufferedImageArray[@intCast(index)]);
            _ = Inheritance.call(self.logUtil.?, "putF", .{ spriteType, self, self.commonStrings.?.RUN });
            if (Object.same(spriteType, self.HORIZONTAL_SPRITE)) {
                const cellHeight: i32 = (divide_N68828: { const left_N68828 = bufferedImage.?.getHeight(); const right_N68828 = totalAnimations; break :divide_N68828 if (comptime @typeInfo(@TypeOf(left_N68828)) == .int or @TypeOf(left_N68828) == comptime_int) @divTrunc(left_N68828, right_N68828) else left_N68828 / right_N68828; });
                const cellWidth: i32 = (divide_N68887: { const left_N68887 = bufferedImage.?.getWidth(); const right_N68887 = totalFrames; break :divide_N68887 if (comptime @typeInfo(@TypeOf(left_N68887)) == .int or @TypeOf(left_N68887) == comptime_int) @divTrunc(left_N68887, right_N68887) else left_N68887 / right_N68887; });
                const columns: i32 = totalFrames;
                const rows: i32 = totalAnimations;
                generatedBufferedImageArray = Inheritance.upcast(@TypeOf(generatedBufferedImageArray), array_N69019: { const array_N69019_array = allocator.alloc([]?*BufferedImage, @intCast(rows)) catch unreachable; for (array_N69019_array) |*array_N69019_row| { array_N69019_row.* = allocator.alloc(?*BufferedImage, @intCast(columns)) catch unreachable; @memset(array_N69019_row.*, null); } break :array_N69019 array_N69019_array; });
                _ = Inheritance.call(self.logUtil.?, "putF", .{ String.plus(String.plus(String.plus(String.literal("Processing Individual Cells columns: "), columns), String.literal(" rows: ")), rows), self, self.commonStrings.?.RUN });
                _ = Inheritance.call(self.logUtil.?, "putF", .{ String.plus(String.plus(String.plus(String.literal("Processing Individual Cells cellHeight: "), cellHeight), String.literal(" cellWidth: ")), cellWidth), self, self.commonStrings.?.RUN });
                const imageUtil: ?*ImageUtil = Inheritance.upcast(?*ImageUtil, ImageUtil.getInstance());
                var nameEnding: ?*String = null;
                var x: i32 = 0;
                var y: i32 = 0;
                {
                    var index2: i32 = 0;
                    while (index2 < rows) : (index2 += 1) {
                    y = cellHeight * index2;
                    {
                        var index3: i32 = 0;
                        while (index3 < columns) : (index3 += 1) {
                        x = cellWidth * index3;
                        generatedBufferedImageArray[@intCast(index2)][@intCast(index3)] = Inheritance.upcast(@TypeOf(generatedBufferedImageArray[@intCast(index2)][@intCast(index3)]), Inheritance.call(bufferedImage.?, "getSubimage", .{ x + widthReduction, y + heightReduction, cellWidth - (widthReduction * 2), cellHeight - (heightReduction * 2) }));
                        if (increaseWidth != 0 or increaseHeight != 0) {
                            generatedBufferedImageArray[@intCast(index2)][@intCast(index3)] = Inheritance.upcast(@TypeOf(generatedBufferedImageArray[@intCast(index2)][@intCast(index3)]), Inheritance.call(imageUtil.?, "createBufferedImageAllowTranslate", .{ generatedBufferedImageArray[@intCast(index2)][@intCast(index3)], cellWidth + increaseWidth, cellHeight + increaseHeight, false, true }));
                        }
                        nameEnding = Inheritance.upcast(@TypeOf(nameEnding), Object.toString(Object.of(Inheritance.call(Inheritance.call(Inheritance.call(StringMaker.create(), "appendint", .{ index2 }).?, "append", .{ self.commonSeps.?.UNDERSCORE }).?, "appendint", .{ index3 }))));
                        _ = Inheritance.call(visitor.?, "visit", .{ generatedBufferedImageArray[@intCast(index2)][@intCast(index3)], nameEnding, index });
                        }
                    }
                    }
                }
                _ = Inheritance.call(self.logUtil.?, "putF", .{ String.literal("Processing Rows from Cells"), self, self.commonStrings.?.RUN });
                const imageUnifierProperties: ?*ImageUnifierProperties = ImageUnifierProperties.create();
                _ = Inheritance.call(imageUnifierProperties.?, "setRows", .{ Inheritance.callStatic(Integer, "valueOf", .{ 1 }) });
                _ = Inheritance.call(imageUnifierProperties.?, "setColumns", .{ Inheritance.callStatic(Integer, "valueOf", .{ columns }) });
                const imageUnifierCell: ?*ImageUnifierCell = Inheritance.callStatic(ImageUnifierCell, "create2", .{ Inheritance.callStatic(Integer, "valueOf", .{ cellWidth - (2 * widthReduction) }), Inheritance.callStatic(Integer, "valueOf", .{ cellHeight - (2 * heightReduction) }) });
                _ = Inheritance.call(imageUnifierProperties.?, "setImageUnifierCell", .{ imageUnifierCell });
                {
                    var index2: i32 = 0;
                    while (index2 < rows) : (index2 += 1) {
                    y = cellHeight * index2;
                    const tempBufferedImageArray: []?*BufferedImage = array_N70574: { const array_N70574_array = allocator.alloc(?*BufferedImage, @intCast(columns)) catch unreachable; @memset(array_N70574_array, null); break :array_N70574 array_N70574_array; };
                    {
                        var index3: i32 = 0;
                        while (index3 < columns) : (index3 += 1) {
                        tempBufferedImageArray[@intCast(index3)] = Inheritance.upcast(@TypeOf(tempBufferedImageArray[@intCast(index3)]), generatedBufferedImageArray[@intCast(index2)][@intCast(index3)]);
                        nameEnding = Inheritance.upcast(@TypeOf(nameEnding), Object.toString(Object.of(Inheritance.call(Inheritance.call(Inheritance.call(Inheritance.call(StringMaker.create(), "appendint", .{ index2 }).?, "append", .{ self.commonSeps.?.UNDERSCORE }).?, "appendint", .{ 1 }).?, "append", .{ self._ROW }))));
                        }
                    }
                    const generatedBufferedImage: ?*BufferedImage = Inheritance.upcast(?*BufferedImage, Inheritance.call(ImageUnifierUtil.getInstance().?, "getImage", .{ tempBufferedImageArray, imageUnifierProperties }));
                    _ = Inheritance.call(visitor.?, "visit", .{ generatedBufferedImage, nameEnding, index });
                    }
                }
            } else if (Object.same(spriteType, self.HORIZONTAL_ANIMATIONS)) {
            } else if (Object.same(spriteType, self.DIRECTIONAL_ANIMATIONS)) {
                const totalFrames2: i32 = 4;
                const cellHeight: i32 = (divide_N66640: { const left_N66640 = bufferedImage.?.getHeight(); const right_N66640 = totalFrames2; break :divide_N66640 if (comptime @typeInfo(@TypeOf(left_N66640)) == .int or @TypeOf(left_N66640) == comptime_int) @divTrunc(left_N66640, right_N66640) else left_N66640 / right_N66640; });
                const cellWidth: i32 = (divide_N66699: { const left_N66699 = bufferedImage.?.getWidth(); const right_N66699 = totalAnimations; break :divide_N66699 if (comptime @typeInfo(@TypeOf(left_N66699)) == .int or @TypeOf(left_N66699) == comptime_int) @divTrunc(left_N66699, right_N66699) else left_N66699 / right_N66699; });
                const columns: i32 = totalAnimations;
                const rows: i32 = totalFrames2;
                generatedBufferedImageArray = Inheritance.upcast(@TypeOf(generatedBufferedImageArray), array_N66831: { const array_N66831_array = allocator.alloc([]?*BufferedImage, @intCast(rows)) catch unreachable; for (array_N66831_array) |*array_N66831_row| { array_N66831_row.* = allocator.alloc(?*BufferedImage, @intCast(columns)) catch unreachable; @memset(array_N66831_row.*, null); } break :array_N66831 array_N66831_array; });
                _ = Inheritance.call(self.logUtil.?, "putF", .{ String.literal("Processing Individual Cells for each Direction"), self, self.commonStrings.?.RUN });
                var nameEnding: ?*String = null;
                var x: i32 = 0;
                var y: i32 = 0;
                {
                    var index2: i32 = 0;
                    while (index2 < rows) : (index2 += 1) {
                    y = cellHeight * index2;
                    {
                        var index3: i32 = 0;
                        while (index3 < columns) : (index3 += 1) {
                        x = cellWidth * index3;
                        generatedBufferedImageArray[@intCast(index2)][@intCast(index3)] = Inheritance.upcast(@TypeOf(generatedBufferedImageArray[@intCast(index2)][@intCast(index3)]), Inheritance.call(bufferedImage.?, "getSubimage", .{ x + widthReduction, y + heightReduction, cellWidth - (widthReduction * 2), cellHeight - (heightReduction * 2) }));
                        if (increaseWidth != 0 or increaseHeight != 0) {
                            generatedBufferedImageArray[@intCast(index2)][@intCast(index3)] = Inheritance.upcast(@TypeOf(generatedBufferedImageArray[@intCast(index2)][@intCast(index3)]), Inheritance.call(ImageUtil.getInstance().?, "createBufferedImageAllowTranslate", .{ generatedBufferedImageArray[@intCast(index2)][@intCast(index3)], cellWidth + increaseWidth, cellHeight + increaseHeight, false, true }));
                        }
                        nameEnding = Inheritance.upcast(@TypeOf(nameEnding), Object.toString(Object.of(Inheritance.call(Inheritance.call(Inheritance.call(StringMaker.create(), "append", .{ self.commonStrings.?.DIRECTION_NAME[@intCast(index2)] }).?, "append", .{ self.commonSeps.?.UNDERSCORE }).?, "appendint", .{ index3 }))));
                        _ = Inheritance.call(visitor.?, "visit", .{ generatedBufferedImageArray[@intCast(index2)][@intCast(index3)], nameEnding, index });
                        }
                    }
                    }
                }
                const imageUnifierProperties: ?*ImageUnifierProperties = ImageUnifierProperties.create();
                _ = Inheritance.call(imageUnifierProperties.?, "setRows", .{ Inheritance.callStatic(Integer, "valueOf", .{ 1 }) });
                _ = Inheritance.call(imageUnifierProperties.?, "setColumns", .{ Inheritance.callStatic(Integer, "valueOf", .{ columns }) });
                const imageUnifierCell: ?*ImageUnifierCell = Inheritance.callStatic(ImageUnifierCell, "create2", .{ Inheritance.callStatic(Integer, "valueOf", .{ cellWidth - (2 * widthReduction) }) + increaseWidth, Inheritance.callStatic(Integer, "valueOf", .{ cellHeight - (2 * heightReduction) + increaseHeight }) });
                _ = Inheritance.call(imageUnifierProperties.?, "setImageUnifierCell", .{ imageUnifierCell });
                _ = Inheritance.call(self.logUtil.?, "putF", .{ String.literal("Processing Rows from Cells for each Direction"), self, self.commonStrings.?.RUN });
                {
                    var index2: i32 = 0;
                    while (index2 < rows) : (index2 += 1) {
                    y = cellHeight * index2;
                    const tempBufferedImageArray: []?*BufferedImage = array_N68271: { const array_N68271_array = allocator.alloc(?*BufferedImage, @intCast(columns)) catch unreachable; @memset(array_N68271_array, null); break :array_N68271 array_N68271_array; };
                    {
                        var index3: i32 = 0;
                        while (index3 < columns) : (index3 += 1) {
                        tempBufferedImageArray[@intCast(index3)] = Inheritance.upcast(@TypeOf(tempBufferedImageArray[@intCast(index3)]), generatedBufferedImageArray[@intCast(index2)][@intCast(index3)]);
                        nameEnding = Inheritance.upcast(@TypeOf(nameEnding), Object.toString(Object.of(Inheritance.call(Inheritance.call(Inheritance.call(Inheritance.call(StringMaker.create(), "append", .{ self.commonStrings.?.DIRECTION_NAME[@intCast(index2)] }).?, "append", .{ self.commonSeps.?.UNDERSCORE }).?, "appendint", .{ 1 }).?, "append", .{ self._ROW }))));
                        }
                    }
                    const generatedBufferedImage: ?*BufferedImage = Inheritance.upcast(?*BufferedImage, Inheritance.call(ImageUnifierUtil.getInstance().?, "getImage", .{ tempBufferedImageArray, imageUnifierProperties }));
                    _ = Inheritance.call(visitor.?, "visit", .{ generatedBufferedImage, nameEnding, index });
                    }
                }
            }
            }
        }
    }
};

